# 保留 Xposed 入口 — 框架按 xposed_init 中的类名反射加载
-keep class com.taplus.fix.TaplusFixModule {
    public <methods>;
    public <init>(...);
}

# Xposed API 为 compileOnly，运行期由框架提供
-dontwarn de.robv.android.xposed.**
