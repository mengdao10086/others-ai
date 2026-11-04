package com.mengdao.lsposedtoolkit.gallery;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import android.os.SystemClock;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 仅诊断：相册侧人脸写回路径匹配探针。
 *
 * hook {@code AlgoUtils.getMediaFeatureListByPath} 与其内部的 cursor 处理器，
 * 记录请求条数、查询行数、返回 map 大小、输入路径与 map 键的前 2 条逐字样本，
 * 以及命中样本的 realPath/localFile/thumbnailFile/microthumbfile；map 为空时用
 * 请求的前 2 条路径补一次只读查询，区分「路径不在相册库」/「realPath 选错列」/
 * 「被可见性条件过滤」。
 *
 * 每进程每 60 秒最多一行；所有 hook 独立 try/catch，失败只记
 * {@code writeback probe hook failed: <name>}，不影响相册行为。
 */
final class WriteBackProbe {

    private static final String TAG = "GalleryAnalyze";

    private static final String ALGO_UTILS_CLASS =
            "com.miui.gallery.assistant.utils.AlgoUtils";
    private static final String ALGO_UTILS_HANDLER_CLASS =
            "com.miui.gallery.assistant.utils.AlgoUtils$1";
    private static final String GALLERY_APP_CLASS =
            "com.miui.gallery.GalleryApp";
    private static final String CLOUD_CONTRACT_CLASS =
            "com.miui.gallery.provider.GalleryContract$Cloud";

    /** 与 AlgoUtils 中的 realPath CASE 表达式保持一致。 */
    private static final String REAL_PATH_EXPR =
            "CASE WHEN (localFile NOT NULL and localFile != '') THEN localFile "
                    + "WHEN (thumbnailFile NOT NULL and thumbnailFile != '') THEN thumbnailFile "
                    + "ELSE microthumbfile END";

    /** 与 AlgoUtils 中的可见性条件保持一致。 */
    private static final String VISIBLE_SELECTION =
            "localGroupId != -1000 AND (localFlag IS NULL OR localFlag NOT IN (11, 0, -1, 2, 15)"
                    + " OR (localFlag=0 AND (serverStatus='custom' OR serverStatus = 'recovery')))"
                    + " AND (serverStatus IS NULL OR serverStatus = 'custom')";

    private static final String[] PROJECTION = {
            REAL_PATH_EXPR + " AS realPath",
            "localFile",
            "thumbnailFile",
            "microthumbfile"
    };

    private static final long LOG_INTERVAL_MS = 60000L;

