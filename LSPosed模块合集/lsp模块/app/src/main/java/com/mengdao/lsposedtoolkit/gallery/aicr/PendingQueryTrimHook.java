package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.os.Process;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 待处理查询改写：摘掉本机恒为 -1 的三列条件。
 *
 * {@code ManagerDao_Impl.calculate(String, int)} 的 SQL 末尾依次是
 * {@code pet_state = -1}、{@code iaa_state = -1}、{@code crop_state = -1}。
 * 本机这三列长期全为 -1（约 8.3 万行），条件恒定命中，导致每轮待处理集
 * 与全库等大、整轮空转。只把这三段的 {@code = -1} 子句删掉（保留其他
 * 列的 {@code = -1}），不改数据库、不改 {@code = 0} 条件。
 *
 * 三段必须全部命中才改写；任一子串缺失即视为目标 SQL 结构不符，原样放行。
 * 开关 {@link #ENABLE_PENDING_TRIM} 关掉后不安装 hook、不改任何参数。
 * 异常一律吞掉，保持原 SQL。
 */
final class PendingQueryTrimHook {

    private static final String TAG = "GalleryAnalyze";

    private static final String MANAGER_DAO_IMPL_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.dao.ManagerDao_Impl";

    private static final String PET_CLAUSE = "pet_state = -1 OR ";
    private static final String IAA_CLAUSE = "iaa_state = -1 OR ";
    private static final String CROP_CLAUSE = " OR crop_state = -1";

    private static final int SQL_LOG_LIMIT = 200;

    /** 关闭后不装 hook，完全保留原查询。 */
    static final boolean ENABLE_PENDING_TRIM = true;

    private static volatile boolean sInstalled;
    private static boolean sLogged;

    private PendingQueryTrimHook() {
    }

    static void install(ClassLoader classLoader) {
        if (!ENABLE_PENDING_TRIM) {
            XposedBridge.log(TAG + ": pending trim disabled");
            return;
        }
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        try {
            Class<?> cls = XposedHelpers.findClassIfExists(MANAGER_DAO_IMPL_CLASS, classLoader);
            if (cls == null) {
                XposedBridge.log(TAG + ": pending trim hook failed: class not found");
                return;
            }
            XposedHelpers.findAndHookMethod(cls, "calculate", String.class, int.class,
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            try {
                                if (param.args.length < 1 || !(param.args[0] instanceof String)) {
                                    return;
                                }
                                String trimmed = trim((String) param.args[0]);
                                if (trimmed == null) {
                                    return;
                                }
                                param.args[0] = trimmed;
                                logOnce(trimmed);
                            } catch (Throwable ignored) {
                                // 保持原 SQL
                            }
                        }
                    });
            XposedBridge.log(TAG + ": pending trim install pid=" + Process.myPid());
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": pending trim hook failed: " + t);
        }
    }

    /** 三段全部命中才返回改写结果；任一缺失返回 null。 */
    private static String trim(String sql) {
        if (sql == null
                || !sql.contains(PET_CLAUSE)
                || !sql.contains(IAA_CLAUSE)
                || !sql.contains(CROP_CLAUSE)) {
            return null;
        }
        return sql.replace(PET_CLAUSE, "")
                .replace(IAA_CLAUSE, "")
                .replace(CROP_CLAUSE, "");
    }

    /** 每进程只打一次，避免每轮查询重复刷日志。 */
    private static synchronized void logOnce(String sql) {
        if (sLogged) {
            return;
        }
        sLogged = true;
        XposedBridge.log(TAG + ": pending trim on (removed pet/iaa/crop=-1)");
        XposedBridge.log(TAG + ": pending trim sql="
                + (sql.length() > SQL_LOG_LIMIT ? sql.substring(0, SQL_LOG_LIMIT) : sql));
    }
}
