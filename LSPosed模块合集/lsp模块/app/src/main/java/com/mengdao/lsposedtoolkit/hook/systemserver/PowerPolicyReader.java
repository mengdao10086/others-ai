package com.mengdao.lsposedtoolkit.hook.systemserver;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XposedHelpers;

/**
 * 查询应用的省电策略是否为「无限制」。
 *
 * 优先读 SmartPowerPolicyManager 的内存集合；system_server 非开机重建时该集合为空，
 * 因此未命中再查 powerkeeper provider，结果按 packageName+userId 缓存 30 秒。
 */
public final class PowerPolicyReader {

    private static final Uri USER_TABLE =
            Uri.parse("content://com.miui.powerkeeper.configure/userTable");
    private static final long CACHE_TTL_MS = 30_000L;
    private static final AtomicBoolean sErrorLogged = new AtomicBoolean();

    private static final ConcurrentHashMap<String, CachedPolicy> sCache = new ConcurrentHashMap<>();

    private static volatile Object sPowerPolicyManager;
    private static volatile boolean sPowerPolicyManagerResolved;
    private static volatile Context sContext;
    private static volatile boolean sContextResolved;

    private PowerPolicyReader() {
    }

    public static boolean isNoRestrictApp(String packageName, int userId) {
        String key = packageName + "@" + userId;
        long now = SystemClock.elapsedRealtime();
        CachedPolicy cached = sCache.get(key);
        if (cached != null && now - cached.readAt < CACHE_TTL_MS) {
            return cached.noRestrict;
        }

        boolean noRestrict = false;
        try {
            noRestrict = readFromMemory(packageName);
        } catch (Throwable t) {
            logOnce(t);
        }
        if (!noRestrict) {
            try {
                noRestrict = readFromProvider(packageName, userId);
            } catch (Throwable t) {
                logOnce(t);
            }
        }
        sCache.put(key, new CachedPolicy(noRestrict, now));
        return noRestrict;
    }

    private static boolean readFromMemory(String packageName) {
        Object manager = powerPolicyManager();
        if (manager == null) {
            return false;
        }
        return Boolean.TRUE.equals(
                XposedHelpers.callMethod(manager, "isNoRestrictApp", packageName));
    }

    private static boolean readFromProvider(String packageName, int userId) {
        Context context = systemContext();
        if (context == null) {
            return false;
        }
        ContentResolver resolver = context.getContentResolver();
        if (resolver == null) {
            return false;
        }

        String[] projection = {"pkgName"};
        String selection = "userId = ? AND bgControl = ?";
        String[] selectionArgs = {String.valueOf(userId), "noRestrict"};
        try (Cursor cursor = resolver.query(
                USER_TABLE, projection, selection, selectionArgs, null)) {
            if (cursor == null) {
                return false;
            }
            int column = cursor.getColumnIndex("pkgName");
            if (column < 0) {
                return false;
            }
            while (cursor.moveToNext()) {
                if (packageName.equals(cursor.getString(column))) {
                    return true;
                }
            }
        }
        return false;
    }

    private static Object powerPolicyManager() {
        if (!sPowerPolicyManagerResolved) {
            synchronized (PowerPolicyReader.class) {
                if (!sPowerPolicyManagerResolved) {
                    try {
                        Class<?> serviceManager =
                                XposedHelpers.findClass("android.os.ServiceManager", null);
                        Object binder = XposedHelpers.callStaticMethod(
                                serviceManager, "getService", "smartpower");
                        if (binder != null) {
                            sPowerPolicyManager =
                                    XposedHelpers.getObjectField(binder, "mSmartPowerPolicyManager");
                        }
                    } catch (Throwable t) {
                        logOnce(t);
                    }
                    sPowerPolicyManagerResolved = true;
                }
            }
        }
        return sPowerPolicyManager;
    }

    private static Context systemContext() {
        if (!sContextResolved) {
            synchronized (PowerPolicyReader.class) {
                if (!sContextResolved) {
                    try {
                        Class<?> activityThread =
                                XposedHelpers.findClass("android.app.ActivityThread", null);
                        Object thread = XposedHelpers.callStaticMethod(
                                activityThread, "currentActivityThread");
                        if (thread != null) {
                            Object context = XposedHelpers.callMethod(thread, "getSystemContext");
                            if (context instanceof Context) {
                                sContext = (Context) context;
                            }
                        }
                    } catch (Throwable t) {
                        logOnce(t);
                    }
                    sContextResolved = true;
                }
            }
        }
        return sContext;
    }

    private static void logOnce(Throwable t) {
        if (sErrorLogged.compareAndSet(false, true)) {
                        Logs.status("PowerPolicyReader:154", "" + "power policy query failed: " + t);
        }
    }

    private static final class CachedPolicy {
        final boolean noRestrict;
        final long readAt;

        CachedPolicy(boolean noRestrict, long readAt) {
            this.noRestrict = noRestrict;
            this.readAt = readAt;
        }
    }
}
