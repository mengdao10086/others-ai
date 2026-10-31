# 保留 Xposed 入口 — 框架通过反射加载（minifyEnabled=false 时安全网）
-keep class com.taplus.fix.TaplusFixModule {
    public <methods>;
    public <init>(...);
}
