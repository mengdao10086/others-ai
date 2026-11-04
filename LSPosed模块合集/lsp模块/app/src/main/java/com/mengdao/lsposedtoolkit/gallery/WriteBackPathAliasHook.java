package com.mengdao.lsposedtoolkit.gallery;

import android.os.Process;
import android.os.SystemClock;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 修复：相册写回路径大小写不一致导致逐条 miss。
 *
 * 相册查询用 {@code realPath COLLATE NOCASE IN (...)}（大小写不敏感），
 * 但 {@code saveFaceResult} 用大小写敏感的 HashMap 按传入路径取条目；
 * 当 aicr 传入路径与库里的 realPath 只差大小写时，查询命中、取表失败，
 * 全部路径被判 invalid。本 hook 在 getMediaFeatureListByPath 返回后为
 * 这些路径补一份大小写无关的别名键（原 map 拷贝 + 别名），不改任何业务逻辑。
 *
 * 开关 {@link #ENABLE_PATH_ALIAS} 关掉即完全恢复原行为。
 * 异常一律吞掉，保持原返回值。
 */
final class WriteBackPathAliasHook {

    private static final String TAG = "GalleryAnalyze";

    private static final String ALGO_UTILS_CLASS =
            "com.miui.gallery.assistant.utils.AlgoUtils";

    /** 关闭后不做任何修改、不输出 alias 日志。 */
    private static final boolean ENABLE_PATH_ALIAS = true;

    private static final long LOG_INTERVAL_MS = 60000L;

    private static final ThreadLocal<List<String>> PENDING = new ThreadLocal<>();

    private static volatile boolean sInstalled;
    private static volatile boolean sHooked;
    private static long sLastLogElapsed;

    private WriteBackPathAliasHook() {
    }

    static void install(ClassLoader classLoader) {
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        try {
            Class<?> cls = XposedHelpers.findClassIfExists(ALGO_UTILS_CLASS, classLoader);
            if (cls == null) {
                logHookFailure();
            } else {
                XposedHelpers.findAndHookMethod(cls, "getMediaFeatureListByPath",
                        List.class, List.class, new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) {
                                try {
                                    List<String> copy = new ArrayList<>();
                                    if (param.args.length > 0 && param.args[0] instanceof List) {
                                        for (Object item : (List<?>) param.args[0]) {
                                            if (item instanceof String) {
                                                copy.add((String) item);
                                            }
                                        }
                                    }
                                    PENDING.set(copy);
                                } catch (Throwable ignored) {
                                }
                            }

                            @Override
                            protected void afterHookedMethod(MethodHookParam param) {
                                List<String> paths = PENDING.get();
                                PENDING.remove();
                                if (!ENABLE_PATH_ALIAS || paths == null || paths.isEmpty()) {
                                    return;
                                }
                                try {
                                    applyAlias(param, paths);
                                } catch (Throwable ignored) {
                                    // 保持原返回值
                                }
                            }
                        });
                sHooked = true;
            }
        } catch (Throwable t) {
            logHookFailure();
        }
    }

    private static void applyAlias(XC_MethodHook.MethodHookParam param, List<String> paths) {
        if (param.hasThrowable()) {
            return;
        }
        Object result = param.getResult();
        if (!(result instanceof Map)) {
            return;
        }
        Map<?, ?> original = (Map<?, ?>) result;
        if (original.isEmpty()) {
            return;
        }

        // 一次性建「小写键 → 值」，把原先每条路径扫全键的 O(n²) 降到 O(n)。
        HashMap<String, Object> lowerKeys = new HashMap<>(original.size() * 2);
        for (Map.Entry<?, ?> entry : original.entrySet()) {
            if (entry.getKey() instanceof String) {
                lowerKeys.putIfAbsent(
                        ((String) entry.getKey()).toLowerCase(Locale.ROOT), entry.getValue());
            }
        }

        HashMap<Object, Object> aliases = null;
        int hit = 0;
        int aliased = 0;
        StringBuilder samples = null;

        for (String path : paths) {
            if (path == null) {
                continue;
            }
            if (original.containsKey(path)
                    || (aliases != null && aliases.containsKey(path))) {
                hit++;
                continue;
            }
            String lowerPath = path.toLowerCase(Locale.ROOT);
            if (!lowerKeys.containsKey(lowerPath)) {
                continue;
            }
            Object matched = lowerKeys.get(lowerPath);
            if (aliases == null) {
                aliases = new HashMap<>();
            }
            aliases.put(path, matched);
            aliased++;
            if (aliased <= 2) {
                if (samples == null) {
                    samples = new StringBuilder();
                } else {
                    samples.append(" | ");
                }
                samples.append(truncate(path, 120));
            }
        }

        // 没有别名命中时不拷贝原 map。
        if (aliases != null) {
            HashMap<Object, Object> copy = new HashMap<>(original);
            copy.putAll(aliases);
            param.setResult(copy);
        }
        maybeLog(paths.size(), hit, aliased, samples == null ? "-" : samples.toString());
    }

    private static void maybeLog(int req, int hit, int aliased, String sample) {
        long now = SystemClock.elapsedRealtime();
        if (now - sLastLogElapsed < LOG_INTERVAL_MS) {
            return;
        }
        sLastLogElapsed = now;
        XposedBridge.log(TAG + ": writeback alias pid=" + Process.myPid()
                + " req=" + req
                + " hit=" + hit
                + " aliased=" + aliased
                + " sample=[" + sample + "]");
    }

    private static String truncate(String value, int max) {
        if (value == null) {
            return "null";
        }
        String oneLine = value.replace('\n', ' ').replace('\r', ' ');
        return oneLine.length() > max ? oneLine.substring(0, max) : oneLine;
    }

    private static void logHookFailure() {
        XposedBridge.log(TAG + ": writeback alias hook failed: getMediaFeatureListByPath");
    }
}
