package com.mengdao.lsposedtoolkit.hook.scene;

import android.view.View;
import android.view.ViewGroup;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 让 Scene 的迷你监视器不进入系统截屏。
 *
 * 迷你监视器是普通 WindowManager 浮窗（N1 a.eh0 / 9.3.1 a.az1，均未设置
 * FLAG_SECURE）。这里不依赖混淆类名，而是在窗口挂载后按视图树的资源 entry 名
 * 识别迷你布局，再给窗口根 SurfaceControl 打上 AOSP 的 SKIP_SCREENSHOT 标志：
 *
 * <pre>
 * SurfaceControl.Transaction.setSkipScreenshot(surfaceControl, true)
 * </pre>
 *
 * 该标志的 AOSP 语义是从截屏合成中跳过图层、物理显示与录屏不受影响；具体是否
 * 被厂商 SurfaceFlinger 遵守需要真机验证。任何反射或 hook 失败都只记一行日志，
 * 不改变 Scene 原有行为。
 */
public final class MiniMonitorScreenshotSkipHook {

    private static final String TAG = "LSPosedToolkit";

    /**
     * fw_cpu_freq 同时出现在完整监视器 fw_monitor / fw_monitor2 中；
     * fw_mini_col3_value 只属于迷你布局，用它避免误伤完整监视器。
     * fw_cpu_freq 作为第二重确认，确保命中确实是监视器布局。
     */
    private static final String MINI_VIEW_ENTRY = "fw_mini_col3_value";
    private static final String CPU_VIEW_ENTRY = "fw_cpu_freq";

    /** 两版 Scene 的 fw_mini_col3_value / fw_cpu_freq 数值兜底（N1 / 9.3.1）。 */
    private static final int[] MINI_VIEW_IDS = {0x7f0a030f, 0x7f0a0292};
    private static final int[] CPU_VIEW_IDS = {0x7f0a02f9, 0x7f0a027f};

    private static final int MAX_VIEW_DEPTH = 12;
    private static final int MAX_ATTACH_RETRIES = 4;
    private static final long ATTACH_RETRY_DELAY_MS = 50L;

    /** 已成功设置标志的 SurfaceControl；窗口重建会生成新对象，自然重新设置。 */
    private static final Set<Object> MARKED_SURFACES =
            Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private static final AtomicBoolean sMissingApiLogged = new AtomicBoolean();
    private static final AtomicBoolean sSurfaceMissingLogged = new AtomicBoolean();
    private static final AtomicBoolean sAppliedLogged = new AtomicBoolean();
    private static final AtomicBoolean sHookErrorLogged = new AtomicBoolean();

    private MiniMonitorScreenshotSkipHook() {
    }

    public static void install(ClassLoader classLoader) {
        tryExemptHiddenApis();

        Class<?> windowManagerImpl = XposedHelpers.findClassIfExists(
                "android.view.WindowManagerImpl", classLoader);
        if (windowManagerImpl != null) {
            Set<XC_MethodHook.Unhook> unhooks = XposedBridge.hookAllMethods(
                    windowManagerImpl, "addView", new AddViewHook());
            if (!unhooks.isEmpty()) {
                return;
            }
        }

        Class<?> viewRootImpl = XposedHelpers.findClassIfExists(
                "android.view.ViewRootImpl", classLoader);
        if (viewRootImpl != null) {
            Set<XC_MethodHook.Unhook> unhooks = XposedBridge.hookAllMethods(
                    viewRootImpl, "setView", new SetViewHook());
            if (!unhooks.isEmpty()) {
                return;
            }
        }

        if (sMissingApiLogged.compareAndSet(false, true)) {
            XposedBridge.log(TAG + ": WindowManagerImpl.addView / ViewRootImpl.setView not found, skip");
        }
    }

    private static final class AddViewHook extends XC_MethodHook {
        @Override
        protected void afterHookedMethod(MethodHookParam param) {
            try {
                if (param.args == null || param.args.length == 0
                        || !(param.args[0] instanceof View)) {
                    return;
                }
                scheduleMarkIfMini((View) param.args[0]);
            } catch (Throwable t) {
                // 不影响 Scene 的窗口添加。
                logHookErrorOnce(t);
            }
        }
    }

    private static final class SetViewHook extends XC_MethodHook {
        @Override
        protected void afterHookedMethod(MethodHookParam param) {
            try {
                if (param.args == null || param.args.length == 0
                        || !(param.args[0] instanceof View)) {
                    return;
                }
                scheduleMarkIfMini((View) param.args[0]);
            } catch (Throwable t) {
                // 不影响 Scene 的窗口挂载。
                logHookErrorOnce(t);
            }
        }
    }

    private static void scheduleMarkIfMini(View view) {
        if (view == null) {
            return;
        }
        if (!containsEntryOrId(view, MINI_VIEW_ENTRY, MINI_VIEW_IDS, 0)
                || !containsEntryOrId(view, CPU_VIEW_ENTRY, CPU_VIEW_IDS, 0)) {
            return;
        }
        markWhenAttached(view, 0);
    }

