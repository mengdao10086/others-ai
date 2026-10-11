package com.mengdao.dex2oatboost;

import android.app.Application;

import com.mengdao.dex2oatboost.core.HookedCall;
import com.mengdao.dex2oatboost.core.PkgNames;
import com.mengdao.dex2oatboost.core.SessionRegistry;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/**
 * LSPosed 入口。只在 {@code com.miui.packageinstaller} 进程内生效。
 *
 * <p>① 安装期降档：hook 系统框架类
 * {@code android.content.pm.PackageInstaller#createSession(SessionParams)}——这是 MIUI 主链路与
 * AOSP 兼容支路的唯一公共锚点（免混淆）。before 里把会话的 dexopt 档位反射置为 {@code verify}，
 * after 里按返回的 sessionId 记录「本次被装包名」。
 *
 * <p>②③ 装后重编译：在进程启动时（{@code Instrumentation#callApplicationOnCreate}）动态注册
 * 安装完成广播，收到信号后异步走 {@link DexoptTrigger}。
 *
 * <p>所有 hook 回调内部再套一层 try-catch，任何异常只记日志、no-op，绝不影响安装。
 */
public class MainHook implements IXposedHookLoadPackage {

    /** ① 安装期档位（固定 verify；改档位只需改这一处常量）。 */
    public static final String INSTALL_FILTER = "verify";

    private static final SessionRegistry REGISTRY = SessionRegistry.INSTANCE;

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        // 无论是否命中作用域，先无条件留一行启动日志（经 XposedBridge.log + logcat 双通道），
        // 用于确认「模块是否被 LSPosed 注入到本进程」——这是排查一切的前提：先能看见自己。
        Mlog.always("handleLoadPackage pkg=" + lpparam.packageName
                + " process=" + lpparam.processName
                + " sdk=" + android.os.Build.VERSION.SDK_INT);

        if (!PkgNames.matchesTarget(lpparam.packageName)) {
            return; // 非目标进程：不注册任何 hook
        }
        Mlog.setEnabled(true);
        Mlog.i("模块已注入安装器进程，开始注册 hook");
        HiddenApi.tryExempt();
        hookCreateSession(lpparam.classLoader);
        hookApplicationCreate(lpparam.classLoader);
    }

    /** ① 锚点：系统框架类 PackageInstaller#createSession(SessionParams)。 */
    private void hookCreateSession(ClassLoader cl) {
        try {
            XposedHelpers.findAndHookMethod(
                    "android.content.pm.PackageInstaller", cl, "createSession",
                    "android.content.pm.PackageInstaller$SessionParams",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            try {
                                Object sp = param.args[0];
                                String pkg = readAppPackageName(sp);
                                boolean applied = HookedCall.trySetDexoptCompilerFilter(sp, INSTALL_FILTER);
                                param.setObjectExtra("pkg", pkg);
                                if (applied) {
                                    Mlog.i("① 安装期降档 " + INSTALL_FILTER + " 已设置 (pkg=" + pkg + ")");
                                } else {
                                    Mlog.w("① setDexoptCompilerFilter 不可用/失败，本次不降档 (pkg=" + pkg + ")");
                                }
                            } catch (Throwable t) {
                                Mlog.w("createSession.before 异常（已忽略）: " + t);
                            }
                        }

                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                if (param.hasThrowable()) {
                                    return;
                                }
                                Object r = param.getResult();
                                if (!(r instanceof Integer)) {
                                    return;
                                }
                                String pkg = (String) param.getObjectExtra("pkg");
                                REGISTRY.record((Integer) r, pkg);
                            } catch (Throwable t) {
                                Mlog.w("createSession.after 异常（已忽略）: " + t);
                            }
                        }
                    });
            Mlog.i("已挂钩 PackageInstaller#createSession");
        } catch (Throwable t) {
            Mlog.w("挂钩 createSession 失败（安装不受影响）: " + t);
        }
    }

    /** ② 注册「安装完成」接收器（框架级锚点 Instrumentation#callApplicationOnCreate）。 */
    private void hookApplicationCreate(ClassLoader cl) {
        try {
            XposedHelpers.findAndHookMethod(
                    "android.app.Instrumentation", cl, "callApplicationOnCreate",
                    "android.app.Application",
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Application app = (Application) param.args[0];
                                InstallCompleteReceiver.register(app);
                                Mlog.i("已注册安装完成广播接收器");
                            } catch (Throwable t) {
                                Mlog.w("注册安装完成接收器失败（已忽略）: " + t);
                            }
                        }
                    });
        } catch (Throwable t) {
            Mlog.w("挂钩 callApplicationOnCreate 失败（已忽略）: " + t);
        }
    }

    /** 读 SessionParams.appPackageName（可能为 null）；读不到返回 null。 */
    private static String readAppPackageName(Object sp) {
        try {
            Object v = XposedHelpers.getObjectField(sp, "appPackageName");
            return v instanceof String ? (String) v : null;
        } catch (Throwable t) {
            return null;
        }
    }
}
