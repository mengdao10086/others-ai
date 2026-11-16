package com.mengdao.scenemonitor.hook;

import com.mengdao.scenemonitor.SceneLog;

import java.lang.reflect.Method;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 跳过 Scene 迷你监视器重开后的 2 秒占位。
 *
 * 迷你监视器用 {@code Timer.schedule(task, 2000L, 1500L)} 启动刷新：
 * 首个 tick 之前界面停留在布局默认的 -MHz/--W 占位。这里只把
 * {@code (delay=2000, period=1500)} 这一对参数的初始延迟改为 0，
 * 周期、TimerTask、Timer 名称都不动。
 *
 * 2000/1500 这对参数在当前 Scene 9.3.1 与 N1 中都只被迷你监视器使用；
 * 不依赖 a.eh0 / a.az1 等混淆类名。
 */
public final class MiniMonitorRefreshDelayHook {

    private static final long MINI_MONITOR_INITIAL_DELAY_MS = 2000L;
    private static final long MINI_MONITOR_PERIOD_MS = 1500L;

    private static final AtomicBoolean sMissingLogged = new AtomicBoolean();
    private static final AtomicBoolean sAppliedLogged = new AtomicBoolean();
    private static final AtomicBoolean sHookErrorLogged = new AtomicBoolean();

    private MiniMonitorRefreshDelayHook() {
    }

    public static void install() {
        Method schedule = XposedHelpers.findMethodExactIfExists(
                Timer.class, "schedule", TimerTask.class, long.class, long.class);
        if (schedule == null) {
            if (SceneLog.ENABLED && sMissingLogged.compareAndSet(false, true)) {
                SceneLog.d("Timer.schedule(TimerTask,long,long) not found, skip");
            }
            return;
        }

        XposedBridge.hookMethod(schedule, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                try {
                    if (param.args == null || param.args.length != 3
                            || !(param.args[1] instanceof Long)
                            || !(param.args[2] instanceof Long)) {
                        return;
                    }
                    long delay = (Long) param.args[1];
                    long period = (Long) param.args[2];
                    if (delay != MINI_MONITOR_INITIAL_DELAY_MS
                            || period != MINI_MONITOR_PERIOD_MS) {
                        return;
                    }
                    param.args[1] = 0L;
                    if (SceneLog.ENABLED && sAppliedLogged.compareAndSet(false, true)) {
                        SceneLog.d("Scene mini monitor initial delay skipped");
                    }
                } catch (Throwable t) {
                    // 任何异常都不改变原 Timer 调用。
                    if (SceneLog.ENABLED && sHookErrorLogged.compareAndSet(false, true)) {
                        SceneLog.d("Timer.schedule hook error", t);
                    }
                }
            }
        });
    }
}
