package com.mengdao.dex2oatboost;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;

import com.mengdao.dex2oatboost.core.SessionRegistry;

/**
 * 「安装完成」信号之一：动态注册 {@code ACTION_PACKAGE_ADDED / ACTION_PACKAGE_REPLACED}。
 *
 * <p>用系统框架级广播（而非 MIUI 混淆类名）——安装后系统必发此广播，两条支路通吃。
 * 收到信号后经 {@link DexoptTrigger#triggerOnce} 幂等去重再触发。
 *
 * <p>归属判定与触发入口做成静态方法（{@link #handleCompletion} / {@link #isInstalledByUs}）；
 * {@link #appContext} 在注册时留存。
 */
public final class InstallCompleteReceiver extends BroadcastReceiver {

    private static volatile boolean registered = false;
    private static volatile Context appContext = null;

    /** 进程内应用上下文（注册时留存），供兜底路径查询包信息。 */
    static Context app() {
        return appContext;
    }

    public static synchronized void register(Context app) {
        if (registered || app == null) {
            return;
        }
        try {
            appContext = app.getApplicationContext();
            IntentFilter f = new IntentFilter();
            f.addAction(Intent.ACTION_PACKAGE_ADDED);
            f.addAction(Intent.ACTION_PACKAGE_REPLACED);
            f.addDataScheme("package");
            BroadcastReceiver r = new InstallCompleteReceiver();
            // 监听的是受保护的系统广播；API 33+ 显式声明 NOT_EXPORTED，其它 App 无法伪造触发
            if (Build.VERSION.SDK_INT >= 33) {
                app.registerReceiver(r, f, Context.RECEIVER_NOT_EXPORTED);
            } else {
                app.registerReceiver(r, f);
            }
            registered = true;
        } catch (Throwable t) {
            Mlog.w("注册安装完成广播接收器失败: " + t);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            boolean replaced = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
            if (Intent.ACTION_PACKAGE_ADDED.equals(action)) {
                // 覆盖安装时 PACKAGE_ADDED(REPLACING=true) 与 PACKAGE_REPLACED 都会来，只留后者
                if (replaced) {
                    return;
                }
            } else if (!Intent.ACTION_PACKAGE_REPLACED.equals(action)) {
                return;
            }
            Uri data = intent.getData();
            if (data == null) {
                return;
            }
            handleCompletion(data.getSchemeSpecificPart());
        } catch (Throwable t) {
            Mlog.w("安装完成广播处理异常: " + t);
        }
    }

    /**
     * 完成入口：判定归属后幂等触发重编译。
     *
     * @return true=本次为「我们的安装」并已（首次）受理
     */
    static boolean handleCompletion(String pkg) {
        if (pkg == null || pkg.isEmpty()) {
            return false;
        }
        boolean ours = SessionRegistry.INSTANCE.shouldHandleAndConsume(pkg) || isInstalledByUs(pkg);
        if (!ours) {
            Mlog.d("忽略非本安装器的安装: " + pkg);
            return false;
        }
        Mlog.i("安装完成: " + pkg + " → 触发重编译");
        return DexoptTrigger.triggerOnce(pkg);
    }

    /** 该包的安装源是否就是本安装器（覆盖 appPackageName 未记录时的兜底判定）。 */
    static boolean isInstalledByUs(String pkg) {
        Context ctx = appContext;
        if (ctx == null || pkg == null || Build.VERSION.SDK_INT < 30) {
            return false;
        }
        try {
            PackageManager pm = ctx.getPackageManager();
            InstallSourceInfo info = pm.getInstallSourceInfo(pkg);
            return ctx.getPackageName().equals(info.getInstallingPackageName());
        } catch (Throwable t) {
            return false;
        }
    }
}
