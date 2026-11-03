package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

import de.robv.android.xposed.XposedBridge;

/**
 * 分析期间把 aicr 加入/移出最近任务锁定。
 *
 * 只在 aicr 的 :searchDataService 使用：该应用位于 /product/priv-app，
 * 系统进程管理的 checkPermission 会按系统应用放行。
 * 每次写之前先读，用户原本就锁了 aicr 的不重复锁、停止时也不解。
 * 失败只记日志，并通过 ACTION_STATE 的 extra 让相册设置行显示提示。
 */
public final class RecentsLock {

    public static final String EXTRA_WHITELIST_FAILED = "mengdao_whitelist_failed";

    private static final String TAG = "GalleryAnalyze";
    private static final String PKG = "com.xiaomi.aicr";
    private static final String MANAGER_CLASS = "miui.process.ProcessManager";
    private static final String PREFS = "mengdao_aicr_whitelist";
    private static final String KEY_ACTIVE = "recents_active";
    private static final String KEY_BOOT = "boot_count";
    private static final long MANUAL_WINDOW_MS = 120_000L;

    private static volatile Context sContext;
    private static volatile long sManualAt;
    private static volatile boolean sActive;
    private static volatile boolean sStateLoaded;
    private static volatile String sFailure;
    private static volatile String sLoggedFailure;
    private static volatile ExecutorService sExecutor;
    private static volatile Class<?> sManagerClass;
    private static volatile Method sSetMethod;
    private static volatile Method sGetMethod;
    private static volatile boolean sResolved;

    private RecentsLock() {
    }

    /** 相册侧手动点启动、aicr 收到 ACTION_START 时调用。 */
    static void markManualRequested() {
        sManualAt = SystemClock.elapsedRealtime();
    }

    static void clearManualRequested() {
        sManualAt = 0L;
    }

    static boolean consumeManualRequested() {
        long at = sManualAt;
        sManualAt = 0L;
        return at > 0L && SystemClock.elapsedRealtime() - at <= MANUAL_WINDOW_MS;
    }

