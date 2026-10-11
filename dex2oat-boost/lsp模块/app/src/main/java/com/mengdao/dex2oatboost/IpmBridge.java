package com.mengdao.dex2oatboost;

import android.os.IBinder;

import com.mengdao.dex2oatboost.core.DexoptArgBuilder;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * 零 root 主路径：以「当前进程（安装器）身份」经 binder 调
 * {@code IPackageManager.performDexOptMode}。
 *
 * <p>准入由系统侧决定（{@code isSystemOrRootOrShell() || isCallerInstallerForPackage(...)}）；
 * 本模块跑在被装包的安装器进程里，故「安装者例外」成立时无需 root。
 * 签名在运行期按方法表解析（见 {@link DexoptArgBuilder}），无法识别时抛异常交由上层走 root 降级。
 */
public final class IpmBridge {

    private IpmBridge() {
    }

    /**
     * @return true=系统报告 dexopt 成功
     * @throws SecurityException    系统拒绝（安装者例外不成立）
     * @throws NoSuchMethodException 未识别的签名（交由 root 降级）
     */
    public static boolean performDexOptMode(String pkg, boolean checkProfiles, String filter,
                                            boolean force, boolean bootComplete) throws Exception {
        Object ipm = getPackageManager();
        Method chosen = null;
        Object[] chosenArgs = null;
        for (Method m : ipm.getClass().getMethods()) {
            if (!"performDexOptMode".equals(m.getName())) {
                continue;
            }
            Object[] args = DexoptArgBuilder.build(
                    m.getParameterTypes(), pkg, filter, checkProfiles, force, bootComplete);
            if (args != null) {
                chosen = m;
                chosenArgs = args;
                break;
            }
        }
        if (chosen == null) {
            throw new NoSuchMethodException("performDexOptMode 签名未识别");
        }
        Mlog.d("调用 performDexOptMode" + DexoptArgBuilder.signatureOf(chosen.getParameterTypes()));
        chosen.setAccessible(true);
        try {
            Object r = chosen.invoke(ipm, chosenArgs);
            return Boolean.TRUE.equals(r);
        } catch (InvocationTargetException ite) {
            Throwable cause = ite.getCause();
            if (cause instanceof SecurityException) {
                throw (SecurityException) cause;
            }
            if (cause instanceof RuntimeException) {
                throw (RuntimeException) cause;
            }
            throw ite;
        }
    }

    /** 经 ServiceManager 取 "package" 服务并 asInterface 为 IPackageManager。 */
    private static Object getPackageManager() throws Exception {
        Class<?> sm = Class.forName("android.os.ServiceManager");
        IBinder binder = (IBinder) sm.getMethod("getService", String.class)
                .invoke(null, "package");
        if (binder == null) {
            throw new IllegalStateException("ServiceManager(\"package\") 为空");
        }
        Class<?> stub = Class.forName("android.content.pm.IPackageManager$Stub");
        return stub.getMethod("asInterface", IBinder.class).invoke(null, binder);
    }
}
