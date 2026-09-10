# Refresh 165 Enhancer

This module keeps the global MIUI/AOSP refresh-rate ceiling at the **detected panel peak** (144 / 165 / 185 Hz, etc.) while leaving `min_refresh_rate` unset.

It does not hard-lock every scene to a single Hertz value. App-side `PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE` votes still control video and other content matching.

HyperOS on Android 17 rewrites `secure miui_refresh_rate` back to 60 when the launcher idles or flings. Magisk now runs a 1s settings guard, and the Android 17 hook intercepts Settings put/get for the same keys.

The LSPosed Home hook (`dev.xiaomiext.homehz`) is installed on every supported peak, not only 165Hz:

- Peak comes from `Display.getSupportedModes()`, then Magisk persist props / `detected_refresh_rate`.
- Android 16 (SDK 36): LayoutParams + Display.getRefreshRate + ValueAnimator + `setRequestedFrameRate`.
- Android 17 (SDK 37+): the 16 path, plus Settings.Secure/System intercept so Home cannot write 60.
- LSPosed API 102 rejects the old `findAndHookMethod(...)Object` invoke; every hook uses `XposedBridge.hookAllMethods`.

Rebuild the hook with `pwsh hook-src/build.ps1` (zipalign + apksigner v2). Use the module action to apply Magisk settings once without reboot; the hook itself still needs a Home/SystemUI restart or a reboot after APK replace.
