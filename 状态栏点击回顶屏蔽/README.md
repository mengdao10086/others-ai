# 状态栏点击回顶屏蔽（LSPosed 模块）

屏蔽 MIUI / HyperOS **点击状态栏触发的自动回顶滚动**：单击、双击状态栏都不再让当前页面快速上滑。

无界面、无 Activity，作用域只有 `com.android.systemui`。

## 一、原理

系统原有的触发链（在 ROM 内反编译确认）：

```
StatusBarLongPressGestureDetector          SystemUI，单击/双击状态栏
        └─ StatusBarClickTool.invokeInputManager(boolean)   ← 本模块在此置空
              └─ MiuiInputManager.scrollToTop()
                    └─ MiuiInputManagerService 向所有窗口广播 onScrollToTop()
                          └─ ViewRootImplStubImpl$ScrollToTopListener  应用进程内滚动
```

`invokeInputManager` 在 SystemUI 中是这条链路的**唯一入口**（仅被手势检测器调用两处），把它的返回值直接置空即可让整条链路失效。

**不拦截触摸事件、不修改任何视图**，因此其他模块自建的状态栏手势不受影响 —— 例如 HyperCeiler 的「双击状态栏锁屏」走的是 `MiuiPhoneStatusBarView` 上的独立 `OnTouchListener`，与本模块没有交集。

## 二、兜底

若目标类/方法在将来 ROM 中改名，模块会自动退而 hook `miui.hardware.input.MiuiInputManager.scrollToTop()`。该兜底只在 SystemUI 进程内生效，不影响其他 App 自己进程里的调用。

命中哪一条会写进 LSPosed 日志，tag 为 `StatusBarClickBlock`。

## 三、构建

```bash
cd lsp模块
JAVA_HOME=D:/tools/jdk-17.0.2 ./gradlew :app:assembleRelease
```

- JDK 17（`D:\tools\jdk-17.0.2`）、SDK 34（`D:\tools\android-sdk`，见 `local.properties`）
- AGP 8.2.2 / Gradle 8.9
- 签名使用仓库内确定性密钥 `app/sbcblock.jks`
- 项目路径含中文，`gradle.properties` 已设 `android.overridePathCheck=true`

产物：`lsp模块/app/build/outputs/apk/release/app-release.apk`

## 四、使用

1. 安装 APK
2. LSPosed 中启用模块，作用域勾选 **系统界面（com.android.systemui）**
3. 重启状态栏或重启手机

## 五、边界

- 只覆盖「状态栏点击」这一条路径；第三方 App 自己实现的回顶不受影响
- 若后续 ROM 把检测移到 system_server 侧，本模块失效（3.0.318 与 4.0.5.0 均确认在 SystemUI 侧）
- 已按 3.0.318 / 4.0.5.0 的 `MiuiSystemUI.apk` 静态核对类与方法签名，未做真机验证

## 六、变更

见 [CHANGELOG.md](CHANGELOG.md)。
