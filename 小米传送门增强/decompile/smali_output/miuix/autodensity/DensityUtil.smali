.class public Lmiuix/autodensity/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sIsSupportSwitchResolution:Z

.field private static sLock:Ljava/lang/Object;

.field private static sResourcesImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 39
    const-class v0, Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    .line 48
    :try_start_3
    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 49
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 50
    const-string v2, "mResourceImpls"

    invoke-static {v0, v1, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 51
    sget-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    sput-object v1, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_23

    .line 55
    :catch_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_37

    .line 57
    :try_start_2a
    sget-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v2, "mLock"

    invoke-static {v0, v1, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_37

    .line 59
    :catch_35
    sput-object v3, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 62
    :cond_37
    :goto_37
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v1, "AutoDensity"

    if-eqz v0, :cond_45

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v0, :cond_45

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v0, :cond_4a

    .line 63
    :cond_45
    const-string v0, "ResourcesManager reflection failed, this app do not have permission to disable AutoDensity for activity/application"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_4a
    :try_start_4a
    const-string v0, "miui.util.FeatureParser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    const-string v2, "getIntArray"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "screen_resolution_supported"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 70
    invoke-static {v0, v3, v2, v4, v5}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_82

    .line 72
    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_82

    .line 73
    sput-boolean v2, Lmiuix/autodensity/DensityUtil;->sIsSupportSwitchResolution:Z
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6d

    goto :goto_82

    :catchall_6d
    move-exception v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DensityUtil init screen_resolution_supported Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method

.method private static changeDensity(Landroid/content/res/Resources;ILandroid/view/Display;)V
    .registers 5

    .line 222
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object p2

    if-eqz p2, :cond_22

    if-gtz p1, :cond_16

    .line 225
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p2, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-eq v0, v1, :cond_22

    .line 226
    :cond_16
    invoke-static {p2, p0, p1}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    .line 227
    invoke-static {}, Lmiuix/autodensity/AutoDensityConfig;->shouldUpdateSystemResource()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 228
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    :cond_22
    return-void
.end method

.method public static doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V
    .registers 9

    .line 234
    invoke-static {p1, p0}, Lmiuix/autodensity/DensityUtil;->tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V

    .line 237
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 240
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lmiuix/view/DisplayConfig;->density:F

    div-float/2addr v2, v4

    if-lez p2, :cond_1f

    int-to-float v5, p2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1f

    int-to-float v1, v1

    mul-float/2addr v5, v4

    div-float v3, v1, v5

    .line 244
    :cond_1f
    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-float/2addr v4, v3

    .line 245
    iput v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 246
    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 247
    iget p0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput p0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after doChangeDensity baseWidthDp:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ratio:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public static findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;
    .registers 2

    .line 185
    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_24

    .line 186
    check-cast p0, Landroid/view/ContextThemeWrapper;

    .line 187
    :goto_6
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_24

    .line 188
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/AutoDensityContextWrapper;

    if-eqz v0, :cond_1d

    .line 189
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lmiuix/autodensity/AutoDensityContextWrapper;

    return-object p0

    .line 191
    :cond_1d
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/view/ContextThemeWrapper;

    goto :goto_6

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;
    .registers 22

    move-object/from16 v0, p0

    .line 290
    const-string v1, "findOrCreateResourcesImplForKeyLocked failed "

    const-class v2, Landroid/content/res/ResourcesKey;

    const/4 v3, 0x0

    .line 291
    :try_start_7
    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    .line 292
    const-string v4, "mOverrideConfiguration"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 293
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v5, v6, :cond_27

    invoke-virtual {v9, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_27

    return-object v3

    :catch_21
    move-exception v0

    goto/16 :goto_de

    :catch_24
    move-exception v0

    goto/16 :goto_f5

    .line 297
    :cond_27
    invoke-virtual {v9, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    move-object/from16 v4, p1

    .line 299
    iget v4, v4, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 301
    const-string v4, "mDisplayId"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 302
    const-string v4, "mLibDirs"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Ljava/lang/String;

    .line 303
    const-string v4, "mCompatInfo"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/content/res/CompatibilityInfo;

    const/16 v4, 0x1e

    if-gt v5, v4, :cond_5c

    .line 308
    const-string v4, "mOverlayDirs"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :goto_5a
    move-object v6, v4

    goto :goto_65

    .line 310
    :cond_5c
    const-string v4, "mOverlayPaths"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_5a

    :goto_65
    const/16 v4, 0x1d

    if-gt v5, v4, :cond_8a

    .line 313
    const-class v11, Ljava/lang/String;

    const-class v12, [Ljava/lang/String;

    const-class v13, [Ljava/lang/String;

    const-class v14, [Ljava/lang/String;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v16, Landroid/content/res/Configuration;

    const-class v17, Landroid/content/res/CompatibilityInfo;

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Class;

    move-result-object v11

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 325
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 313
    invoke-static {v2, v11, v0}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesKey;

    goto :goto_b5

    .line 327
    :cond_8a
    const-string v4, "mLoaders"

    invoke-static {v2, v0, v4}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Landroid/content/res/loader/ResourcesLoader;

    .line 328
    const-class v12, Ljava/lang/String;

    const-class v13, [Ljava/lang/String;

    const-class v14, [Ljava/lang/String;

    const-class v15, [Ljava/lang/String;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v17, Landroid/content/res/Configuration;

    const-class v18, Landroid/content/res/CompatibilityInfo;

    const-class v19, [Landroid/content/res/loader/ResourcesLoader;

    filled-new-array/range {v12 .. v19}, [Ljava/lang/Class;

    move-result-object v12

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 341
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {v2, v12, v0}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 343
    :goto_b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 344
    const-class v4, Landroid/app/ResourcesManager;

    sget-object v5, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v6, "findOrCreateResourcesImplForKeyLocked"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v6, v2, v0}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_dd} :catch_24
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_dd} :catch_21

    return-object v0

    .line 349
    :goto_de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    goto :goto_10b

    .line 347
    :goto_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_10b
    return-object v3
.end method

.method private static findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 5

    .line 277
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x0

    if-ge v1, v0, :cond_28

    .line 279
    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1a

    .line 280
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    :cond_1a
    if-ne p0, v2, :cond_25

    .line 282
    sget-object p0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ResourcesKey;

    return-object p0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-object v2
.end method

.method public static getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 3

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 393
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    .line 398
    :catch_b
    :cond_b
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 2

    .line 404
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getNoDensityOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .registers 1

    .line 198
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 200
    invoke-virtual {p0}, Lmiuix/autodensity/AutoDensityContextWrapper;->getNoOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSynergyOwnerDevice(Landroid/view/Display;)Ljava/lang/String;
    .registers 4

    .line 446
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    .line 447
    const-string v0, ""

    if-nez p0, :cond_9

    return-object v0

    .line 450
    :cond_9
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 454
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSupportSwitchResolution()Z
    .registers 1

    .line 387
    sget-boolean v0, Lmiuix/autodensity/DensityUtil;->sIsSupportSwitchResolution:Z

    return v0
.end method

.method public static restoreDefaultDensity(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 82
    const-string p0, "AutoDensity"

    const-string v1, "restoreDefaultDensity context should not null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 85
    :cond_b
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    .line 86
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v1}, Lmiuix/autodensity/DensityUtil;->restoreDensity(Landroid/content/res/Resources;Landroid/view/Display;)Z

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method private static restoreDensity(Landroid/content/res/Resources;Landroid/view/Display;)Z
    .registers 5

    .line 209
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 212
    iget v2, p1, Lmiuix/view/DisplayConfig;->density:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_21

    .line 213
    const-string v0, "restoreDensity success"

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 214
    invoke-static {p1, p0, v1}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method

.method private static setDefaultBitmapDensity(I)V
    .registers 6

    .line 368
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    const-string v1, "setDefaultDensity"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultBitmapDensity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_44

    :catch_2b
    move-exception p0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflect exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public static setSystemResources(Lmiuix/view/DisplayConfig;)V
    .registers 5

    .line 355
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 356
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 357
    iget v2, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 358
    iget v2, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 359
    iget v2, p0, Lmiuix/view/DisplayConfig;->density:F

    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 360
    iget v2, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 361
    iget v2, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-static {v2}, Lmiuix/autodensity/DensityUtil;->setDefaultBitmapDensity(I)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemResources "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " defaultBitmapDensity:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldProcessDensity(Landroid/content/Context;Landroid/view/Display;)Z
    .registers 5

    .line 413
    invoke-static {p0, p1}, Lmiuix/os/DeviceHelper;->isCarWithScreen(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 414
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 415
    const-string p0, "shouldProcessDensity isCarWithScreen"

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_12
    return v1

    .line 420
    :cond_13
    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isXiaomiSynergy(Landroid/content/Context;)Z

    move-result p0

    .line 421
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessDensity isSynergy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_31
    const/4 v0, 0x1

    if-eqz p0, :cond_5f

    .line 425
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getSynergyOwnerDevice(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0

    .line 426
    const-string v2, "Windows"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_60

    .line 429
    :cond_41
    const-string v2, "AndroidPad"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 431
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p0

    if-le p0, v0, :cond_5f

    goto :goto_60

    .line 434
    :cond_50
    const-string v2, "AndroidPadCar"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 436
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v0

    :goto_60
    return v1
.end method

.method public static shouldUpdateDensityForConfig(Landroid/content/res/Configuration;Landroid/view/Display;)Z
    .registers 3

    .line 165
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 166
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget p1, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V
    .registers 7

    .line 255
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    if-eqz v0, :cond_7d

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7d

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v0, :cond_d

    goto :goto_7d

    .line 259
    :cond_d
    :try_start_d
    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_64

    .line 260
    :try_start_e
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-static {v1, p0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    .line 261
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    if-eqz v1, :cond_60

    .line 264
    invoke-static {v1, p1}, Lmiuix/autodensity/DensityUtil;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 266
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "setImpl"

    const-class v3, Landroid/content/res/ResourcesImpl;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, p0, v2, v3, v4}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set impl success "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    goto :goto_60

    :catchall_5e
    move-exception p0

    goto :goto_62

    .line 270
    :cond_60
    :goto_60
    monitor-exit v0

    goto :goto_7d

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_e .. :try_end_63} :catchall_5e

    :try_start_63
    throw p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_64

    :catch_64
    move-exception p0

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryToCreateAndSetResourcesImpl failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;)V
    .registers 10

    if-nez p0, :cond_a

    .line 94
    const-string p0, "AutoDensity"

    const-string v0, "updateCustomDensity context should not null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_a
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCustomDensity context is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 100
    :cond_24
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 102
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_3a

    .line 103
    move-object v0, p0

    check-cast v0, Lmiuix/autodensity/IDensity;

    invoke-interface {v0}, Lmiuix/autodensity/IDensity;->getRatioUiBaseWidthDp()I

    move-result v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 106
    :goto_3b
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    .line 107
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_e2

    .line 108
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 109
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 110
    invoke-static {v2, v1}, Lmiuix/autodensity/DensityUtil;->shouldProcessDensity(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v4

    .line 111
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v5

    const-string v6, " config is "

    const-string v7, "null"

    if-eqz v5, :cond_a2

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCustomDensity -> display is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6d

    .line 113
    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_6e

    :cond_6d
    move-object v8, v7

    :goto_6e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " id:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_81

    .line 114
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_82

    :cond_81
    move-object v8, v7

    :goto_82
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " shouldProcessDensity="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " activity is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {v5}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_a2
    if-nez v4, :cond_e3

    .line 119
    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 120
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lmiuix/autodensity/DensityConfigManager;->getDeviceCurrentAccessibilityDpi(Landroid/view/Display;)I

    move-result v8

    if-ne v5, v8, :cond_e3

    .line 121
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCustomDensity -> will not changeDensity cause display is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c6

    .line 123
    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_c6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", try restore density, activity is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 126
    :cond_de
    invoke-static {v2}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    goto :goto_e3

    :cond_e2
    const/4 v4, 0x1

    :cond_e3
    :goto_e3
    if-eqz v4, :cond_ec

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;ILandroid/view/Display;)V

    :cond_ec
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;ILandroid/view/Display;)V
    .registers 4

    if-nez p0, :cond_a

    .line 148
    const-string p0, "AutoDensity"

    const-string p1, "context should not null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_a
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;ILandroid/view/Display;)V

    :cond_1b
    return-void
.end method

.method public static updateDensityForConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 5

    .line 173
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 174
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 178
    invoke-static {v0, p0, v1}, Lmiuix/autodensity/DensityUtil;->doChangeDensity(Lmiuix/view/DisplayConfig;Landroid/content/res/Resources;I)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method