    private static void markWhenAttached(final View view, final int attempt) {
        Object surfaceControl = findSurfaceControl(view);
        if (surfaceControl != null) {
            applySkipScreenshot(view, surfaceControl);
            return;
        }
        if (attempt >= MAX_ATTACH_RETRIES) {
            if (sSurfaceMissingLogged.compareAndSet(false, true)) {
                XposedBridge.log(TAG + ": Scene mini monitor surface not found, skip");
            }
            return;
        }
        view.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    markWhenAttached(view, attempt + 1);
                } catch (Throwable t) {
                    // 窗口可能已销毁。
                    logHookErrorOnce(t);
                }
            }
        }, ATTACH_RETRY_DELAY_MS);
    }

    /**
     * 先取窗口根 SurfaceControl（ViewRootImpl.getSurfaceControl），
     * 失败再沿 View.mAttachInfo.mRootSurfaceControl 兜底。
     */
    private static Object findSurfaceControl(View view) {
        try {
            Object rootSurfaceControl = XposedHelpers.callMethod(view, "getRootSurfaceControl");
            Object surfaceControl = callGetSurfaceControl(rootSurfaceControl);
            if (surfaceControl != null) {
                return surfaceControl;
            }
        } catch (Throwable ignored) {
        }

        try {
            Object attachInfo = XposedHelpers.getObjectField(view, "mAttachInfo");
            if (attachInfo != null) {
                Object rootSurfaceControl = XposedHelpers.getObjectField(
                        attachInfo, "mRootSurfaceControl");
                return callGetSurfaceControl(rootSurfaceControl);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Object callGetSurfaceControl(Object rootSurfaceControl) {
        if (rootSurfaceControl == null) {
            return null;
        }
        try {
            return XposedHelpers.callMethod(rootSurfaceControl, "getSurfaceControl");
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void applySkipScreenshot(View view, Object surfaceControl) {
        try {
            if (MARKED_SURFACES.contains(surfaceControl)) {
                return;
            }

            ClassLoader classLoader = view.getContext().getClassLoader();
            Class<?> surfaceControlClass = XposedHelpers.findClassIfExists(
                    "android.view.SurfaceControl", classLoader);
            Class<?> transactionClass = XposedHelpers.findClassIfExists(
                    "android.view.SurfaceControl$Transaction", classLoader);
            if (surfaceControlClass == null || transactionClass == null) {
                logMissingApiOnce();
                return;
            }

            Method setSkipScreenshot = XposedHelpers.findMethodExactIfExists(
                    transactionClass, "setSkipScreenshot", surfaceControlClass, boolean.class);
            if (setSkipScreenshot == null) {
                logMissingApiOnce();
                return;
            }

            Object transaction = null;
            try {
                transaction = XposedHelpers.newInstance(transactionClass);
                setSkipScreenshot.setAccessible(true);
                setSkipScreenshot.invoke(transaction, surfaceControl, Boolean.TRUE);
                XposedHelpers.callMethod(transaction, "apply");
                MARKED_SURFACES.add(surfaceControl);
                if (sAppliedLogged.compareAndSet(false, true)) {
                    XposedBridge.log(TAG + ": Scene mini monitor excluded from screenshots");
                }
            } finally {
                if (transaction != null) {
                    try {
                        XposedHelpers.callMethod(transaction, "close");
                    } catch (Throwable ignored) {
                    }
                }
            }
        } catch (Throwable t) {
            MARKED_SURFACES.remove(surfaceControl);
            if (sMissingApiLogged.compareAndSet(false, true)) {
                XposedBridge.log(TAG + ": setSkipScreenshot failed: " + t);
            }
        }
    }

    private static boolean containsEntryOrId(View view, String entryName,
                                             int[] fallbackIds, int depth) {
        if (view == null || depth > MAX_VIEW_DEPTH) {
            return false;
        }

        int id = view.getId();
        if (id != View.NO_ID) {
            for (int fallbackId : fallbackIds) {
                if (id == fallbackId) {
                    return true;
                }
            }
            if (entryName.equals(resourceEntryName(view, id))) {
                return true;
            }
        }

        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            int childCount = group.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (containsEntryOrId(group.getChildAt(i), entryName, fallbackIds, depth + 1)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String resourceEntryName(View view, int id) {
        try {
            return view.getResources().getResourceEntryName(id);
        } catch (Throwable ignored) {
            // 非本包资源或 id 未注册。
            return null;
        }
    }

    private static void logHookErrorOnce(Throwable t) {
        if (sHookErrorLogged.compareAndSet(false, true)) {
            XposedBridge.log(TAG + ": mini monitor window hook error: " + t);
        }
    }

    private static void logMissingApiOnce() {
        if (sMissingApiLogged.compareAndSet(false, true)) {
            XposedBridge.log(TAG + ": SurfaceControl.Transaction.setSkipScreenshot not available, skip");
        }
    }

    /**
     * SurfaceControl.Transaction#setSkipScreenshot 是 @hide API；Android 9+ 的
     * hidden API 限制可能让反射查找失败。只豁免 view/window 两个包，失败忽略。
     */
    private static void tryExemptHiddenApis() {
        try {
            Class<?> vmRuntimeClass = Class.forName("dalvik.system.VMRuntime");
            Object vmRuntime = vmRuntimeClass.getDeclaredMethod("getRuntime").invoke(null);
            Method setExemptions = vmRuntimeClass.getDeclaredMethod(
                    "setHiddenApiExemptions", String[].class);
            setExemptions.invoke(vmRuntime,
                    (Object) new String[]{"Landroid/view/", "Landroid/window/"});
        } catch (Throwable ignored) {
            // 厂商或 LSPosed 已处理时无需重复设置。
        }
    }
}
