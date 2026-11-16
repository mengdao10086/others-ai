# LSPosed 入口 — assets/xposed_init 按全名加载，框架反射实例化。
# 只保留入口；其余 hook 类由入口静态引用，依赖 R8 可达性分析保留。
-keep class com.mengdao.scenemonitor.SceneMonitorModule { *; }

# Xposed API 为 compileOnly，运行时由 LSPosed 提供。
-dontwarn de.robv.android.xposed.**
