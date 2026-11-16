package com.mengdao.lsposedtoolkit.gallery;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;


/**
 * 分析期间给 aicr 加/撤 Doze 白名单。
 *
 * 只在相册主进程使用：相册清单声明了 DEVICE_POWER，且与系统框架同一平台签名。
 * 每次写之前先读，用户原本就在白名单里的不重复加、停止时也不撤。
 * 失败只记日志并由设置行追加提示，不回退 root。
 */
final class DozeWhitelist {

    private static final String PKG = "com.xiaomi.aicr";
    private static final String PREFS = "mengdao_gallery_whitelist";
    private static final String KEY_ACTIVE = "doze_active";
    private static final String KEY_BOOT = "boot_count";
    private static final long MANUAL_WINDOW_MS = 180_000L;
    private static final long STOP_QUERY_DELAY_MS = 10_000L;
    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_NO = 0;
    private static final int STATE_YES = 1;

    private static volatile Context sContext;
    private static volatile long sManualAt;
    private static volatile boolean sActive;
    private static volatile boolean sStateLoaded;
    private static volatile String sFailure;
    private static volatile String sLoggedFailure;
    private static volatile ExecutorService sExecutor;
    private static volatile Handler sMainHandler;

    private DozeWhitelist() {
    }

    /** 相册进程启动时调用；注册接收器之后再调，保证恢复查询的应答有人接。 */
    static void init(Context context) {
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                recoverOnProcessStartInternal();
            }
        });
    }

    /** 设置页手动点启动时调用。 */
    static void markManualStart() {
        sManualAt = SystemClock.elapsedRealtime();
        sFailure = null;
        sLoggedFailure = null;
    }

    static boolean manualStartRecent() {
        long at = sManualAt;
        return at > 0L && SystemClock.elapsedRealtime() - at <= MANUAL_WINDOW_MS;
    }

    /** 手动点停止：只发查询，不立即撤；真正撤以 aicr 回报的 status==0 为准。 */
    static void onManualStopRequested() {
        final Context context = sContext;
        if (context == null) {
            return;
        }
        AicrTrigger.sendQuery(context);
        Handler handler = mainHandler();
        if (handler != null) {
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    Context latest = sContext;
                    if (latest != null) {
                        AicrTrigger.sendQuery(latest);
                    }
                }
            }, STOP_QUERY_DELAY_MS);
        }
    }

    /** 分析真正进入运行态时调用；幂等，重复广播不会重复写。 */
    static void acquire(Context context) {
        if (!manualStartRecent()) {
            return;
        }
        sManualAt = 0L;
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                acquireInternal();
            }
        });
    }

    /** 分析回到空闲时调用；只撤本轮自己加的那条。 */
    static void release(Context context, final String reason) {
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                releaseInternal();
            }
        });
    }

    static String failureSuffix() {
        return sFailure == null ? "" : "（白名单未生效）";
    }

    private static void acquireInternal() {
        Context context = sContext;
        if (context == null) {
            return;
        }
        loadState(context);
        if (sActive) {
            return;
        }
        int state = whitelistState(context);
        if (state == STATE_UNKNOWN) {
            fail("Doze 状态读取失败", null);
            return;
        }
        if (state == STATE_YES) {
            // 用户原本就在白名单里：不重复加，停止时也不撤。
            return;
        }
        boolean written = addViaApi(context);
        int after = whitelistState(context);
        if (written && after != STATE_NO) {
            // 写入返回成功但复核读不到时，仍按「本轮已加」记录，停止时再撤，避免残留。
            persistActive(context, true);
            if (after == STATE_UNKNOWN) {
                fail("Doze 状态复核失败", lastThrowable);
            } else {
                clearFailure();
            }
        } else {
            fail("Doze 添加失败", lastThrowable);
        }
    }

    private static void releaseInternal() {
        Context context = sContext;
        if (context == null || !isActive(context)) {
            return;
        }
        removeViaApi(context);
        int after = whitelistState(context);
        if (after == STATE_NO) {
            persistActive(context, false);
            clearFailure();
        } else {
            fail("Doze 撤销失败", lastThrowable);
        }
    }

    private static void recoverOnProcessStartInternal() {
        Context context = sContext;
        if (context == null) {
            return;
        }
        if (!isActive(context)) {
            return;
        }
        int savedBoot = prefs(context).getInt(KEY_BOOT, -1);
        int currentBoot = bootCount(context);
        if (savedBoot >= 0 && currentBoot >= 0 && savedBoot != currentBoot) {
            releaseInternal();
            return;
        }
        // 同一次开机：问一次 aicr 的真实状态，只有实时 status==0 才会触发 release。
        AicrTrigger.sendQuery(context);
    }

    private static void ensureContext(Context context) {
        if (sContext != null || context == null) {
            return;
        }
        Context app = context.getApplicationContext();
        sContext = app != null ? app : context;
    }

    private static synchronized void loadState(Context context) {
        if (sStateLoaded) {
            return;
        }
        sStateLoaded = true;
        try {
            sActive = prefs(context).getBoolean(KEY_ACTIVE, false);
        } catch (Throwable t) {
            sActive = false;
        }
    }

    private static boolean isActive(Context context) {
        loadState(context);
        return sActive;
    }

    private static void persistActive(Context context, boolean active) {
        sActive = active;
        try {
            SharedPreferences.Editor editor = prefs(context).edit().putBoolean(KEY_ACTIVE, active);
            if (active) {
                editor.putInt(KEY_BOOT, bootCount(context));
            }
            editor.commit();
        } catch (Throwable ignored) {
            // 落盘失败不影响本轮内存态；下次启动最多多一次回收尝试。
        }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static int bootCount(Context context) {
        try {
            return Settings.Global.getInt(
                    context.getContentResolver(), Settings.Global.BOOT_COUNT, -1);
        } catch (Throwable t) {
            return -1;
        }
    }

    private static int whitelistState(Context context) {
        try {
            PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            if (pm == null) {
                return STATE_UNKNOWN;
            }
            return pm.isIgnoringBatteryOptimizations(PKG) ? STATE_YES : STATE_NO;
        } catch (Throwable t) {
            lastThrowable = t;
            return STATE_UNKNOWN;
        }
    }

    private static volatile Throwable lastThrowable;

    private static boolean addViaApi(Context context) {
        lastThrowable = null;
        try {
            Object service = powerExemptionService(context);
            if (service != null) {
                Method method = service.getClass().getDeclaredMethod(
                        "addToPermanentAllowList", String.class);
                method.setAccessible(true);
                method.invoke(service, PKG);
                return true;
            }
        } catch (Throwable t) {
            lastThrowable = unwrap(t);
        }
        try {
            PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            if (pm == null) {
                return false;
            }
            Method method = PowerManager.class.getDeclaredMethod(
                    "addPowerSaveWhitelistApp", String.class);
            method.setAccessible(true);
            method.invoke(pm, PKG);
            return true;
        } catch (Throwable t) {
            if (lastThrowable == null) {
                lastThrowable = unwrap(t);
            }
            return false;
        }
    }

    private static boolean removeViaApi(Context context) {
        lastThrowable = null;
        try {
            Object service = powerExemptionService(context);
            if (service != null) {
                Method method = service.getClass().getDeclaredMethod(
                        "removeFromPermanentAllowList", String.class);
                method.setAccessible(true);
                method.invoke(service, PKG);
                return true;
            }
        } catch (Throwable t) {
            lastThrowable = unwrap(t);
        }
        try {
            PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            if (pm == null) {
                return false;
            }
            Method method = PowerManager.class.getDeclaredMethod(
                    "removePowerSaveWhitelistApp", String.class);
            method.setAccessible(true);
            method.invoke(pm, PKG);
            return true;
        } catch (Throwable t) {
            if (lastThrowable == null) {
                lastThrowable = unwrap(t);
            }
            return false;
        }
    }

    private static Object powerExemptionService(Context context) throws Exception {
        Object service = context.getSystemService("power_exemption");
        if (service != null) {
            return service;
        }
        Class<?> cls = Class.forName("android.os.PowerExemptionManager");
        return context.getSystemService(cls);
    }

    private static Throwable unwrap(Throwable t) {
        if (t instanceof InvocationTargetException && t.getCause() != null) {
            return t.getCause();
        }
        return t;
    }

    private static void fail(String what, Throwable t) {
        sFailure = what;
        String key = what + "|" + (t == null ? "" : t.getClass().getName());
        if (!key.equals(sLoggedFailure)) {
            sLoggedFailure = key;
                        Logs.status("DozeWhitelist:342", "" + "" + what + ": " + t);
        }
    }

    private static void clearFailure() {
        sFailure = null;
        sLoggedFailure = null;
    }

    private static synchronized void post(Runnable runnable) {
        if (sExecutor == null) {
            sExecutor = Executors.newSingleThreadExecutor(r -> {
                Thread thread = new Thread(r, "mengdao-doze-whitelist");
                thread.setDaemon(true);
                return thread;
            });
        }
        try {
            sExecutor.execute(runnable);
        } catch (RejectedExecutionException ignored) {
            // 进程退出中，忽略。
        }
    }

    private static synchronized Handler mainHandler() {
        if (sMainHandler == null) {
            try {
                sMainHandler = new Handler(Looper.getMainLooper());
            } catch (Throwable t) {
                sMainHandler = null;
            }
        }
        return sMainHandler;
    }
}