    private static final Set<String> FAIL_LOGGED_NAMES =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());

    private static final ThreadLocal<ProbeCall> PENDING = new ThreadLocal<>();

    private static volatile boolean sInstalled;
    private static volatile boolean sMediaFeatureHooked;
    private static volatile boolean sHandlerHooked;
    private static long sLastLogElapsed;
    private static ClassLoader sClassLoader;
    private static Context sContext;
    private static Uri sCloudUri;
    private static boolean sEnvResolved;

    private WriteBackProbe() {
    }

    static void install(ClassLoader classLoader) {
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        sClassLoader = classLoader;

        try {
            if (!hookMediaFeatureQuery(classLoader)) {
                logHookFailure("getMediaFeatureListByPath");
            }
        } catch (Throwable t) {
            logHookFailure("getMediaFeatureListByPath");
        }
        try {
            if (!hookCursorHandler(classLoader)) {
                logHookFailure("AlgoUtils$1.handle");
            }
        } catch (Throwable t) {
            logHookFailure("AlgoUtils$1.handle");
        }

        XposedBridge.log(TAG + ": writeback probe install pid=" + Process.myPid()
                + " hooked=" + ((sMediaFeatureHooked ? 1 : 0) + (sHandlerHooked ? 1 : 0)) + "/2");
    }

    private static boolean hookMediaFeatureQuery(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(ALGO_UTILS_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "getMediaFeatureListByPath",
                List.class, List.class, new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        try {
                            ProbeCall call = new ProbeCall();
                            call.paths = param.args.length > 0 && param.args[0] instanceof List
                                    ? (List<?>) param.args[0] : null;
                            PENDING.set(call);
                        } catch (Throwable ignored) {
                        }
                    }

                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        ProbeCall call = PENDING.get();
                        PENDING.remove();
                        if (call == null) {
                            return;
                        }
                        try {
                            report(param, call);
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sMediaFeatureHooked = true;
        return true;
    }

    private static boolean hookCursorHandler(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(ALGO_UTILS_HANDLER_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "handle", Cursor.class, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                try {
                    ProbeCall call = PENDING.get();
                    if (call == null) {
                        return;
                    }
                    Object cursor = param.args.length > 0 ? param.args[0] : null;
                    call.rows = cursor instanceof Cursor ? ((Cursor) cursor).getCount() : -1;
                } catch (Throwable ignored) {
                }
            }
        });
        sHandlerHooked = true;
        return true;
    }

    private static void report(XC_MethodHook.MethodHookParam param, ProbeCall call) {
        if (!shouldLog()) {
            return;
        }
        int req = call.paths == null ? -1 : call.paths.size();
        int rows = call.rows;
        Object result = param.getResult();
        Map<?, ?> map = result instanceof Map ? (Map<?, ?>) result : null;
        StringBuilder sb = new StringBuilder(320);
        sb.append(TAG).append(": writeback probe pid=").append(Process.myPid())
                .append(" req=").append(req)
                .append(" rows=").append(rows < 0 ? "?" : String.valueOf(rows))
                .append(" map=").append(map == null ? "-" : String.valueOf(map.size()));
        if (param.hasThrowable()) {
            sb.append(" err");
        }
        if (map != null && !map.isEmpty()) {
            sb.append(" in=[").append(formatTwo(call.paths, 120)).append("]")
                    .append(" key=[").append(formatTwoKeys(map, 120)).append("]")
                    .append(" sample=[").append(sampleFromMap(map)).append("]");
        } else {
            sb.append(" paths=[").append(formatPaths(call.paths, 100)).append("]")
                    .append(" diag=").append(diagnose(call.paths));
        }
        XposedBridge.log(sb.toString());
    }

    private static boolean shouldLog() {
        long now = SystemClock.elapsedRealtime();
        if (now - sLastLogElapsed < LOG_INTERVAL_MS) {
            return false;
        }
        sLastLogElapsed = now;
        return true;
    }

    // ------------------------------------------------------------ samples

    private static String sampleFromMap(Map<?, ?> map) {
        List<String> keys = new ArrayList<>(2);
        for (Object key : map.keySet()) {
            if (key != null && keys.size() < 2) {
                keys.add(String.valueOf(key));
            }
        }
        Context context = ensureEnvironment();
        Uri uri = sCloudUri;
        if (context == null || uri == null || keys.isEmpty()) {
            return joinRealPaths(keys);
        }
        QueryResult result = query(context, uri,
                "(" + REAL_PATH_EXPR + ") COLLATE NOCASE IN (?, ?)", twoArgs(keys));
        if (result.failed || result.rows <= 0) {
            return joinRealPaths(keys);
        }
        return formatRows(result.rowsList);
    }

    private static String joinRealPaths(List<String> keys) {
        if (keys.isEmpty()) {
            return "-";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < keys.size(); i++) {
            if (i > 0) {
                sb.append(" ;; ");
            }
            sb.append("realPath=").append(truncate(keys.get(i), 100));
        }
        return sb.toString();
    }

    /**
     * map 为空时：用请求的前 2 条路径分别做「任意列匹配（无过滤）」与
     * 「任意列匹配 + 同款可见性过滤」查询，区分三种失败原因。
     */
    private static String diagnose(List<?> paths) {
        if (paths == null || paths.isEmpty()) {
            return "skip";
        }
        Context context = ensureEnvironment();
        Uri uri = sCloudUri;
        if (context == null || uri == null) {
            return "skip";
        }
        String p0 = paths.get(0) == null ? null : String.valueOf(paths.get(0));
        String p1 = paths.size() > 1 && paths.get(1) != null
                ? String.valueOf(paths.get(1)) : p0;
        String selection = "(localFile IN (?, ?) OR thumbnailFile IN (?, ?)"
                + " OR microthumbfile IN (?, ?))";
        String[] args = {p0, p1, p0, p1, p0, p1};

        QueryResult loose = query(context, uri, selection, args);
        QueryResult filtered = query(context, uri, selection + " AND " + VISIBLE_SELECTION, args);

        StringBuilder sb = new StringBuilder(200);
        sb.append("loose:").append(count(loose))
                .append("/filt:").append(count(filtered));
        if (!loose.failed && loose.rows > 0) {
            sb.append(" rows=[").append(formatRows(loose.rowsList)).append("]");
        }
        return sb.toString();
    }

    private static String count(QueryResult result) {
        if (result.failed) {
            return "?";
        }
        return String.valueOf(result.rows);
    }

    private static String[] twoArgs(List<String> keys) {
        String first = keys.isEmpty() ? null : keys.get(0);
        String second = keys.size() > 1 ? keys.get(1) : first;
        return new String[]{first, second};
    }

    private static String formatRows(List<String[]> rows) {
        StringBuilder sb = new StringBuilder(320);
        for (int i = 0; i < rows.size(); i++) {
            if (i > 0) {
                sb.append(" ;; ");
            }
            String[] row = rows.get(i);
            sb.append('#').append(i + 1)
                    .append(" realPath=").append(truncate(row[0], 100))
                    .append(" | localFile=").append(truncate(row[1], 100))
                    .append(" | thumb=").append(truncate(row[2], 100))
                    .append(" | micro=").append(truncate(row[3], 100));
        }
        return sb.toString();
    }

    private static String formatPaths(List<?> paths, int max) {
        if (paths == null || paths.isEmpty()) {
            return "-";
        }
        StringBuilder sb = new StringBuilder();
        int count = Math.min(2, paths.size());
        for (int i = 0; i < count; i++) {
            if (i > 0) {
                sb.append(" | ");
            }
            Object path = paths.get(i);
            sb.append(truncate(path == null ? null : String.valueOf(path), max));
        }
        return sb.toString();
    }

    /** 前 2 条，带 #序号，用于 in= 逐字比对。 */
    private static String formatTwo(List<?> list, int max) {
        if (list == null || list.isEmpty()) {
            return "-";
        }
        StringBuilder sb = new StringBuilder();
        int count = Math.min(2, list.size());
        for (int i = 0; i < count; i++) {
            if (i > 0) {
                sb.append(" | ");
            }
            Object item = list.get(i);
            sb.append('#').append(i + 1).append(' ')
                    .append(truncate(item == null ? null : String.valueOf(item), max));
        }
        return sb.toString();
    }

    /** map keySet 前 2 条，带 #序号，用于 key= 逐字比对。 */
    private static String formatTwoKeys(Map<?, ?> map, int max) {
        if (map == null || map.isEmpty()) {
            return "-";
        }
        StringBuilder sb = new StringBuilder();
        int count = 0;
        for (Object key : map.keySet()) {
            if (count >= 2) {
                break;
            }
            if (count > 0) {
                sb.append(" | ");
            }
            sb.append('#').append(count + 1).append(' ')
                    .append(truncate(key == null ? null : String.valueOf(key), max));
            count++;
        }
        return sb.toString();
    }

    private static String truncate(String value, int max) {
        if (value == null) {
            return "null";
        }
        String oneLine = value.replace('\n', ' ').replace('\r', ' ');
        return oneLine.length() > max ? oneLine.substring(0, max) : oneLine;
    }

    // ------------------------------------------------------------- query

    private static QueryResult query(Context context, Uri uri, String selection, String[] args) {
        QueryResult result = new QueryResult();
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, PROJECTION, selection, args, null);
            if (cursor == null) {
                return result;
            }
            result.rows = cursor.getCount();
            int read = 0;
            while (cursor.moveToNext() && read < 2) {
                result.rowsList.add(new String[]{
                        cursor.getString(0),
                        cursor.getString(1),
                        cursor.getString(2),
                        cursor.getString(3)
                });
                read++;
            }
        } catch (Throwable t) {
            result.failed = true;
        } finally {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable ignored) {
                }
            }
        }
        return result;
    }

    private static Context ensureEnvironment() {
        if (sEnvResolved) {
            return sContext;
        }
        sEnvResolved = true;
        try {
            Class<?> appCls = XposedHelpers.findClassIfExists(GALLERY_APP_CLASS, sClassLoader);
            if (appCls != null) {
                Object context = XposedHelpers.callStaticMethod(appCls, "sGetAndroidContext");
                if (context instanceof Context) {
                    sContext = (Context) context;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            Class<?> cloudCls = XposedHelpers.findClassIfExists(CLOUD_CONTRACT_CLASS, sClassLoader);
            if (cloudCls != null) {
                Object uri = XposedHelpers.getStaticObjectField(cloudCls, "CLOUD_URI");
                if (uri instanceof Uri) {
                    sCloudUri = (Uri) uri;
                }
            }
        } catch (Throwable ignored) {
        }
        return sContext;
    }

    private static void logHookFailure(String name) {
        try {
            if (FAIL_LOGGED_NAMES.add(name)) {
                XposedBridge.log(TAG + ": writeback probe hook failed: " + name);
            }
        } catch (Throwable ignored) {
        }
    }

    private static final class ProbeCall {
        List<?> paths;
        int rows = -1;
    }

    private static final class QueryResult {
        int rows = -1;
        boolean failed;
        final List<String[]> rowsList = new ArrayList<>(2);
    }
}