    /** 分析进入运行态且本轮是手动启动时调用。 */
    static void onManualRunStarted(Context context) {
        clearManualRequested();
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                startedInternal();
            }
        });
    }

    /** 分析回到空闲时调用；只解本轮自己加的锁。 */
    static void onRunStopped(Context context) {
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                stoppedInternal();
            }
        });
    }

    /** 进程启动时按开机计数回收上一轮可能残留的锁。 */
    static void recoverOnProcessStart(Context context) {
        ensureContext(context);
        post(new Runnable() {
            @Override
            public void run() {
                recoverInternal();
            }
        });
    }

    /** 处理 ACTION_QUERY 时调用：aicr 已空闲则把本模块残留的锁解掉。 */
    static void recoverIfIdle(Context context) {
        ensureContext(context);
        if (AicrStateReporter.isRunningNow()) {
            return;
        }
        post(new Runnable() {
            @Override
            public void run() {
                if (!AicrStateReporter.isRunningNow()) {
                    stoppedInternal();
                }
            }
        });
    }

    /** 给 AicrStateReporter 用：把失败状态随 ACTION_STATE 回传给相册。 */
    public static boolean whitelistFailed() {
        return sFailure != null;
    }

    private static void startedInternal() {
        Context context = sContext;
        if (context == null) {
            return;
        }
        loadState(context);
        if (sActive) {
            return;
        }
        boolean locked;
        try {
            locked = isLocked(userId());
        } catch (Throwable t) {
            fail("最近任务锁读取失败", unwrap(t));
            return;
        }
        if (locked) {
            // 用户原本就锁了：不重复锁，停止时也不解。
            return;
        }
        try {
            setLocked(true, userId());
        } catch (Throwable t) {
            fail("最近任务锁定失败", unwrap(t));
            return;
        }
        boolean lockedNow;
        try {
            lockedNow = isLocked(userId());
        } catch (Throwable t) {
            // 写入已返回，只是复核读不到：仍记为本轮已锁，停止时会再解。
            persistActive(context, true);
            fail("最近任务锁复核失败", unwrap(t));
            return;
        }
        if (!lockedNow) {
            fail("最近任务锁定未生效", null);
            return;
        }
        persistActive(context, true);
        clearFailure();
    }

    private static void stoppedInternal() {
        Context context = sContext;
        if (context == null) {
            return;
        }
        loadState(context);
        if (!sActive) {
            return;
        }
        try {
            setLocked(false, userId());
        } catch (Throwable t) {
            fail("最近任务解锁失败", unwrap(t));
            return;
        }
        boolean stillLocked;
        try {
            stillLocked = isLocked(userId());
        } catch (Throwable t) {
            fail("最近任务解锁复核失败", unwrap(t));
            return;
        }
        if (stillLocked) {
            fail("最近任务解锁未生效", null);
            return;
        }
        persistActive(context, false);
        clearFailure();
    }

    private static void recoverInternal() {
        Context context = sContext;
        if (context == null) {
            return;
        }
        loadState(context);
        if (!sActive) {
            return;
        }
        int savedBoot = prefs(context).getInt(KEY_BOOT, -1);
        int currentBoot = bootCount(context);
        if (savedBoot >= 0 && currentBoot >= 0 && savedBoot != currentBoot) {
            try {
                setLocked(false, userId());
                if (isLocked(userId())) {
                    fail("最近任务开机回收未生效", null);
                    return;
                }
            } catch (Throwable t) {
                fail("最近任务开机回收失败", unwrap(t));
                return;
            }
            persistActive(context, false);
            clearFailure();
        }
    }

    private static int userId() {
        try {
            Method method = UserHandle.class.getDeclaredMethod("myUserId");
            method.setAccessible(true);
            Object value = method.invoke(null);
            return value instanceof Integer ? (Integer) value : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    private static boolean isLocked(int userId) throws Exception {
        if (!resolve()) {
            throw new ClassNotFoundException(MANAGER_CLASS);
        }
        Object value = sGetMethod.invoke(null, PKG, userId);
        if (!(value instanceof Boolean)) {
            throw new IllegalStateException("isLockedApplication 返回值异常: " + value);
        }
        return (Boolean) value;
    }

    private static void setLocked(boolean locked, int userId) throws Exception {
        if (!resolve()) {
            throw new ClassNotFoundException(MANAGER_CLASS);
        }
        sSetMethod.invoke(null, PKG, userId, locked);
    }

    private static boolean resolve() {
        if (sResolved) {
            return sManagerClass != null;
        }
        synchronized (RecentsLock.class) {
            if (sResolved) {
                return sManagerClass != null;
            }
            sResolved = true;
            ClassLoader[] loaders = new ClassLoader[]{
                    null,
                    ClassLoader.getSystemClassLoader(),
                    RecentsLock.class.getClassLoader()
            };
            for (ClassLoader loader : loaders) {
                try {
                    Class<?> type = loader == null
                            ? Class.forName(MANAGER_CLASS)
                            : Class.forName(MANAGER_CLASS, false, loader);
                    Method set = type.getDeclaredMethod(
                            "updateApplicationLockedState",
                            String.class, int.class, boolean.class);
                    Method get = type.getDeclaredMethod(
                            "isLockedApplication", String.class, int.class);
                    set.setAccessible(true);
                    get.setAccessible(true);
                    sManagerClass = type;
                    sSetMethod = set;
                    sGetMethod = get;
                    return true;
                } catch (Throwable ignored) {
                    // 换下一个 ClassLoader 继续找。
                }
            }
            return false;
        }
    }

    private static void ensureContext(Context context) {
        if (sContext != null) {
            return;
        }
        if (context != null) {
            Context app = context.getApplicationContext();
            sContext = app != null ? app : context;
            return;
        }
        sContext = appContext();
    }

    private static Context appContext() {
        try {
            Class<?> util = Class.forName("com.xiaomi.aicr.common.ContextUtil");
            Method method = util.getMethod("getApplicationContext");
            Object value = method.invoke(null);
            if (value instanceof Context) {
                Context app = ((Context) value).getApplicationContext();
                return app != null ? app : (Context) value;
            }
        } catch (Throwable ignored) {
        }
        return null;
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

    private static void persistActive(Context context, boolean active) {
        sActive = active;
        try {
            SharedPreferences.Editor editor = prefs(context).edit().putBoolean(KEY_ACTIVE, active);
            if (active) {
                editor.putInt(KEY_BOOT, bootCount(context));
            }
            editor.commit();
        } catch (Throwable ignored) {
            // 落盘失败不影响本轮内存态。
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
            XposedBridge.log(TAG + ": " + what + ": " + t);
        }
    }

    private static void clearFailure() {
        sFailure = null;
        sLoggedFailure = null;
    }

    private static synchronized void post(Runnable runnable) {
        if (sExecutor == null) {
            sExecutor = Executors.newSingleThreadExecutor(r -> {
                Thread thread = new Thread(r, "mengdao-recents-lock");
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
}
