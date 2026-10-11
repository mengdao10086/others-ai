package com.mengdao.dex2oatboost;

import com.mengdao.dex2oatboost.core.PkgNames;

import java.io.File;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

/**
 * 降级通道：以 root 执行 {@code cmd package compile -m <filter> -f <pkg>}。
 *
 * <p>仅在零 root 主路径失败时启用。包名先经 {@link PkgNames#isValidPackageName} 白名单校验，
 * 杜绝命令注入。读输出放在后台线程，保证超时可控。任何异常返回 false，不抛。
 */
public final class RootShell {

    private static final long TIMEOUT_SECONDS = 90;

    /** 各 ROM 下 su 的常见绝对路径，用于诊断「su 在哪里、是否可执行」。 */
    private static final String[] SU_CANDIDATES = {
            "/system/bin/su", "/system/xbin/su", "/sbin/su", "/su/bin/su",
            "/vendor/bin/su", "/product/bin/su", "/debug_ramdisk/su",
            "/data/adb/ksu/bin/su", "/data/adb/magisk/su"
    };

    private RootShell() {
    }

    public static boolean compile(String pkg, String filter) {
        if (!PkgNames.isValidPackageName(pkg)) {
            Mlog.w("root 降级：非法包名，跳过 " + pkg);
            return false;
        }
        String cmd = "cmd package compile -m " + filter + " -f " + pkg;
        Process p = null;
        try {
            p = new ProcessBuilder("su", "-c", cmd).redirectErrorStream(true).start();
            drainAsync(p.getInputStream());
            if (!p.waitFor(TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                return false;
            }
            return p.exitValue() == 0;
        } catch (Throwable t) {
            Mlog.w("root 降级执行异常: " + t.getClass().getName() + ": " + t.getMessage());
            logSuDiagnostics();
            return false;
        } finally {
            if (p != null) {
                try {
                    p.destroy();
                } catch (Throwable ignored) {
                    // ignore
                }
            }
        }
    }

    /** ③ 只诊断：把 PATH、su 的解析结果（PATH 内命中 / 候选绝对路径是否存在可执行）打进日志。 */
    private static void logSuDiagnostics() {
        try {
            String path = System.getenv("PATH");
            String resolved = resolveSuFromPath(path);
            StringBuilder sb = new StringBuilder();
            sb.append("③ su 诊断: PATH=").append(path == null ? "(null)" : path);
            sb.append(" whichSu=").append(resolved == null ? "(PATH 内未找到)" : resolved);
            sb.append(" 候选:");
            for (String cand : SU_CANDIDATES) {
                File f = new File(cand);
                sb.append(' ').append(cand)
                        .append("[存在=").append(f.exists())
                        .append(",可执行=").append(f.canExecute())
                        .append(']');
            }
            Mlog.w(sb.toString());
        } catch (Throwable t) {
            Mlog.w("③ su 诊断采集异常（已忽略）: " + t);
        }
    }

    /** 「which su」等价物：按 PATH 各目录查找名为 su 且可执行的文件。 */
    private static String resolveSuFromPath(String path) {
        if (path == null) {
            return null;
        }
        for (String dir : path.split(":")) {
            if (dir.isEmpty()) {
                continue;
            }
            File f = new File(dir, "su");
            if (f.exists() && f.canExecute()) {
                return f.getAbsolutePath();
            }
        }
        return null;
    }

    private static void drainAsync(final InputStream in) {
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                byte[] buf = new byte[512];
                try {
                    // 读完即止（合并了 stderr）；不解析内容
                    while (in.read(buf) != -1) {
                        // discard
                    }
                } catch (Throwable ignored) {
                    // ignore
                }
            }
        }, "dexopt-trigger-drain");
        t.setDaemon(true);
        t.start();
    }
}
