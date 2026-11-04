package com.mengdao.lsposedtoolkit.gallery;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 设置页「其他设置」分类里追加一行「AI 内容分析」。
 *
 * 模块类与相册类分属不同 ClassLoader，不能直接继承 androidx.preference.Preference；
 * 这里用相册自己的 Preference 类创建实例，再 hook Preference.onBindViewHolder，
 * 在 android.R.id.widget_frame 里动态放「启动」「停止」两个按钮。
 * widget_frame 不可用时降级为 itemView 上的单个切换按钮；再不行则退化为行点击切换。
 */
final class SettingsHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String KEY = "mengdao_ai_content_analyze";
    private static final String CONTROLS_TAG = "mengdao_gallery_analyze_controls";
    private static final int BUTTON_HEIGHT_DP = 32;
    private static final int BUTTON_GAP_DP = 6;
    /** 圆角半径是高度的一半，文本两侧各留半个高度后语义上就贴住圆角。 */
    private static final int BUTTON_TEXT_SLACK_DP = 2;
    private static final String FRAGMENT_CLASS = "com.miui.gallery.ui.GallerySettingsFragment";
    private static final String[] PREFERENCE_CLASSES = {
            "miuix.preference.BasePreference",
            "androidx.preference.Preference"
    };

    private static ClassLoader sClassLoader;
    private static WeakReference<Object> sPreference = new WeakReference<>(null);
    private static WeakReference<View> sItemView = new WeakReference<>(null);
    private static Handler sHandler;
    private static volatile boolean sPolling;

    private static final Runnable POLL = new Runnable() {
        @Override
        public void run() {
            if (!sPolling) {
                return;
            }
            try {
                refreshStatus();
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": poll refresh failed: " + t);
            }
            Handler handler = sHandler;
            if (sPolling && handler != null) {
                handler.postDelayed(this, 2000L);
            }
        }
    };

    private SettingsHook() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        hookCreatePreferences(classLoader);
        hookBindViewHolder(classLoader);
        hookResumePause(classLoader);
    }

    // ------------------------------------------------------------------
    // 1. 在 onCreatePreferences 之后追加一行
    // ------------------------------------------------------------------

    private static void hookCreatePreferences(ClassLoader classLoader) {
        try {
            Class<?> fragmentClass = XposedHelpers.findClass(FRAGMENT_CLASS, classLoader);
            XposedHelpers.findAndHookMethod(fragmentClass, "onCreatePreferences",
                    Bundle.class, String.class, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                addRow(param.thisObject);
                            } catch (Throwable t) {
                                XposedBridge.log(TAG + ": add settings row failed: " + t);
                            }
                        }
                    });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": onCreatePreferences hook failed: " + t);
        }
    }

    private static void addRow(Object fragment) throws Exception {
        ClassLoader cl = sClassLoader;
        Class<?> preferenceClass = XposedHelpers.findClass("androidx.preference.Preference", cl);
        Class<?> categoryClass = XposedHelpers.findClass("androidx.preference.PreferenceCategory", cl);

        // 「其他设置」分类 key = others；找不到就整块跳过
        Method findPreference = Reflect.findMethod(
                fragment.getClass(), "findPreference", CharSequence.class);
        Object category = findPreference.invoke(fragment, "others");
        if (category == null) {
            XposedBridge.log(TAG + ": category 'others' not found, skip");
            return;
        }

        Method categoryFind = Reflect.findMethod(
                category.getClass(), "findPreference", CharSequence.class);
        if (categoryFind.invoke(category, KEY) != null) {
            return;
        }

        Context context = null;
        try {
            context = (Context) XposedHelpers.callMethod(fragment, "getContext");
        } catch (Throwable ignored) {
        }
        if (context == null) {
            try {
                context = (Context) XposedHelpers.callMethod(fragment, "getActivity");
            } catch (Throwable ignored) {
            }
        }
        if (context == null) {
            XposedBridge.log(TAG + ": no context, skip settings row");
            return;
        }

        Object preference = createPreference(cl, context);
        Class<?> rowClass = preference.getClass();
        Reflect.findMethod(rowClass, "setKey", String.class).invoke(preference, KEY);
        setTitle(preference, "AI 内容分析");
        setSummary(preference, summaryText());
        Reflect.findMethod(rowClass, "setPersistent", boolean.class).invoke(preference, false);
        setSelectable(preference, true);

        // 行点击兜底：启动/停止切换（按钮可用时会改由 itemView 承接，见 injectControls）
        setOnPreferenceClickListener(preference, createRowClickListener(cl));

        Reflect.findMethod(category.getClass(), "addPreference", preferenceClass)
                .invoke(category, preference);
        sPreference = new WeakReference<>(preference);
    }

    /** 优先用 miuix 的通用行，外观与相册其他条目一致；不可用时退回 androidx 的 Preference。 */
    private static Object createPreference(ClassLoader classLoader, Context context) throws Exception {
        Throwable last = null;
        for (String className : PREFERENCE_CLASSES) {
            try {
                Class<?> clazz = XposedHelpers.findClass(className, classLoader);
                return XposedHelpers.findConstructorExact(clazz, Context.class).newInstance(context);
            } catch (Throwable t) {
                last = t;
            }
        }
        throw new IllegalStateException("no Preference class available", last);
    }

    // ------------------------------------------------------------------
    // 2. 绑定时把按钮塞进 widget_frame
    // ------------------------------------------------------------------

    private static void hookBindViewHolder(ClassLoader classLoader) {
        try {
            Class<?> preferenceClass = XposedHelpers.findClass(
                    "androidx.preference.Preference", classLoader);
            Class<?> holderClass = XposedHelpers.findClass(
                    "androidx.preference.PreferenceViewHolder", classLoader);
            XposedHelpers.findAndHookMethod(preferenceClass, "onBindViewHolder",
                    holderClass, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                onPreferenceBound(param.thisObject, param.args[0]);
                            } catch (Throwable t) {
                                XposedBridge.log(TAG + ": preference bind failed: " + t);
                            }
                        }
                    });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": onBindViewHolder hook failed: " + t);
        }
    }

    private static void onPreferenceBound(Object preference, Object holder) throws Exception {
        Object key = XposedHelpers.callMethod(preference, "getKey");
        Object itemViewObject = XposedHelpers.getObjectField(holder, "itemView");
        if (!(itemViewObject instanceof View)) {
            return;
        }
        View itemView = (View) itemViewObject;
        if (!KEY.equals(key)) {
            removeControls(itemView);
            return;
        }
        sPreference = new WeakReference<>(preference);
        sItemView = new WeakReference<>(itemView);
        injectControls(itemView, preference);
    }

    private static void injectControls(View itemView, Object preference) throws Exception {
        Context context = itemView.getContext();
        if (context == null) {
            return;
        }

        View widgetFrame = itemView.findViewById(android.R.id.widget_frame);
        if (widgetFrame instanceof ViewGroup) {
            ViewGroup frame = (ViewGroup) widgetFrame;
            frame.removeAllViews();
            frame.setVisibility(View.VISIBLE);

            LinearLayout row = new LinearLayout(context);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setTag(CONTROLS_TAG);

            Button start = makeButton(context, "启动");
            Button stop = makeButton(context, "停止");
            start.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    DozeWhitelist.markManualStart();
                    AnalyzeControl.start();
                }
            });
            stop.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    DozeWhitelist.onManualStopRequested();
                    AnalyzeControl.stop();
                }
            });

            int buttonHeight = dp(context, BUTTON_HEIGHT_DP);
            row.addView(start, new LinearLayout.LayoutParams(
                    measureButtonWidth(context, start, "启动"), buttonHeight));
            LinearLayout.LayoutParams stopParams = new LinearLayout.LayoutParams(
                    measureButtonWidth(context, stop, "停止"), buttonHeight);
            stopParams.setMargins(dp(context, BUTTON_GAP_DP), 0, 0, 0);
            row.addView(stop, stopParams);

            if (frame instanceof FrameLayout) {
                FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.gravity = Gravity.END | Gravity.CENTER_VERTICAL;
                frame.addView(row, lp);
            } else {
                frame.addView(row, new ViewGroup.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
            }
            // 按钮可用时去掉 Preference 级点击：miuix 的 isArrowRightVisible 据此隐藏行尾箭头；
            // 行点击改由 itemView 承接，启动/停止切换行为不变。
            setOnPreferenceClickListener(preference, null);
            itemView.setOnClickListener(v -> toggleAnalyze());
            updateControls(itemView, preference);
            return;
        }

        // 降级 1：单个按钮，按状态切换文案
        removeControls(itemView);
        if (itemView instanceof ViewGroup) {
            ViewGroup root = (ViewGroup) itemView;
            Button single = makeButton(context, "启动");
            single.setTag(CONTROLS_TAG);
            single.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    toggleAnalyze();
                }
            });
            root.addView(single, new ViewGroup.LayoutParams(
                    measureButtonWidth(context, single, "启动"),
                    dp(context, BUTTON_HEIGHT_DP)));
            setOnPreferenceClickListener(preference, createRowClickListener(sClassLoader));
            updateControls(itemView, preference);
            return;
        }

        // 降级 2：行点击切换，summary 提示（selectable 已在 addRow 里设好，绑定期不能再动）
        setOnPreferenceClickListener(preference, createRowClickListener(sClassLoader));
        setSummary(preference, summaryText() + "（点按切换）");
    }

    private static Button makeButton(Context context, String text) {
        Button button = new Button(context);
        button.setText(text);
        button.setAllCaps(false);
        button.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        button.setGravity(Gravity.CENTER);
        button.setIncludeFontPadding(false);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setPadding(0, 0, 0, 0);
        return button;
    }

    /**
     * 宽度 = 文本宽 + 高度：胶囊两端的圆角各占半个高度，文本正好夹在两个圆角之间。
     * 不再用固定 72dp，避免左右各多出十几 dp 的空白；高度保持 32dp，点击区域不变。
     */
    private static int measureButtonWidth(Context context, Button button, String text) {
        int height = dp(context, BUTTON_HEIGHT_DP);
        int textWidth = (int) Math.ceil(button.getPaint().measureText(text));
        return Math.max(height, textWidth + height + dp(context, BUTTON_TEXT_SLACK_DP));
    }

    private static void setButtonText(Button button, String text) {
        CharSequence current = button.getText();
        if (current != null && text.contentEquals(current)) {
            return;
        }
        button.setText(text);
        ViewGroup.LayoutParams params = button.getLayoutParams();
        if (params != null) {
            params.width = measureButtonWidth(button.getContext(), button, text);
            button.setLayoutParams(params);
        }
    }

    private static void toggleAnalyze() {
        if (AnalyzeControl.isRunning()) {
            DozeWhitelist.onManualStopRequested();
            AnalyzeControl.stop();
        } else {
            DozeWhitelist.markManualStart();
            AnalyzeControl.start();
        }
    }

    private static Object createRowClickListener(ClassLoader classLoader) {
        Class<?> listenerClass = XposedHelpers.findClass(
                "androidx.preference.Preference$OnPreferenceClickListener", classLoader);
        return Proxy.newProxyInstance(classLoader, new Class[]{listenerClass},
                new InvocationHandler() {
                    @Override
                    public Object invoke(Object proxy, Method method, Object[] args) {
                        String name = method.getName();
                        if ("onPreferenceClick".equals(name)) {
                            toggleAnalyze();
                            return true;
                        }
                        if ("toString".equals(name)) {
                            return "MengdaoGalleryAnalyzeClick";
                        }
                        if ("hashCode".equals(name)) {
                            return System.identityHashCode(proxy);
                        }
                        if ("equals".equals(name)) {
                            return proxy == (args != null && args.length > 0 ? args[0] : null);
                        }
                        return null;
                    }
                });
    }

    private static void setOnPreferenceClickListener(Object preference, Object listener) {
        try {
            Class<?> listenerClass = XposedHelpers.findClass(
                    "androidx.preference.Preference$OnPreferenceClickListener", sClassLoader);
            Reflect.findMethod(preference.getClass(),
                    "setOnPreferenceClickListener", listenerClass)
                    .invoke(preference, new Object[]{listener});
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": set row click listener failed: " + t);
        }
    }

    private static int dp(Context context, int value) {
        return (int) (value * context.getResources().getDisplayMetrics().density + 0.5f);
    }

    // ------------------------------------------------------------------
    // 3. 状态轮询与控件刷新
    // ------------------------------------------------------------------

    /**
     * onResume / onPause 不在 GallerySettingsFragment 里声明（继承自 Fragment），
     * 只能在声明处 hook，再按实例类型过滤。
     */
    private static void hookResumePause(ClassLoader classLoader) {
        try {
            final Class<?> fragmentClass = XposedHelpers.findClass(FRAGMENT_CLASS, classLoader);
            hookLifecycle(fragmentClass, "onResume", true);
            hookLifecycle(fragmentClass, "onPause", false);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": resume/pause hook failed: " + t);
        }
    }

    private static void hookLifecycle(final Class<?> fragmentClass, String methodName,
                                      final boolean start) {
        Method method = Reflect.findMethod(fragmentClass, methodName);
        XposedBridge.hookMethod(method, new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                if (!fragmentClass.isInstance(param.thisObject)) {
                    return;
                }
                if (start) {
                    startPolling();
                } else {
                    stopPolling();
                }
            }
        });
    }

    private static void startPolling() {
        if (sHandler == null) {
            sHandler = new Handler(Looper.getMainLooper());
        }
        sPolling = true;
        sHandler.removeCallbacks(POLL);
        sHandler.post(POLL);
    }

    private static void stopPolling() {
        sPolling = false;
        if (sHandler != null) {
            sHandler.removeCallbacks(POLL);
        }
    }

    private static void refreshStatus() throws Exception {
        Object preference = sPreference.get();
        if (preference == null) {
            return;
        }
        View itemView = sItemView.get();
        if (itemView != null) {
            updateControls(itemView, preference);
        } else {
            setSummary(preference, summaryText());
        }
    }

    private static void updateControls(View itemView, Object preference) throws Exception {
        boolean running = AnalyzeControl.isRunning();
        boolean canceled = running && AnalyzeControl.isCanceled();
        boolean bigBound = running && AnalyzeControl.isBigBound();
        setSummary(preference, summaryText());

        View controls = itemView.findViewWithTag(CONTROLS_TAG);
        if (controls instanceof LinearLayout) {
            LinearLayout row = (LinearLayout) controls;
            if (row.getChildCount() >= 2) {
                View first = row.getChildAt(0);
                View second = row.getChildAt(1);
                if (first instanceof Button) {
                    Button startButton = (Button) first;
                    // 运行中未绑核时保留可点：再点一次只追加绑大核，不重启分析
                    setButtonText(startButton, bigBound ? "已加速" : "启动");
                    startButton.setEnabled(!running || (!canceled && !bigBound));
                }
                if (second instanceof Button) {
                    setButtonText((Button) second, canceled ? "停止中" : "停止");
                    ((Button) second).setEnabled(running && !canceled);
                }
            }
        } else if (controls instanceof Button) {
            Button single = (Button) controls;
            if (running) {
                setButtonText(single, canceled ? "停止中" : "停止");
                single.setEnabled(!canceled);
            } else {
                setButtonText(single, "启动");
                single.setEnabled(true);
            }
        }
    }

    private static void removeControls(View itemView) {
        View controls = itemView.findViewWithTag(CONTROLS_TAG);
        if (controls != null && controls.getParent() instanceof ViewGroup) {
            ((ViewGroup) controls.getParent()).removeView(controls);
        }
    }

    // ------------------------------------------------------------------
    // 反射小工具
    // ------------------------------------------------------------------

    private static void setTitle(Object preference, String text) {
        try {
            Reflect.findMethod(preference.getClass(), "setTitle", CharSequence.class)
                    .invoke(preference, text);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": setTitle failed: " + t);
        }
    }

    private static String summaryText() {
        String text = AnalyzeControl.statusText();
        if (DozeWhitelist.failureSuffix().length() > 0 || AicrStateReceiver.whitelistFailed()) {
            text += "（白名单未生效）";
        }
        return text;
    }

    private static void setSummary(Object preference, String text) {
        try {
            Method getSummary = Reflect.findMethodOrNull(preference.getClass(), "getSummary");
            if (getSummary != null) {
                Object current = getSummary.invoke(preference);
                if (current instanceof CharSequence
                        && text.contentEquals((CharSequence) current)) {
                    return;
                }
            }
            Reflect.findMethod(preference.getClass(), "setSummary", CharSequence.class)
                    .invoke(preference, text);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": setSummary failed: " + t);
        }
    }

    private static void setSelectable(Object preference, boolean selectable) {
        try {
            Reflect.findMethod(preference.getClass(), "setSelectable", boolean.class)
                    .invoke(preference, selectable);
        } catch (Throwable t) {
            Throwable cause = t.getCause() != null ? t.getCause() : t;
            XposedBridge.log(TAG + ": setSelectable failed: " + cause);
        }
    }
}
