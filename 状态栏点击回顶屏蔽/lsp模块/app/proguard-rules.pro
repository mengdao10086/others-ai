# 保留 Xposed 入口 — 框架通过反射加载
-keep class com.mengdao.statusbarclickblock.StatusBarClickBlockModule {
    public <methods>;
    public <init>(...);
}
