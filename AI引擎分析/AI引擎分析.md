# 小米澎湃 AI 引擎（com.xiaomi.aicr 3.4.14）反编译分析

> 样本：`D:\下载\LocalSend\小米澎湃AI引擎-com.xiaomi.aicr-3.4.14.zip`
> 解压/反编译：`_分析\`（apk、apktool_out、jadx_out、jadx.log）
> 结论标注：**已确认** = 代码可直接对应；**推断** = 由代码路径/常量推断；**无法验证** = 本 APK 内无对应实现或相册侧代码不在样本中。
> 证据路径均相对本文件所在目录；`jadx_out/sources/...:行号` 为 jadx 反编译产物。

---

## 0. 结论速览

1. **它不是只服务相册的 APK**：`com.xiaomi.aicr` 是系统级 AI 引擎，包含 AI 搜索/相册分析、认知（cognition）、LLM、动作（ActionProvider）、剪贴板直达、日历挖掘、旅行等大量子系统。本报告只分析**与相册媒体分析相关的 AI Search 链路**，其余模块仅在触发/依赖处提及。
2. **触发方是 AI 引擎自己，不是相册**：核心是 aicr 的 WorkManager 任务 `AISearchDataTask`（unique work `search_data_charging`）。典型被动触发是**息屏**：`RunningLevelMonitor` 收到 `SCREEN_OFF` 后按温度/充电/电量/交互等条件选级，再通过 ContentProvider 启动该 WorkManager 任务。相册在这条链里是**被调用方/回写目标**。
3. **主要分析能力**（均已确认入口类）：
   - OCR（小米 OCR SDK / libmiocr；国际版另有 `miQnnOCR` / `baiduOCR` 分支）
   - 场景/标签/卡片（小米 VideoAnalytics SDK）
   - 人脸检测 + 人脸聚类（`com.xiaomi.facecluster`）
   - 宠物检测/聚类（SenseTime `com.tetras.pet`，模型 `senseTime_petModel`）
   - 画质 IQA（质量分 8 项指标 + 相似聚类）
   - IAA 美学评分、AI 裁剪（CROP）、主体分割/抠图（MACE）
   - CLIP 图像/文本向量（CLIP SDK；按 SoC 走 SNPE / MTK Neuron / ONNX Runtime）
   - 地址解析、时间标签/节日、视频 CLIP 向量与时间标签
4. **结果主存储**在 aicr 自己：Room 库 `admin_index.db`、`vector_database.db`、Lucene 索引目录；**只发现人脸/宠物聚类结果回写相册**（`SUB_DATA` 的 `method_face_write_back` / `method_pet_write_back`），OCR/标签/质量结果留在 aicr 库中。
5. **可强制触发的点**存在，但大多受签名权限/同 UID 限制：导出 Activity（`AiSearchSettingActivity`、`AISearchProgressActivity`）可由用户点击启动；`OpenCapabilityProvider.register` 需签名级权限；内部 provider `provider.SearchDataBaseProvider` 为 `exported=false`，ADB shell 普通权限无法直接 call（root/同 UID 才行）。
6. 标记 **「无法验证」共 8 条**，见第 8 节。

---

## 1. 样本结构与反编译产物

### 1.1 zip 内容

`unzip -l` 只有 1 个文件：

```
154440491  2026-10-31 23:16   base.apk
```

即**单个 APK**（不是 split APK 集合，也不带 so 之外的独立文件）。解压到 `_分析/apk/base.apk`。

### 1.2 base.apk 结构（已确认）

- `classes.dex` + `classes2.dex` … `classes10.dex`，共 10 个 dex，约 70 MB dex。
- `lib/arm64-v8a/` 24 个 so，只有 arm64-v8a。
- `assets/` 约 24 MB，包含 WPS SDK（`wps_lib/classes*.dex`、`wps_jni/libkwopdf.so`）、`thirdpartyaction/*`、`nlp/`、`onehot/`、`mlkit_barcode_models/` 等。
- `AndroidManifest.xml`：`package="com.xiaomi.aicr"`，`versionCode=2030030414`，`versionName=3.4.14`，应用名 `Xiaomi HyperAI Engine`（`res/values/strings.xml:213`）。

关键 so（`apktool_out/lib/arm64-v8a/`）：

| so | 用途/线索 |
|---|---|
| `libmiocr.so` | 小米 OCR；导出 `Java_com_xiaomi_ocr_sdk_1ocr_OCREngine_native*`；内含 `neuron_adapter*` 字样（MTK Neuron 加速） |
| `libsegment.so` | 主体分割/深度；导出 `Java_com_xiaomi_aicr_segment_SegmentUtil_*`（`Init_SubjectSegment_V2`、`SegmentMainFunc`、`depth_SegmentMainFunc` 等） |
| `libmaskrefiner.so` / `libsubjectSeg.so` / `libpersoncatdogcar_segmenter.so` | MACE 推理（字符串 `MACEVER-v1.0.2-187-g9d6155b`、`MACEVER-v1.1.0-55-gd006cf5`、`MACE`） |
| `libmiaimatting_v2.so` | 抠图调度；字符串引用 `maskrefiner.so`、`subjectSeg.so`、`matting_v2.so` |
| `libtensorflowlite.so` / `libbarhopper_v3.so` | TFLite 运行时 + Google ML Kit 条码（从 `Java_com_google_android_libraries_barhopper_*` 与 TFLite 字符串推断；与相册分析无直接关系） |
| `libsqlcipher.so` | SQLCipher（`ContextDataBase` 使用） |
| `libvis.so` | 含 OpenCV 字符串（推断为 OCR/视觉插件底层） |
| `libaivs_jni.so`、`libxmd.so`、`libMiMainColor.so` | 音频编码、XMD 通道、MIUI 调色板（非相册分析） |

### 1.3 jadx 结果与完整性（重要）

按故障卡要求检查了 jadx 假成功：

- jadx 处理 **17271** 个类，最终 `ERROR - finished with errors, count: 342`。
- 另有 2 个 zip entry 读取失败：`assets/wps_lib/classes.dex`、`assets/wps_lib/classes2.dex`（WPS SDK，与相册链路无关）。
- **不是 0**，所以不能宣称“完整反编译”。不过本报告引用的关键类（`GalleryOperation`、`GallerySearchAccess`、`AISearchOperation`、`AISearchDataTask`、`SearchDataBaseProvider`、`RunningStatus`、`GalleryMigrate`、各 Manager、各 provider）均存在且有完整方法体；涉及结论均来自这些已成功反编译的类。342 个失败的类/方法未逐一列出（jadx 未输出清单），如后续要审计其它模块需用 baksmali 补看。

产物：

- `_分析/apktool_out/`：Manifest、资源、`lib/`（`apktool d -s`）。用于真名资源与 Manifest。
- `_分析/jadx_out/sources/`：Java 反编译（`--no-res --no-imports --no-debug-info`）。
- `_分析/jadx.log`：jadx 日志。

---

## 2. 它是怎么被触发的

### 2.1 组件与进程（已确认，`apktool_out/AndroidManifest.xml`）

| 组件 | 进程 | exported / 权限 | 作用 |
|---|---|---|---|
| `com.xiaomi.aicr.access.AiCrCoreService` | `:coreService` | true，action `com.xiaomi.aicr.access.AICR_ENGINE` | 插件/模型下载 Binder 服务 |
| `com.xiaomi.aicr.access.AiCrCognitionService` | `:cognitionService` | true，action `...AICR_CONGNITION_ENGINE` | 认知框架前台服务（进程保活 + 插件） |
| `com.xiaomi.aicr.searchpro.service.AiCrSearchDataBaseService` | `:searchDataService` | true，action `com.xiaomi.aicr.searchpro.AICR_SEARCHDATABASE_ENGINE` | 前台服务；`onBind` 返回 null，仅起保活作用（`AiCrSearchDataBaseService.java`） |
| `com.xiaomi.aicr.llm.LLMService` | `:llmBaseService` | true | LLM 服务（不在本报告范围） |
| `com.xiaomi.aicr.receiver.AICRReceiver` | `:cognitionService` | true | BOOT_COMPLETED / MY_PACKAGE_REPLACED / CTA / MODEM 事件 |
| `com.xiaomi.aicr.aisearch.receiver.AISearchStaticReceiver` | `:searchDataService` | true | `PACKAGE_DATA_CLEARED`，同步录音/短信/笔记数据 |
| `com.xiaomi.aicr.provider.OpenCapabilityProvider` | `:cognitionService` | true，`com.xiaomi.aicr.permission.OPEN_CAPABILITY_INTERFACE`（signatureOrSystem） | 对外能力总线（注册能力、CTA、LLM 等） |
| `provider.SearchDataBaseProvider` | `:searchDataService` | **false** | AI Search 内部总线（进度、启动、迁移） |
| `provider.ClipAlgoProvider` / `BertAlgoProvider` / `GlobalModelProvider` | 各自进程 | **false** | 向 aicr 内部进程提供 Binder（CLIP/BERT/全局模型） |
| `com.xiaomi.aicr.aisearch.AISearchUIProvider` | `:searchDataService_ui` | **false** | 设置/进度 UI 与算法服务之间的状态通道 |
| `com.xiaomi.aicr.aisearch.AiSearchSettingActivity` | `:searchDataService_ui` | **true**（无权限声明） | AI 搜索设置页（含“立即分析/暂停”按钮） |
| `com.xiaomi.aicr.aisearch.progress.AISearchProgressActivity` | `:searchDataService_ui` | **true**（无权限声明） | 分析进度弹层；extra `destroy` 可关闭 |
| `com.xiaomi.aicr.searchpro.worker.AISearchDataTask` 的宿主 `SearchRemoteWorkerService` | `:searchDataService` | 由 WorkManager multiprocess 使用 | 实际分析 Worker |

Manifest 证据：`AndroidManifest.xml:280-300`（服务/接收器）、`:340/362/597-602`（Provider）。

### 2.2 开关与能力号

- 能力号 **5001 = AI Search**（`Constants.CRS_INTELLIGENT_NLS = 5001`，`Constants.java:64`）。
- 是否允许运行受三层控制：
  1. **系统能力注册**：系统侧通过 `OpenCapabilityProvider.call("register", ...)` 注册/监听 5001（`OpenCapabilityProvider.java` 的 `listenCapability`/`initCognitionManager`）。
  2. **CTA 隐私开关**：`CommonPermissionUtils.checkCTASwitch(5001)`（`CenterConsole.startAISearch`、`AISearchDataTask.doRemoteWork`、`VectorAnalysisTasks.statusCheck` 都检查）。
  3. **云端屏蔽位**：`AISearchSwitch.getBlockedScope()` 读取 `filesDir/ai_search_config_all/search_blocked_scope`，若等于 31 则 `startAISearch` 直接返回“功能已被屏蔽”（`AISearchSwitch.java:31+`、`CenterConsole.java:72`）。

### 2.3 被动主链路：息屏 → WorkManager → 分析

已确认调用链（每条都有代码）：

1. 能力开启时，`CognitionMainController.setSceneMessage(...5001...)` 或 `startSceneAlgorithm(5001)` 调用 `AISearchUtils.startAISearch`（`CognitionMainController.java:332, 907`）。
2. `AISearchUtils.startAISearch` 反射调用 `CenterConsole.startAISearch`（`AISearchUtils.java:5-9`）。
3. `CenterConsole.startAISearch`：
   - 检查 `checkCTASwitch(5001)` 和 `getBlockedScope() != 31`；
   - `RunningLevelMonitor.INSTANCE.registerHandler()` 注册 `SCREEN_ON/SCREEN_OFF` 接收器；
   - 取消旧的 `start_first_task/start_daily_task/search_data_charging/search_data_no_charging`；
   - 注册换机广播接收器（`CenterConsole.java:67-91`）。
4. 息屏回调：`RunningLevelMonitor.onScreenOffTryStartAlgo()` → `getCanStartLevel()`（优先 7，否则 1→2→3）→ `startAlgo(level)`（`RunningLevelMonitor.java:307-324, 186-220, 275-300`）。
5. `startAlgo` 通过 `ContentResolver.acquireUnstableContentProviderClient(provider.SearchDataBaseProvider)` 调用：
   ```
   call("method_algo_analyse_start", "test", phoneStatus)
   phoneStatus.putInt("state", state)
   ```
   （`RunningLevelMonitor.java:277-284`）
6. `SearchDataBaseProvider.call("method_algo_analyse_start")` 读取 `extras.getInt("state")`，在 `ProgressMonitor.getRunState()==0` 时：
   ```
   AISearchOperation.startChargingWork(AISearchDataTask.class, 1, state, runningGapTime)
   ```
   （`SearchDataBaseProvider.java:186-193`）
7. `AISearchOperation.startChargingWork` 只接受 `1 <= level < 5`，用 `RemoteWorkManager.enqueueUniqueWork("search_data_charging", REPLACE, OneTimeWorkRequest(AISearchDataTask))` 入队（`AISearchOperation.java:823-840`）。
8. `AISearchDataTask.doRemoteWork` 在 `:searchDataService` 执行：
   - 若已有 runStatus>0 或相册/算法正在跑 → 直接 success；
   - `runningStatus.checkCanStart(level)`：温度、充电状态、电量、亮屏/交互、换机状态、当日运行次数（`StatusBean.canStart`，`RunningStatus.java:263-278`）；
   - CTA 开关；下载模型；同步笔记/录音/短信/文件数据；
   - 然后进入相册分支（见 2.4）。
   （`AISearchDataTask.java:165-300`）

### 2.4 相册分支：谁真正做分析

`AISearchDataTask.doRemoteWork` 中（`AISearchDataTask.java:206-240`）：

```
if (getScope() != 1 && !GalleryMigrate.isSupport()) {
    int r = GallerySearchAccess.startGalleryAlgo(getLevel());
    if (r != 0) {  // 相册接手建库
        runningStatus.setRunningStatus(r);
    } else {       // 相册无需建库/版本不支持
        InnerSearchAccess.startInnerAlgo(8, level, phoneStatus)
    }
} else if (globalMTK || (GalleryMigrate.isSupport() && getScope()==1)) {
    InnerSearchAccess.startInnerAlgo(scope, level, phoneStatus)
}
```

- `GalleryMigrate.isSupport()` 读取相册 APK 的 meta-data **`com.miui.gallery.useCoreAlgo`**（`GalleryMigrate.java:1131-1141`）。代码分支上，true 时 aicr 走“迁移/导入”路线（`migrateGalleryDb` 从相册 `method_queryData` 拉结果，方向已确认）；false 时 aicr 先 `startGalleryAlgo` 请相册建库。**“相册自身能提供 Core 算法结果”是对该字段含义的推断**，字段语义在相册侧，本 APK 只能看到读取逻辑。
- `InnerSearchAccess.startInnerAlgo` 又通过 `provider.SearchDataBaseProvider` 的 `method_algo_analyse_do_work` 回到 `AISearchOperation.startWork`（`InnerSearchAccess.java:570-601`、`SearchDataBaseProvider.java:345-357`）。
- `AISearchOperation.doWork(scope=1)`：
  - 非向量（倒排/标签/OCR 等）且 `GalleryMigrate.isSupport()` 时：
    ```
    if (runStatus==7 || runStatus==4) migrateGalleryDb();
    GallerySearchAccess.startGalleryAlgo(runStatus);
    GalleryOperation.calculate(false, workId);
    ```
    （`AISearchOperation.java:443-455`）
  - 向量分支且 scope==1、`isSupport()` 时调用 `GalleryOperation.calculate(true, workId)`（`AISearchOperation.java:421-425`）。
- 也就是说存在三种执行形态：
  1. **相册自己算**：`startGalleryAlgo` 返回非 0，aicr 只监控进度（老相册）。
  2. **aicr 导入相册已有结果**：`GalleryMigrate.migrateGalleryDb()` 用 `method_queryData` 分页拉 OCR/TAG/FACE/QUALITY/CLIP（新相册 `useCoreAlgo=true`）。
  3. **aicr 自己算**：`GalleryOperation.calculate` 直接读 MediaStore 图片并跑各算法（上面 `isSupport && scope==1` 分支里还会同时通知相册，属“边算边同步”形态）。

### 2.5 其它触发路径

| 路径 | 证据 | 说明 |
|---|---|---|
| 用户点“立即分析/暂停” | `AiSearchSettingActivity.java:298-318` → `AISearchUIViewModel.operateAlgoState` (`:735`) → `AISearchUIProvider.call("method_change_algo_state")` (`:406`) → `SearchDataBaseProvider` `method_algo_analyse_UNLIMITED` / `method_algo_analyse_stop` (`SearchDataBaseProvider.java:160-183, 332-337`) → `AISearchOperation.unlimitedStart/unlimitedStop` (`:860-889`) | `unlimitedStart` 会先 `startGalleryAlgo(4)`，若相册不接受再 `startChargingWork(...,4)` |
| 进度弹层 | `AISearchProgressActivity.java:78-90, 816-820` | 可显示进度；`destroy` extra 关闭；状态 0 时弹“开始分析”对话框 |
| 充电/息屏闲时 | `PhoneStateMonitor.checkOtherConditions` → `WorkManagerController.enqueueOneTimeWork(VectorAnalysisTasks, "start_first_task")`（`PhoneStateMonitor.java:101`） | 该 Worker 建的是“文本/文件倒排索引 + 向量”，完成后向相册发广播 `com.miui.gallery.action.REQUEST_START_ALGORITHM`（`VectorAnalysisTasks.java:488-499`）。**但 `PhoneStateMonitor.registerListeners` 在本 APK 内未找到调用点**（见 8.5） |
| 开机 | `AICRReceiver.onReceive BOOT_COMPLETED/MY_PACKAGE_REPLACED` → `startForegroundService(AiCrCognitionService)`（`AICRReceiver.java`） | 只拉起认知服务，不直接开始相册分析 |
| 相册主动发起 | 未发现相册 → aicr 的启动广播/服务调用；相册相关调用都是 aicr → 相册或 aicr 内部 provider | 见第 4、8 节 |

---

## 3. 它分析什么：能力、入口类、模型/引擎

### 3.1 能力总表（均以 `GalleryOperation.batchPic` / `traversalPicClip` 为汇合点）

| 能力 | 入口类#方法 | 模型/引擎 | 关键证据 | 结果字段/表 |
|---|---|---|---|---|
| OCR | `OcrUserManager#getOcrResult(Bitmap,GalleryEntity)`；`OcrManager#doOCRRecognize` | 小米 OCR SDK `com.xiaomi.ocr.sdk_ocr.OCREngine` + `libmiocr.so`；国际版代码含 `miQnnOCR`/`baiduOCR` 分支；模型名 `ocr_model`/`ocr` | `OcrManager.java:144` `System.loadLibrary("miocr")`；`OcrManager.java:41` 内 `CPU_OCR="ocr_model"`、`BAIDU_OCR="baiduOCR"`、`MI_QNN_OCR="miQnnOCR"`；`GalleryOperation.java:294-299` | `GalleryEntity.content`；`gallery_ocr` 表；Lucene 实时索引 |
| 场景/标签 | `TagManager#analyticImage` | 小米 VideoAnalytics SDK `com.xiaomi.player.videoAnalytic`；`loadModelSo("tag")`；模型目录 `/app_libs` | `TagManager.java:47` `classifyImageByOri`；`:120-128` `FunctionFlag.VIDEO_LABELING/VIDEO_PERSON_COUNT/VIDEO_HEAT_MAP/VIDEO_INDOOR_OUTDOOR/VIDEO_SHOT_TYPE` | `GalleryScene`（tag/confidence/bbox/pointPosition/uniqueId）；`scene_tag` 表；`cardType` |
| 人脸检测+聚类 | `FaceManager#analyticImage` / `#analyticCluster` | 小米 `com.xiaomi.facecluster.FaceCluster`；`loadModelSo("face")`；模型包 `face` | `FaceManager.java:243` `loadModelSo(FACE)`；`:75` `analyticCluster`；`GalleryOperation.java:349-376` | 人脸状态；聚类结果通过 `SUB_DATA method_face_write_back` 回写相册 |
| 宠物 | `PetManager#analyzeImage` / `#analyzeCluster` | SenseTime `com.tetras.pet`；模型 `senseTime_petModel`；模型文件 `Vega_Album_Detect_Animal_Gray.model`、`Vega_Album_Align_AnimalFace.model`、`Vega_Album_Feature_AnimalBody.model`、`Vega_Album_Feature_AnimalFace.model`、`Vega_Album_Classify_IQA.model` | `PetManager.java:621-640`；`GalleryOperation.java:308-353, 506` | `petState`；聚类结果通过 `SUB_DATA method_pet_write_back` 回写相册 |
| 画质 IQA | `QualityManager#getQualityScore` → `QualityScoreAlgorithm#getBaseQualityScore` → `QualityScoreJNI#nativeGetImageIqa` | 原生 JNI（`com.miui.gallery.assistant.jni.score.QualityScoreJNI`），模型名 `quality` | `QualityManager.java:287-304, 331`；`QualityScoreAlgorithm.java:47-59` | `gallery_quality`：`score`、`iqaExpo/Satu/Bala/Haze/Nois/Blur/ComP/Nima`、`iqaBlurType`、`resultFlag` |
| 相似图聚类 | `QualityManager#qualityCluster` → `ClusterAlgorithm#extractFeature/getClusterResult` → `SimilarImgClusterJNI` | 原生 JNI（`com.miui.gallery.assistant.jni.cluster.SimilarImgClusterJNI`，阈值 0.4/0.25） | `QualityManager.java:340-380`；`ClusterAlgorithm.java` | `gallery_quality.clusterFeature/clusterGroupId` |
| IAA 美学 | `QualityManager#getIAAScore` → `AestheticModel#infer` | `AestheticModel`，`modelName="IAA"`，原生 `infer(byte[],w,h,3)` | `QualityManager.java:266-272, 317-325`；`AestheticModel.java:8,46-58` | `gallery_quality.iaaScore` |
| AI 裁剪 | `QualityManager#getAiCropBox` → `AiCropModel#crop` | `AiCropModel`，`modelName="CROP"`；原生 `crop(...)`/`initModel` | `QualityManager.java:257-264, 307-315`；`AiCropModel.java:8,35,106-108` | `gallery_quality.cropBbox_1_1/2_1/2_3/4_3`、`focusBbox`、`contextBbox` |
| CLIP 向量 | `ClipUserManager#doVisionFeaturePic/doVisionFeatureVideo` → `ClipManager` → Binder `ClipAlgoImpl` → `ClipModelPlugin` | `com.mi.ailab.vision.clipsdk.ClipImpl`；按 SoC：高通 `libSNPE.so`+DLC/DSP、MTK `neuron_runtime`+`libVideoRetrieval.so`、MTK2 `neuron_runtime.6`+`libonnxruntime.so`、小米 `libVideoRetrieval.so` | `ClipModelPlugin.java:33-137`；`ClipUserManager.java:116-180` | `GalleryVector`（`vector_database.db`）+ Lucene 向量索引；`clipState` |
| 地址/位置 | `GalleryMigrate#getAddress`、`GallerySearchAccess#getGalleryLocation/reloadGalleryLocationDbAndDict` | 相册的地址字段 + `com.xiaomi.location.analyzer.LocationAnalyzerFactory` 词典 | `GalleryMigrate.java:90-160`；`GallerySearchAccess.java:878-1105` | `gallery` 表的 `formatLocation/detailLocation/admin/...`；`gallery_location_word` |
| 时间/节日/季节 | `LuceneQueryUtils.parseDateTag`；`GalleryTimeTagIndexEntity` | 自研时间词/NLU（`com.xiaomi.aicr.aisearch.algo.NLU`） | `GalleryOperation.java:194-204, 886-899` | `gallery_time_tag` / `gallery_time_tag_index` |
| 视频 | `GalleryOperation#traversalVideo`、`#clipVideo` | 高端机（deviceType=1）跑 CLIP 视频帧；中低端只跑时间标签 | `GalleryOperation.java:2312-2375, 877-913` | 视频 CLIP 向量/时间标签 |
| 分割/抠图（相关但不一定在相册链路） | `SegmentPlugin`/`VisionPlugIn` | MACE（`libmaskrefiner`/`libsubjectSeg`/`libpersoncatdogcar_segmenter`）+ `libsegment` | `SegmentPlugin.java`、`VisionPlugIn.java`；so 字符串 | 供编辑/其他能力使用；相册侧主要由 `AiCropModel` 使用 CROP 模型 |

> 另有 `libtensorflowlite.so`/`libbarhopper_v3.so`（ML Kit 条码）、`libaivs_jni.so`（音频编码）、`libxmd.so`（通道）等，与相册分析无直接关系，列出以免误判。

### 3.2 逐文件分析状态机（`GalleryOperation`，已确认）

1. **取图**：`DataUtils.getDocumentsForMigrate` 查 MediaStore（`external` 文件表 / Images / Video），条件 `_data NOT LIKE '%/.%'`，projection `_id, datetaken, _display_name, _size, _data, mime_type, date_modified`（`DataUtils.java:640-680`、`DataCollection.java:18-21`）。
2. **入库**：`GalleryUtils.getPictures/getAllPictures/getVideo` 把 MediaStore 行转成 `GalleryEntity`，`ManagerDao.insertGallery` 每 100 条写一次（`GalleryUtils.java:338-442, 560-651`）。
3. **状态位**：每个 `GalleryEntity` 有 `tagState/faceState/clipState/ocrState/qualityState/cardState/petState/iaaState/cropState`。约定：
   - `0` = 未处理；
   - `1` = 完成（人脸：迁移写入或聚类写回成功都会写 `1`；OCR 等部分能力写模型版本号，`>0` 视为完成）；
   - `-1` = 失败/待重试（宠物连续失败另有 `-2`）；
   - `10` = 跳过/不适用（非法图、截图、尺寸异常等）；
   - **设备分支**：`deviceType != 1` 时 `GalleryOperation.batchPic` 直接写 `petState = iaaState = cropState = -1`，不调用对应算法（`GalleryOperation.java` 的 `deviceType == 1` 分支）；
   - **`face_state = 1` 的两条来源**：`GalleryMigrate.getFace()` 迁移写入（`GalleryMigrate.java:387`）、聚类写回成功（`FaceManager.java:110`）。
   - 写回卡点的完整证据见 [相册分析进度停滞-分析.md](../LSPosed模块合集/_分析/相册分析进度停滞-分析.md)。
4. **跳过规则**（`GalleryUtils.isValidImage`、`GalleryOperation.batchPic`）：
   - MIME 不在 `image/jpeg,png,x-ms-bmp,webp,vnd.wap.wbmp,heif,heic` → 全部 state=10；非可裁剪类型 → `cropState=10`（`GalleryUtils.java:119-150`）。
   - 宽或高 ≤5、或 >10000 → 全部 state=10（`GalleryOperation.java:208-233`）。
   - `isValidAnalyticScene`：宽高 >200 且宽高比在 0.2~5 之间，否则 faceState=10（`GalleryOperation.java:238-240, 2944-2950`）。
   - 路径含 `DCIM/Screenshots` → tag/face/card/pet/quality/iaa/crop 全 10（截图不参与，`GalleryOperation.java:243-252`）。
   - 宠物：`dataSize<=50` → petState=10；连续失败 1 次后 petState=-2（`GalleryOperation.java:532-541`）。
   - 国际版（`miuix.os.Build.IS_INTERNATIONAL_BUILD`）某些分支跳过人脸（`faceState=-1`）。
5. **批处理**：每 5 张一组（`STEP_SIZE=5`），每 100 条写一次 `gallery`，人脸每 200 条聚类一次，画质每 100 条分组一次（`GalleryOperation.java:1992-2070`）。
6. **单图顺序**（`batchPic`）：Exif 时间/旋转 → 采样解码（普通图目标约 1080×1920 / 207 万像素，长图按 600 万像素；`GalleryOperation.java:253-268`）→ OCR → 宠物 → 人脸 → 标签/场景/卡片 → 画质/IAA/裁剪 → 写回 entity 与批量表（`GalleryOperation.java:294-741`）。
7. **停止条件**：每 5 秒检查 `RunningStatus.getNeedStop()`（温度/电量/交互/换机等），命中即中断并上报（`GalleryOperation.java:2009-2018, 2147-2158`）。

### 3.3 标签/卡片映射

`GalleryOperation.node2Entity` 把 `com.xiaomi.player.videoAnalytic.FaceAndTagNode` 转为 `GalleryScene`：
- `tagNode[]` → `GalleryScene(tag, confidence, bbox(heatmap_points), pointPosition(face_points), uniqueId=longId_index, frame=-1)`；
- 若 `cardType<1`，用 `CardImageExtraction.normalizeCardTypeId(tag)` 判断是否卡片场景（证件/票据等），命中则 `IdleTimeDM.startDocumentDM` 做文档理解；
- 直方图：`getParentTagId` 补父标签；`GalleryUtil.parseFlags` 补位置/方向等 flag。
（`GalleryOperation.java:1593-1738`）

---

## 4. 与相册的数据交换协议

> 方向定义：**aicr → 相册** 是 aicr 调用相册的 ContentProvider；**相册 → aicr** 是相册回调 aicr 的内部 provider。
> aicr 在 Manifest 中声明了相册侧权限：`com.miui.gallery.permission.SEARCH`、`com.miui.gallery.permission.READ_GALLERY_DATA`、`com.xiaomi.gallery.permission.CLOUD`（`AndroidManifest.xml:219-224`），与下面调用相对应。

### 4.1 aicr → 相册：Authority / 方法 / Bundle

#### A. `content://com.miui.gallery.open_helper.authority`（相册 open_helper）

| 方法 | 入参 Bundle | 返回/说明 | 证据 |
|---|---|---|---|
| `method_algo_analyse_start` | `"state"`(int) + `RunningStatus.getPhoneStatus()` 全量字段；arg=`"test"` | 返回 `"state"`(int)：非 0=相册接手分析；0=相册不需要/不支持 | `GallerySearchAccess.java:1146-1160`；`AISearchDataTask.java:210-229`；`GallerySearchAccess` 常量 `METHOD_START` |
| `method_algo_analyse_finish` | `RunningStatus.getPhoneStatus()`（无 state） | 返回 `"state"`(int) | `GallerySearchAccess.java:1162-1174` |
| `method_algo_analyse_update` | null | 返回 Bundle，至少含 `"analyse_progress"` | `GallerySearchAccess.java:1009-1016`；`GalleryProgressMonitor.java:170-172` |
| `method_get_unlabeled_count` | null | `"video"`(int)、`"image"`(int) | `GallerySearchAccess.java:572-588` |
| `method_get_ocr_result_by_path` | `"key_common_paths"`(StringArrayList)；arg=调用包名 | `"result_ocr"`(HashMap<String,String>，path→文本) | `DataUtils.java:1167-1200` |

`method_get_unlabeled_count` 的用途：>100 个视频或 >500 张图片时，认为需要建库；`checkAllowSendAiSearchNotification` 用 `getUnableCountBeyondLimit(100,500)`（`GallerySearchAccess.java:1018-1020`、`AISearchOperation.java:718-737`）。

#### B. `content://com.miui.gallery.search`

| 方法 | 入参 | 返回/说明 | 证据 |
|---|---|---|---|
| `method_query` | Bundle：`"data"`(String JSON) + 可选 `"timeout"`；JSON 字段 `client, body, nlubody, domain, query_id, session_id, timeout` | `"results"`(JSON String)，每项含 `mimeType, galleryMediaID, suggestionIconUrl, score...` | `GallerySearchAccess.java:415-435, 482-511` |
| `method_init` | null | `"resultCode"`(int) | `GallerySearchAccess.java:1022-1036` |
| `method_release` | null | 无 | `GallerySearchAccess.java:711-725` |
| `method_notify_progress_complete` | null | 无（告知相册分析全部完成） | `GalleryUtils.java:653-661`；`AISearchOperation.java:646-650` |
| `method_notifyForAlgorithmData` | arg=`"com.xiaomi.aicr"`，空 Bundle | 无（告知相册算法数据有更新） | `AISearchOperation.java:180-187` |
| `method_notifyStartId` | `"tagStartId"`(int)、`"mediaFeatureStartId"`(int)；arg=包名 | 无（迁移完成后告知相册起点 id） | `GalleryMigrate.java:1204-1215` |

`method_query` 结果在 aicr 侧 `formatGalleryResult` 中会读取 `results` JSON，并给 `extras` 补 `OCR` 字段（仅对 `com.microsoft.appmanager` / `com.microsoft.pda.evaluation` 调用 `getOcr`，`GallerySearchAccess.java:1219-1221`）。

#### C. `content://com.miui.gallery.provider.READ_GALLERY` 及其子路径

| 形式 | 参数/字段 | 返回 | 证据 |
|---|---|---|---|
| `query(.../address)` | `query_start_rowIndex`、`query_limit`；projection `_id, localFile, address, exifGPSLatitude, exifGPSLongitude, thumbnailFile` | 地址/经纬度/缩略图 | `GalleryMigrate.java:90-160`；`GallerySearchAccess.java:878-1005` |
| `query(.../face_cluster)` | 无 | `cluster_center` 等 | `FaceManager.java:270-300`；`GalleryUtils.READ_GALLERY_FACE_CLUSTER` |
| `query(.../pet_feature)` | projection `mediaPath, feature, _id, originGroupId, petExtras` | 宠物特征 | `PetManager.java:581`；`GalleryUtils.READ_GALLERY_PET_CLUSTER` |
| `query(.../query_datetime)` | 无 | 时间 | `GalleryUtils.READ_GALLERY_TIME` |
| `query(.../people_pet_path)` / `query(.../queryFaceData)` / `query(.../queryImageData)` | 人脸名/关系/簇、groupId→图片路径 | 搜索时读取相册人脸数据 | `GalleryOperation.java:101-103, 1028-1052, 1191-1196` |
| `query(.../document)` | projection `mediaId, sceneTag, mediaPath` | 相册已有标签（`GallerySearchAccess#getAllDocumentTag`） | `GallerySearchAccess.java:858-873` |
| `call("method_query_face_executed")` | null | `"face_executed"`(boolean) | `GalleryUtils.java:663-679` |
| `call("method_queryData")` | `"table_type"`(int)、`"limit_count"`(int)、`"startRowId"`(long) | 按类型不同：OCR/TAG 返回 `"queryResult"`(JSON String)；CLIP/FACE/QUALITY 返回 `"queryResult"`(Bundle[]) | `GalleryMigrate.java:212-235, 362-386, 484-536, 632-663, 773-826` |
| `call("method_queryDateCount")` | `"table_type"`(int) | `"data_count"`(int)、`"max_row_id"`(long) | `GalleryMigrate.java:290-302` |
| `call("method_releaseQueryData")` | null | 无 | `GalleryMigrate.java:955` |

**`table_type` 取值**（`GalleryMigrate.java:23-27`）：

| 值 | 含义 |
|---|---|
| 0 | OCR |
| 1 | TAG（场景标签） |
| 2 | CLIP（向量） |
| 3 | FACE |
| 4 | QUALITY（画质/媒体特征） |

**`method_queryData` 各类型字段**：
- OCR：`path`, `result`, `resultRowIndex`
- TAG：`path`, `sceneTag`, `confidence`, `resultFlag`, `startTime`, `endTime`, `leftTopX/Y`, `rightBottomX/Y`, `pointPosition`, `resultRowIndex`
- CLIP：`path`, `resultRowIndex` + 向量数据（由 `LuceneGalleryIndex.migrateGalleryVector` 解析，见 `GalleryMigrate.java:251`）
- FACE：`path`, `resultRowIndex`（只用于标记状态）
- QUALITY：`path`, `version`, `score`, `iqaExpo/Satu/Bala/Haze/Nois/Blur/ComP/Nima`, `iqaBlueType`, `resultFlag`, `clusterFeature`, `mediaCalculationType`, `clusterGroupId`, `resultRowIndex`

#### D. `content://com.miui.gallery.provider.SUB_DATA`（回写相册）

| 方法 | 入参 Bundle | 返回 | 证据 |
|---|---|---|---|
| `method_face_write_back` | `"pfd"`(ParcelFileDescriptor，聚类二进制), `"paths"`(StringArrayList) | `"write_success_path_list"`(StringArrayList), `"write_fail_reason"`(String), `"invalid_paths"`(StringArrayList) | `FaceManager.java:98-153` |
| `method_pet_write_back` | `"writeBackFlag"`=2, `"featurePfd"`(PFD), `"stockInfoPfd"`(PFD)；arg=包名 | `"write_success_path_list"`(StringArrayList) | `PetManager.java:422-463` |

#### E. 广播

| Action | 方向 | 证据 |
|---|---|---|
| `com.miui.gallery.action.REQUEST_START_ALGORITHM`（`setPackage("com.miui.gallery")`） | aicr → 相册 | `VectorAnalysisTasks.java:492-499` |

### 4.2 `state` 各取值含义（aicr 侧定义，已确认）

`RunningStatus` 常量（`RunningStatus.java:21-34`）：

| 值 | 名称 | 含义（按命名/使用推断） |
|---|---|---|
| `0` | `RUNNING_LEVEL_STOP` | 停止/不分析 |
| `1` | `RUNNING_LEVEL_VECTOR` | 向量索引（CLIP）档 |
| `2` | `RUNNING_LEVEL_INVERT` | 倒排索引（标签/OCR）档 |
| `3` | `RUNNING_LEVEL_LITE` | 轻量档 |
| `4` | `RUNNING_LEVEL_UNLIMITED` | 主动/无限制档（用户点“立即分析”走这里） |
| `5` | `RUNNING_LEVEL_OVERLOAD` | 系统重载档（不启动） |
| `6` | `RUNNING_LEVEL_OVERLOAD_WAIT_RECOVER` | 重载等待恢复档 |
| `7` | `RUNNING_LEVEL_MIGRATE` | 相册数据迁移档 |
| `-2` | `RUNNING_LEVEL_OVER_TAMP` | 超温档 |

`startGalleryAlgo(state)` 只是把值原样放进 `"state"` 传给相册（`GallerySearchAccess.java:1148-1151`）；`method_algo_analyse_start` 的**返回值**也是同语义的 state（相册决定它实际以哪档接手）。`startChargingWork` 只接受 `1..4`，5/6/7 不会直接入队（`AISearchOperation.java:827-833`）。

### 4.3 随 `start` 一起发送的 `getPhoneStatus()` 字段

`RunningStatus.getPhoneStatus()`（`RunningStatus.java:462-473`）：

| key | 类型 | 来源/含义 |
|---|---|---|
| `temperature` | int | 温度（`getTemperature`，优先传感器节点） |
| `charging` | int | 充电状态 |
| `power` | int | 电量 |
| `duration` | int | 固定 30 |
| `interactive` | int | 是否亮屏/交互 |
| `huanji` | int | 换机状态（0 未换机/1 换机中） |
| `gap` | int | 固定 15 |
| `night` | int | 是否夜间（1/0） |
| `count` | int | 当日已运行次数 |

### 4.4 相册 → aicr：`provider.SearchDataBaseProvider`（`exported=false`）

`SearchDataBaseProvider.call` 处理的与相册/搜索相关的方法（`SearchDataBaseProvider.java:62-366`）：

| 方法 | 入参 | 行为 | 证据 |
|---|---|---|---|
| `method_set_progress` | `"analyse_progress"`(int), `"analyse_status"`(int), `"time"`(int), `"pid"`(int) | 相册回报进度；status==0 结束时按运行档位继续 `startChargingWork(AISearchDataTask, scope=8, level, 0)`；status>0 且 `needStop` 时安排 15 分钟后续跑/停止相册算法 | `:94-152` |
| `method_algo_analyse_start` | `"state"`(int) + 手机状态 | `ProgressMonitor.getRunState()==0` 时 `startChargingWork(AISearchDataTask, 1, state, gap)` | `:186-195` |
| `method_algo_analyse_do_work` | `"scope"`, `"level"`, `"work_id"` | `runningStatus>0` 时 `AISearchOperation.startWork(scope, work_id)`；返回 `"state"` | `:344-358` |
| `method_algo_get_progress` | `"scope"`, `"register_ui_listener"`, `"use_cache"`, `"only_runState"` | 返回进度 Bundle（`analyse_status/analyse_progress/global_analyse_progress/...`） | `:237-279` |
| `method_algo_analyse_UNLIMITED` | `"scope"`(int) | 检查温度/重载后 `unlimitedStart(scope)` | `:159-184` |
| `method_algo_analyse_stop` | `"scope"`(int) | `unlimitedStop(scope)` | `:331-337` |
| `method_algo_analyse_finish` / `method_algo_analyse_update` | 任意 | **空实现**（`method.equals` 结果未使用，直接 return） | `:303-306, 327-330` |
| `method_start_gallery_migrate` | 无（SDK≥33） | `GalleryMigrate.migrateGalleryDb()` | `:313-317` |
| `method_runQuality` | Bundle（`GalleryOperation.traversalPic` 的入参） | `GalleryOperation.traversalPic(bundle)` | `:318-322` |
| `method_updatePeopleInfo` | Bundle | `GalleryOperation.updateFaceNameForGallery(bundle)` | `:339-343` |
| `method_update_location` | 无 | `GalleryMigrate.getAddress(false)` | `:359-363` |
| `download_finish_algo/search/config/context/schedule` | 无 | 模型下载完成回调（刷新配置/初始化 OCR license 等） | `:82-92, 196-200, 222-236` |

> **重要限制**：`AndroidManifest.xml:598` 明确 `provider.SearchDataBaseProvider` 为 `android:exported="false"`。因此它不能由 `com.miui.gallery` 跨应用直接调用；上面的“相册 → aicr”语义来自日志与参数命名（`method_set_progress` 日志“gallery ------> status”），实际调用方可能是 aicr 内部另一进程/系统 uid。相册跨应用调用的真实传输层**无法从本 APK 验证**（见 8.1/8.2）。

### 4.5 相册迁移协议（`GalleryMigrate`，已确认）

`migrateGalleryDb()`（`GalleryMigrate.java:1144-1225`）顺序：

1. `getTime()` → `getAddress(false)`；
2. `getOcr()`（table_type=0）；
3. `getTag()`（1）；
4. `getFace()`（3）；
5. `getMediaFeature()`（4）；
6. 仅 `deviceType==1` 时 `getClip()`（2）；
7. 全部成功 → `setMigrated(true)` → `content://com.miui.gallery.search` `method_notifyStartId(tagStartId, mediaFeatureStartId)`；
8. `GalleryOperation.updateSuggestQueries(false, 0)`。

`isMigrated()` 还接受：
- `persist.sys.gallerySearch.migrateDebug`=true（调试强制）；
- 相册 SharedPreferences `galleryStatus/isMigrate`；
- `Settings.Global` 的 `aicr.gallery.migrate.status == 1`；
- `isSupport()` 且相册没有 OCR/TAG 数据时直接标记已迁移（`GalleryMigrate.java:913-942`）。

---

## 5. 结果落在哪

### 5.1 aicr 自己的库（主存储）

| 存储 | 内容 | 证据 |
|---|---|---|
| Room `admin_index.db`（version 18） | `gallery`、`gallery_scene`、`scene_tag`、`gallery_quality`、`gallery_ocr`、`gallery_time_tag`、`gallery_time_tag_index`、`suggest_query`、`gallery_location_word`、`gallery_errors`、`gallery_synonym_word` 等 | `ManagerDataBase.java:7, 108`（建表 SQL 直接可见） |
| Room `vector_database.db` | `gallery_vector`（`GalleryVector` 向量） | `VectorDatabase.java`；`GalleryOperation.traversalPicClip` 调 `VectorDatabase.getInstance().vectorDao().insertEmbedding(arrayList2)`（`GalleryOperation.java:2270`） |
| Lucene 索引 | `filesDir/lucene_index/1`（倒排）、`1_vector_0001` 等（向量） | `LuceneGalleryIndex.java:207, 2845`；`ClipAlgoImpl.checkStatus` 检查 `lucene_index/1` |
| `filesDir/galleryThreshold.bin` | 相册阈值向量（float，按固定维度分组；国内分支维度为 1024） | `GalleryUtils.java:467-526, 681-726` |
| SharedPreferences `RunningStatusPrefs` | `runningStatus/runningStartTime/cacheProgress/notification_algo_status/last_initiative_stop_timestamp_key` | `RunningStatus.java:93-102` |
| SharedPreferences `galleryStatus` | 迁移偏移量 `ocrOffset/tagOffset/faceOffset/clipOffset/qualityOffset/address_start_id`、`isMigrate` | `GalleryMigrate.java:9-58` |
| `ContextDataBase`（SQLCipher；库名由运行时拼接，迁移日志中出现 `context-privacy-tee.db`） | 隐私/关系/日历/OCR 关系（`relationship`, `privacy_information` 等） | `ContextDataBase.java:118-126` |
| `ocr_cache.db` | OCR 关系缓存 | `OcrDataBase.java` |

### 5.2 回写相册

- **人脸聚类**：`FaceManager.analyticCluster` 把人脸聚类二进制写 PFD，调 `SUB_DATA method_face_write_back`，按返回的 `write_success_path_list` 更新 aicr 的 `faceState`；失败/非法路径更新为 -1（`FaceManager.java:75-160`）。本机写回卡在路径大小写不匹配，详见 [相册分析进度停滞-分析.md](../LSPosed模块合集/_分析/相册分析进度停滞-分析.md)。
- **宠物聚类**：`PetManager` 把 `featurePfd`/`stockInfoPfd` 传给 `SUB_DATA method_pet_write_back`，再按 `write_success_path_list` 更新 `petState`（`PetManager.java:413-490`）。
- **进度完成/数据更新通知**：`method_notify_progress_complete` 与 `method_notifyForAlgorithmData`（见 4.1.B）。
- **OCR/TAG/QUALITY**：未发现 aicr 主动回写相册的 provider 调用；它们保存在 aicr 库，并通过 aicr 的搜索/语义接口对外。相册如何读取这些结果**无法从本 APK 验证**（见 8.8）。

---

## 6. 能不能手动/强制触发，有没有开关

### 6.1 开关控制（已确认）

| 开关 | 位置/条件 | 证据 |
|---|---|---|
| 系统能力 5001 | 系统侧 `OpenCapabilityProvider.register` / CTA | `OpenCapabilityProvider.java` 的 `register`/`listenCapability`；`CognitionMainController.java:332, 907` |
| CTA 隐私开关 | `CommonPermissionUtils.checkCTASwitch(5001)` | `CenterConsole.java:68`；`AISearchDataTask.java:197`；`VectorAnalysisTasks.java:512` |
| 云端屏蔽位 | `ai_search_config_all/search_blocked_scope == 31` → 拒绝启动 | `AISearchSwitch.java:31-53`；`CenterConsole.java:72` |
| 用户 UI 开关 | `AiSearchSettingActivity` 的 `switchGlobalSearch` / `mbtAnalyze` | `AiSearchSettingActivity.java:407-455, 318` |
| 迁移开关 | 相册 meta-data `com.miui.gallery.useCoreAlgo`；`Settings.Global aicr.gallery.migrate.status`；debug 属性 | `GalleryMigrate.java:1131-1141, 913-942, 904-911` |
| 设备/模型门槛 | `SearchDevicesUtils.getDeviceType()`（按 `Build.SOC_MODEL`/`Build.DEVICE` 分 1/2/4/8）；模型下载完成 | `SearchDevicesUtils.java:31-76`；各 Manager 的 `isModelReady` |

### 6.2 可手动触发的入口

| 方式 | 可行性 | 说明 |
|---|---|---|
| `am start -n com.xiaomi.aicr/com.xiaomi.aicr.aisearch.AiSearchSettingActivity` | **可以**（Activity exported=true，无权限） | 页面出现后需用户点按钮；按钮 → `method_change_algo_state(is_run_algo=true)` → `unlimitedStart(4)` |
| `am start -n com.xiaomi.aicr/com.xiaomi.aicr.aisearch.progress.AISearchProgressActivity` | **可以**（exported=true） | 可看进度；状态 0 时弹“开始分析”对话框；`--ez destroy true` 关闭 |
| `am start-foreground-service -n com.xiaomi.aicr/.searchpro.service.AiCrSearchDataBaseService` | **可以**，但只保活，不启动分析 | `onStartCommand` 只 `startForeground` |
| `am start-foreground-service -n com.xiaomi.aicr/.access.AiCrCognitionService` | **可以**，启动认知服务 | 不直接启动相册分析 |
| `content call --uri content://provider.SearchDataBaseProvider --method method_algo_analyse_start --extra state:i:1` | **普通 shell 不行**（exported=false）；root/同 UID 可行 | 内部总线 |
| `content call ... method_algo_analyse_do_work --extra scope:i:1 --extra level:i:1 --extra work_id:s:x` | 同上，root/同 UID | 直接进 `AISearchOperation.startWork` |
| `content call ... method_start_gallery_migrate` | 同上 | 触发 `GalleryMigrate.migrateGalleryDb` |
| `content call content://com.xiaomi.aicr.provider.OpenCapabilityProvider --method register --extra Capability:i:5001 ...` | **需签名级权限** `com.xiaomi.aicr.permission.OPEN_CAPABILITY_INTERFACE` | 仅系统/同签应用 |
| 息屏（电源键/`input keyevent 26`） | 条件满足时触发被动分析 | `RunningLevelMonitor` 的 `SCREEN_OFF` 接收器；需能力已开启且 CTA 已同意 |
| 广播 `com.xiaomi.aicr.hmind.ACTION_DO_WORK_TEST` | **无法验证/不可用**：Manifest 声明了，但 `AICRReceiver.onReceive` 的 switch 未处理该 action | 见 8.6 |

> 注意：`AiSearchSettingActivity`/`AISearchProgressActivity` 虽 exported 且无权限，但只能拉起 UI；真正开始分析仍需用户点击，或依赖已注册的能力/CTA。

---

## 7. Native（so）边界说明

### 7.1 哪些核心逻辑在 so 里

> 本机没有 `strings` 命令，so 线索用 `rg -a -o` 等价提取（命令模式见 §10）。

| 逻辑 | so | 能确认的线索 | 无法确认 |
|---|---|---|---|
| OCR 推理 | `libmiocr.so` | JNI 符号 `Java_com_xiaomi_ocr_sdk_1ocr_OCREngine_nativeInit/nativeOCRBitmap/nativeOCRRecognizeBitmap/...`；字符串含 `neuron_adapter.so`、`neuronusdk_adapter.mtk.so` | 具体模型结构、后处理阈值 |
| 主体分割/深度 | `libsegment.so` | JNI 符号 `Java_com_xiaomi_aicr_segment_SegmentUtil_Init_1SubjectSegment_1V2`、`SegmentMainFunc_1V2`、`depth_1SegmentMainFunc` 等 | 模型文件不在 base.apk |
| AI 裁剪/抠图/人车宠物分割 | `libmaskrefiner.so`、`libsubjectSeg.so`、`libpersoncatdogcar_segmenter.so`、`libmiaimatting_v2.so` | MACE 版本字符串与 `MACE` 符号；`libmiaimatting` 引用 `maskrefiner.so`/`subjectSeg.so` | 模型权重、输入预处理 |
| 画质 IQA | 由 `QualityScoreJNI` 等 JNI 类调用；`loadLibrary` 在 jadx 产物中未出现在这些类里 | `QualityScoreJNI#nativeGetImageIqa`、`SimilarImgClusterJNI#nativeGetFeature/nativeClusterImgs` | 实际 so 名（推断由 `loadModelSo("quality")` 下载包加载） |
| 人脸 | `com.xiaomi.facecluster`（下载模型 so） | `LoadSoUtils.loadModelSo("face")`；`FaceCluster` 类 | 模型/算子细节 |
| 标签 | `com.xiaomi.player.videoAnalytic`（下载模型 so） | `loadModelSo("tag")`；`/app_libs` 模型路径 | 模型/算子细节 |
| 宠物 | SenseTime（下载模型 so） | `loadModelSo("senseTime_petModel")`；`/models/Vega_*.model` | 模型/算子细节 |
| CLIP | 下载的 CLIP 模型包（非 base.apk 内置） | `ClipModelPlugin#loadClipSo` 按 SoC 加载 SNPE/Neuron/ONNX + `libVideoRetrieval.so`/`libClipSDK.so`；`com.mi.ailab.vision.clipsdk.ClipImpl` | 模型文件、量化参数 |
| 条码 | `libbarhopper_v3.so` + `libtensorflowlite.so` | `Java_com_google_android_libraries_barhopper_BarhopperV3_*` | 与相册分析无关 |

### 7.2 推断的模型/引擎（基于字符串与加载逻辑）

- **MACE**：`libmaskrefiner.so`、`libsubjectSeg.so`、`libpersoncatdogcar_segmenter.so` 均含 `MACEVER-*` 与 `MACE` 错误字符串 → 分割/裁剪/抠图使用小米自研 MACE 推理引擎。
- **高通 SNPE**：`ClipModelPlugin` 在高通 SoC 上加载 `libSNPE.so`、`libSnpeHtpCalculatorStub.so`、`libclip.so`、`libClipSDK.so`，并使用 `/dlc`、`/dsp`。
- **MTK Neuron**：MTK 上 `System.loadLibrary("neuron_runtime")`/`"neuron_runtime.6"`；`libmiocr` 内含 `neuron_adapter*.so` 字符串。
- **ONNX Runtime**：MTK2 分支加载 `libonnxruntime.so`。
- **TFLite**：`libtensorflowlite.so` + barhopper（ML Kit 条码），不是相册主分析。
- **自研/第三方 SDK**：小米 OCR SDK、小米 VideoAnalytics（标签）、小米 FaceCluster、SenseTime 宠物 SDK、`com.mi.ailab.vision.clipsdk`（CLIP）。

---

## 8. 无法验证清单（共 8 条）

1. **相册 `WriteDataHelper.queryDataFromMiAI(32, state)` / `AlgorithmDataReadProgressManager.getTagDataFromMIAIActively` 在 aicr 侧走哪个端点。** 在 aicr 的 dex 字符串与 jadx 源码中均未找到这些类名/方法名；`provider.SearchDataBaseProvider` 的 `query()` 返回 null，且其 `call()` 没有“按 32/state 取标签数据”的方法。**无法验证**。
2. **`provider.SearchDataBaseProvider` 的跨应用可达性。** Manifest 明确 `android:exported="false"`，但代码参数/日志呈现“相册回报进度”的语义。相册实际如何调用（同 UID、系统进程代理、或其他未披露通道）**无法验证**。
3. **`state` 在相册内部各取值的语义。** aicr 只定义了 `RUNNING_LEVEL_*` 并原样传递；相册如何把 1/2/3/4/7 映射到质量/OCR/CLIP/人脸/标签算法**无法验证**。
4. **下载模型包内的实际 .so/.model 文件名、版本、量化/阈值参数。** base.apk 只有模型名（`face`、`tag`、`quality`、`ocr`、`clip`/`aiSearchModel`、`senseTime_petModel`、`IAA`、`CROP`）和加载逻辑；模型运行时下载，具体二进制不在样本内。**无法验证**。
5. **`PhoneStateMonitor.registerListeners` 的调用点 / `start_first_task`(VectorAnalysisTasks) 被动触发是否生效。** 全源码搜索只找到 `unregisterListeners` 被 `CenterConsole.stopAISearch` 调用，未找到 `registerListeners` 的调用点；因此这条“充电+息屏→文本/文件索引”的路径是否仍启用**无法验证**（代码本身存在）。
6. **`com.xiaomi.aicr.hmind.ACTION_DO_WORK_TEST` 是否可触发分析。** Manifest `:304` 在 `AICRReceiver` 的 intent-filter 中声明了该 action，但 `AICRReceiver.onReceive` 的 `switch(action)` 没有对应分支（默认 return）；是否有其他组件处理**无法验证**。
7. **相册 `AiCoreSupportHelper.isAiCoreSupportQualityAlgo/OCRAlgo/ClipAlgo/FaceAlgo/TagAlgo` 与 aicr `GALLERY_SUPPORT_*` 位掩码的对应关系。** aicr 定义了 `GALLERY_SUPPORT_TAG=2, OCR=4, CLIP=8, FACE=16, QUALITY=32, PET=64, IAA_CROP=128`（`GlobalConstants.java`），但本 APK 内没有引用这些常量的代码；它们很可能是给相册/共享 SDK 用的协议位，对应关系**无法验证**。
8. **OCR/标签/质量结果在相册侧的读取方式。** aicr 只发现人脸/宠物回写相册；OCR/TAG/QUALITY 保存在 aicr 库。`method_notifyForAlgorithmData` 是“让相册来读 aicr 数据”还是“仅刷新 UI”，以及相册通过什么 provider 读取，相册实现不在样本中，**无法验证**。

---

## 9. 关键证据索引（类#方法 → 文件:行）

| 结论 | 证据 |
|---|---|
| 相册 start/finish/update/provider | `GallerySearchAccess#startGalleryAlgo` `jadx_out/sources/com/xiaomi/aicr/aisearch/core/GallerySearchAccess.java:1146`；`#stopGalleryAlgo` `:1162`；`#getGalleryProgress` `:1009`；`#getUnlabeledCount` `:572`；URI 常量 `:28-29` |
| state 常量 | `RunningStatus` `jadx_out/sources/com/xiaomi/aicr/searchpro/monitor/RunningStatus.java:21-34` |
| 手机状态 Bundle | `RunningStatus#getPhoneStatus` `RunningStatus.java:462-473` |
| 息屏触发 | `RunningLevelMonitor#onScreenOffTryStartAlgo` `RunningLevelMonitor.java:307`；`#startAlgo` `:275`；`#getCanStartLevel` `:186` |
| WorkManager 入队 | `AISearchOperation#startChargingWork` `AISearchOperation.java:823-840`；`#startWork` `:855`；`#unlimitedStart` `:860` |
| 任务主逻辑 | `AISearchDataTask#doRemoteWork` `AISearchDataTask.java:165-300` |
| 相册分支 | `AISearchOperation#doWork` `AISearchOperation.java:383-465`（scope=1 分支 `:443-455`） |
| 内部 provider | `SearchDataBaseProvider#call` `SearchDataBaseProvider.java:62-366`（set_progress `:94`，start `:186`，do_work `:345`） |
| 迁移 | `GalleryMigrate#migrateGalleryDb` `GalleryMigrate.java:1144`；`#isSupport` `:1131`；`#isMigrated` `:913`；`#getClip/#getFace/#getMediaFeature/#getOcr/#getTag` `:167/:310/:440/:586/:715` |
| 单图分析 | `GalleryOperation#batchPic` `GalleryOperation.java:144-741`；`#calculate` `:756`；`#traversalPic` `:1943`；`#traversalPicClip` `:2241`；`#clipVideo` `:877`；`#node2Entity` `:1593` |
| 扫描/状态/跳过 | `GalleryUtils#isValidImage` `GalleryUtils.java:119-150`；`GalleryOperation#isValidAnalyticScene` `GalleryOperation.java:2944`；截图跳过 `:243-252` |
| OCR | `OcrManager.java:144`；`OcrUserManager.java`；`GalleryOperation.java:294-299` |
| CLIP | `ClipModelPlugin#loadClipSo` `ClipModelPlugin.java:33-137`；`ClipUserManager#doVisionFeaturePic` `ClipUserManager.java:116`；`ClipAlgoImpl#extractVisionFeaturePicByPath` `:284` |
| 人脸 | `FaceManager#analyticImage` `FaceManager.java:164`；`#analyticCluster` `:75`；`#checkInit` `:234` |
| 标签 | `TagManager#analyticImage` `TagManager.java:36`；`#checkInit` `:95` |
| 宠物 | `PetManager#initModel` `PetManager.java:621`；`#analyzeCluster` `:413+` |
| 质量/IAA/裁剪 | `QualityManager#getQualityScore` `QualityManager.java:287`；`#getIAAScore` `:266`；`#getAiCropBox` `:257`；`#initModel` `:327`；`AestheticModel.java:8`；`AiCropModel.java:8` |
| 设备分档 | `SearchDevicesUtils#getDeviceType` `SearchDevicesUtils.java:31-76` |
| DB | `ManagerDataBase.java:7,108`；`VectorDatabase.java`；`LuceneGalleryIndex.java:207,2845` |
| 设置/进度 UI | `AiSearchSettingActivity.java:298-318`；`AISearchProgressActivity.java:78-90`；`AISearchUIViewModel#operateAlgoState` `AISearchUIViewModel.java:735`；`AISearchUIProvider#call` `AISearchUIProvider.java:370-430` |
| 能力开启 | `CenterConsole#startAISearch` `CenterConsole.java:67-91`；`CognitionMainController#setSceneMessage` `CognitionMainController.java:896-908`；`AISearchUtils#startAISearch` `AISearchUtils.java:5-9` |
| 广播 | `VectorAnalysisTasks#doRemoteWork` `VectorAnalysisTasks.java:434-501`（广播 `:492-499`） |
| 开机 | `AICRReceiver#onReceive` `AICRReceiver.java`（BOOT_COMPLETED → `AiCrCognitionService`） |
| Manifest | `apktool_out/AndroidManifest.xml:280-300,340,362,597-602,609` |

---

## 10. 复现命令

```bash
# 1) 解压样本（在自建工作区，不在 zip 所在目录）
mkdir -p "D:/下载/Claude Code/杂项/AI引擎分析/_分析/apk"
cd "D:/下载/Claude Code/杂项/AI引擎分析/_分析/apk"
unzip -o "D:/下载/LocalSend/小米澎湃AI引擎-com.xiaomi.aicr-3.4.14.zip"

# 2) 资源/Manifest（apktool，-s 跳过 smali）
"D:/tools/jdk-17.0.2/bin/java" -jar "D:/tools/apktool.jar" d -s -f -o apktool_out apk/base.apk

# 3) Java 反编译（JDK17；注意有 342 个方法级错误）
"D:/tools/jdk-17.0.2/bin/java" -Xmx8g -cp "D:/tools/jadx/lib/jadx-1.5.6-all.jar" \
  jadx.cli.JadxCLI -d jadx_out --no-res --no-imports --no-debug-info apk/base.apk

# 4) 校验 jadx 完整性
grep -a "finished with errors" jadx.log | tail -1

# 5) so 字符串/符号线索（本机无 strings，用 rg -a 等价）
cd apktool_out/lib/arm64-v8a
rg -a -o 'Java_[A-Za-z0-9_]+' libmiocr.so libsegment.so | sort -u
rg -a -o 'MACEVER[^\x00]{0,40}' libmaskrefiner.so libsubjectSeg.so libpersoncatdogcar_segmenter.so
rg -a -o 'neuron_adapter[^\x00]{0,30}|SNPE[^\x00]{0,30}|onnxruntime[^\x00]{0,30}' libmiocr.so libClipSDK.so 2>/dev/null
```

> 复现时请保持 `_分析/` 在 `.gitignore` 中；不要移动/删除源 zip。
