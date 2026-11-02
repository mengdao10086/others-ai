# LSPosed 入口、框架回调与 JNI 保留规则

# assets/xposed_init 按全名加载入口类，框架反射实例化。
-keep class com.mengdao.lsposedtoolkit.ModuleEntry { *; }

# 框架回调接口方法，防止签名被优化改变。
-keepclassmembers class com.mengdao.lsposedtoolkit.ModuleEntry {
    public void handleLoadPackage(...);
    public void initZygote(...);
}

# Hook 组入口及内部回调。
-keep class com.mengdao.lsposedtoolkit.hook.** { *; }

# JNI 符号名含类名与方法名：
# Java_com_mengdao_lsposedtoolkit_gallery_aicr_AicrCpuAffinity_nativeBindThread
# Java_com_mengdao_lsposedtoolkit_gallery_aicr_AicrCpuAffinity_nativeThreadState
-keep class com.mengdao.lsposedtoolkit.gallery.aicr.AicrCpuAffinity {
    native <methods>;
}

# Xposed API 为 compileOnly，运行时由 LSPosed 提供。
-dontwarn de.robv.android.xposed.**
