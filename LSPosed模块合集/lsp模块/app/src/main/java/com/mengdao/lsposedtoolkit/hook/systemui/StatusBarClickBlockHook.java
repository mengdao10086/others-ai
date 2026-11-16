package com.mengdao.lsposedtoolkit.hook.systemui;

import com.mengdao.lsposedtoolkit.Logs;
import java.lang.reflect.Method;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 功能 3：屏蔽状态栏单击/双击触发的自动回顶滚动。
 *
 * 触发链：StatusBarLongPressGestureDetector
 *           → StatusBarClickTool.invokeInputManager(boolean)   ← 主 hook 在此置空
 *           → MiuiInputManager.scrollToTop()
 *           → MiuiInputManagerService 向各应用广播 onScrollToTop()
 *
 * 只置空状态栏这一条路径，不拦截触摸事件，因此其他状态栏手势不受影响。
 */
public final class StatusBarClickBlockHook {


    private static final String CLICK_TOOL_CLASS =
            "com.miui.systemui.statusbar.StatusBarClickTool";
    private static final String CLICK_TOOL_METHOD = "invokeInputManager";
    private static final String INPUT_MANAGER_CLASS =
            "miui.hardware.input.MiuiInputManager";
    private static final String INPUT_MANAGER_SCROLL_METHOD = "scrollToTop";

    private StatusBarClickBlockHook() {
    }

    public static void install(ClassLoader classLoader) {
        if (!hookScrollTrigger(classLoader)) {
            hookInputManagerFallback(classLoader);
        }
    }

    /** 状态栏单击/双击的唯一触发点；置空后不再向应用广播回顶。 */
    private static boolean hookScrollTrigger(ClassLoader classLoader) {
        Class<?> clickTool = XposedHelpers.findClassIfExists(CLICK_TOOL_CLASS, classLoader);
        if (clickTool == null) {
            log("class not found: " + CLICK_TOOL_CLASS);
            return false;
        }
        Method trigger = XposedHelpers.findMethodExactIfExists(
                clickTool, CLICK_TOOL_METHOD, boolean.class);
        if (trigger == null) {
            log("method not found: " + CLICK_TOOL_CLASS + "#" + CLICK_TOOL_METHOD);
            return false;
        }
        XposedBridge.hookMethod(trigger, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                param.setResult(null);
            }
        });
        log("hooked " + CLICK_TOOL_CLASS + "#" + CLICK_TOOL_METHOD);
        return true;
    }

    /** ROM 改名时的兜底：SystemUI 进程内调用 scrollToTop 一律无效。 */
    private static void hookInputManagerFallback(ClassLoader classLoader) {
        Class<?> inputManager = XposedHelpers.findClassIfExists(INPUT_MANAGER_CLASS, classLoader);
        if (inputManager == null) {
            log("class not found: " + INPUT_MANAGER_CLASS);
            return;
        }
        Method scrollToTop = XposedHelpers.findMethodExactIfExists(
                inputManager, INPUT_MANAGER_SCROLL_METHOD);
        if (scrollToTop == null) {
            log("method not found: " + INPUT_MANAGER_CLASS + "#" + INPUT_MANAGER_SCROLL_METHOD);
            return;
        }
        XposedBridge.hookMethod(scrollToTop, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                param.setResult(null);
            }
        });
        log("hooked fallback " + INPUT_MANAGER_CLASS + "#" + INPUT_MANAGER_SCROLL_METHOD);
    }

    private static void log(String message) {
                Logs.status("StatusBarClickBlockHook:85", "" + "" + message);
    }
}
