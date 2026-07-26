.class public Lmiuix/autodensity/AutoDensityConfig;
.super Lmiuix/autodensity/DensityProcessor;
.source "AutoDensityConfig.java"


# static fields
.field private static final TAG_CONFIG_CHANGE_FRAGMENT:Ljava/lang/String; = "ConfigurationChangeFragment"

.field private static sInstance:Lmiuix/autodensity/AutoDensityConfig; = null

.field private static sUpdateSystemResources:Z = true


# instance fields
.field private sCanAccessHiddenAPI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 148
    invoke-direct {p0}, Lmiuix/autodensity/DensityProcessor;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    .line 149
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->prepareInApplication(Landroid/app/Application;)V

    .line 150
    instance-of v0, p1, Lmiuix/app/Application;

    if-eqz v0, :cond_21

    .line 151
    move-object v0, p1

    check-cast v0, Lmiuix/app/Application;

    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v1, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 152
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$1;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$1;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_31

    .line 164
    :cond_21
    new-instance v0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v0, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 165
    new-instance v0, Lmiuix/autodensity/AutoDensityConfig$2;

    invoke-direct {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$2;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_31
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)Z
    .registers 1

    .line 28
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result p0

    return p0
.end method

.method private addForOnConfigurationChange(Landroid/app/Activity;)V
    .registers 4

    .line 415
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_20

    .line 417
    new-instance v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-direct {v0}, Lmiuix/autodensity/ConfigurationChangeFragment;-><init>()V

    .line 418
    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 419
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string v1, "ConfigurationChangeFragment"

    .line 420
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2c

    .line 423
    :cond_20
    check-cast v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 424
    const-string p1, "AutoDensity"

    const-string v0, "ConfigurationChangeFragment has already added"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method private changeCurrentConfig(Landroid/app/Activity;)V
    .registers 6

    .line 438
    const-class v0, Landroid/app/Activity;

    :try_start_2
    const-string v1, "mCurrentConfig"

    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 439
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    .line 440
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object v2

    .line 441
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 442
    const-string v1, "mActivityInfo"

    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 443
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_3e

    .line 444
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 445
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 447
    check-cast p1, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {p1}, Lmiuix/autodensity/ConfigurationChangeFragment;->removeDensityChangeFlag()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 451
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0, v0}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;I)Landroid/content/Context;
    .registers 3

    const/4 v0, 0x0

    .line 111
    invoke-static {p0, p1, v0}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;
    .registers 7

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 121
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    .line 122
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object v3

    if-nez v3, :cond_22

    .line 123
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 126
    :cond_22
    new-instance v3, Lmiuix/autodensity/AutoDensityContextWrapper;

    invoke-direct {v3, p0, p1}, Lmiuix/autodensity/AutoDensityContextWrapper;-><init>(Landroid/content/Context;I)V

    .line 127
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/Display;)V

    .line 128
    invoke-virtual {v3, v1}, Lmiuix/autodensity/AutoDensityContextWrapper;->setOriginConfiguration(Landroid/content/res/Configuration;)V

    .line 129
    invoke-static {v3, p2, v2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;ILandroid/view/Display;)V

    return-object v3
.end method

.method public static createAutoDensityContextWrapperWithBaseDp(Landroid/content/Context;I)Landroid/content/Context;
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0, p1}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static forceUpdateDensity(Landroid/content/Context;)V
    .registers 2

    .line 542
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-eqz v0, :cond_7

    .line 543
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;
    .registers 3

    .line 456
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "ConfigurationChangeFragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public static init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;
    .registers 2

    .line 71
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    move-result-object p0

    sput-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 74
    :cond_b
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method public static init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;
    .registers 3

    .line 78
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_d

    .line 79
    sput-boolean p1, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    .line 80
    new-instance p1, Lmiuix/autodensity/AutoDensityConfig;

    invoke-direct {p1, p0}, Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V

    sput-object p1, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 82
    :cond_d
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method private static isShouldAdaptAutoDensity(Landroid/app/Application;)Z
    .registers 2

    .line 482
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_b

    .line 483
    check-cast p0, Lmiuix/autodensity/IDensity;

    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private removeCurrentConfig(Landroid/app/Activity;)V
    .registers 5

    .line 430
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCurrentConfig"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public static setForceDeviceScale(F)V
    .registers 3

    .line 41
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceDeviceScale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 44
    :cond_2b
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUserDeviceScale(F)V

    return-void
.end method

.method public static setForcePPI(I)V
    .registers 3

    .line 53
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForcePPI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 56
    :cond_2b
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUserPPI(I)V

    return-void
.end method

.method public static setUpdateSystemRes(Z)V
    .registers 1

    .line 90
    sput-boolean p0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    if-eqz p0, :cond_1b

    .line 92
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    if-nez p0, :cond_f

    return-void

    .line 96
    :cond_f
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    goto :goto_29

    .line 98
    :cond_1b
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    if-nez p0, :cond_26

    return-void

    .line 102
    :cond_26
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    :goto_29
    return-void
.end method

.method public static setUseDeprecatedDensityLogic(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUseDeprecatedDensityLogic(Z)V

    return-void
.end method

.method public static setUseStableDensityLogic(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUseStableDensityLogic(Z)V

    return-void
.end method

.method public static shouldUpdateSystemResource()Z
    .registers 1

    .line 86
    sget-boolean v0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    return v0
.end method

.method private tryToAddActivityConfigCallback(Landroid/app/Activity;)V
    .registers 4

    .line 339
    iget-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    if-eqz v0, :cond_2a

    .line 341
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 345
    :cond_f
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$3;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$3;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Activity;)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 410
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    invoke-virtual {p1, v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2a
    return-void
.end method

.method public static updateDensity(Landroid/content/Context;)V
    .registers 5

    .line 499
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_5

    return-void

    .line 506
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 507
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_40

    .line 508
    :cond_11
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_19

    .line 509
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    goto :goto_40

    .line 510
    :cond_19
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3f

    .line 511
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 512
    :cond_20
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_3f

    .line 513
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 514
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_38

    .line 515
    move-object p0, v0

    check-cast p0, Landroid/app/Activity;

    move-object v0, v1

    move-object v1, p0

    goto :goto_40

    .line 518
    :cond_38
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_20

    .line 519
    check-cast v0, Landroid/app/Application;

    goto :goto_40

    :cond_3f
    move-object v0, v1

    :goto_40
    if-eqz v1, :cond_5a

    .line 525
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 528
    instance-of v2, v1, Lmiuix/autodensity/IDensity;

    if-eqz v2, :cond_58

    .line 529
    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_63

    :cond_58
    move v1, v0

    goto :goto_63

    :cond_5a
    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 532
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    if-eqz v0, :cond_69

    .line 535
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->forceUpdateDensity(Landroid/content/Context;)V

    goto :goto_6e

    :cond_69
    if-eqz v1, :cond_6e

    .line 537
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static updateDensityByConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 4

    .line 489
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p0, :cond_9

    return v1

    .line 495
    :cond_9
    invoke-virtual {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static updateDensityOverrideConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 4

    .line 134
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getNoDensityOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 136
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Landroid/content/Context;)V

    goto :goto_b

    :cond_a
    move-object v0, p1

    .line 140
    :goto_b
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lmiuix/autodensity/DensityUtil;->shouldUpdateDensityForConfig(Landroid/content/res/Configuration;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 142
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 143
    invoke-static {p0, p1}, Lmiuix/autodensity/DensityUtil;->updateDensityForConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    :cond_1d
    return-object p1
.end method


# virtual methods
.method public isEnableProcessInActivity(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    .line 183
    :try_start_1
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_c

    .line 184
    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0

    goto :goto_1e

    .line 185
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_1e

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    :goto_1e
    return v0
.end method

.method protected onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 328
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    .line 329
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->addForOnConfigurationChange(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRegisterDensityCallback(Ljava/lang/Object;)V
    .registers 4

    .line 549
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback obj: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public prepareInApplication(Landroid/app/Application;)V
    .registers 7

    .line 196
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 198
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "isAllowedToUseHiddenApis"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    .line 196
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    .line 204
    :catch_19
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->initAutoDensityDebugEnable()V

    .line 205
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 206
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 207
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_2c
    return-void
.end method

.method protected processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 6

    .line 257
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    const-string v0, "->processBeforeActivityConfigChanged"

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 260
    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 262
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_1f

    .line 263
    move-object v1, p1

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    const/16 v2, 0x1f

    if-eqz v1, :cond_47

    .line 266
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 271
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 272
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 273
    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p2

    if-nez p2, :cond_3b

    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 274
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 276
    :cond_3b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p2, v2, :cond_43

    .line 277
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->removeCurrentConfig(Landroid/app/Activity;)V

    goto :goto_6e

    .line 279
    :cond_43
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    goto :goto_6e

    :cond_47
    if-eqz v0, :cond_6e

    .line 283
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    move-result v0

    .line 284
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    .line 285
    invoke-virtual {p0, p1, p2, v1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    if-eqz v0, :cond_6e

    .line 287
    iget p2, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p2

    if-nez p2, :cond_63

    iget p2, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 288
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    .line 290
    :cond_63
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p2, v2, :cond_6b

    .line 291
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->removeCurrentConfig(Landroid/app/Activity;)V

    goto :goto_6e

    .line 293
    :cond_6b
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public processOnActivityCreated(Landroid/app/Activity;)V
    .registers 6

    .line 230
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    const-string v0, "->processOnActivityCreated"

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 233
    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 235
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_1f

    .line 236
    move-object v1, p1

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    if-eqz v1, :cond_3d

    .line 240
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isInRearDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 241
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    .line 242
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 241
    invoke-virtual {v2, p1, v3}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 245
    :cond_3d
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    if-eqz v1, :cond_4d

    .line 247
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    goto :goto_55

    :cond_4d
    if-eqz v0, :cond_55

    .line 250
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    .line 251
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public processOnActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->unregisterCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public processOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .registers 5

    .line 307
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "->onDisplayChanged displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 312
    :cond_32
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 314
    instance-of v1, p2, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_46

    .line 315
    move-object v1, p2

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_47

    :cond_46
    move v1, v0

    :goto_47
    if-eqz v1, :cond_50

    .line 318
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 319
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    goto :goto_58

    :cond_50
    if-eqz v0, :cond_58

    .line 321
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    .line 322
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4

    .line 213
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 214
    const-string v0, "->processOnAppConfigChanged"

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 216
    :cond_b
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 217
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 218
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 219
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 220
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V

    .line 222
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig(Landroid/view/Display;)Lmiuix/autodensity/DensityConfig;

    move-result-object p1

    .line 223
    iget p1, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_2e
    return-void
.end method

.method protected registerCallback(Landroid/app/Activity;)V
    .registers 2

    .line 334
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    .line 335
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->tryToAddActivityConfigCallback(Landroid/app/Activity;)V

    return-void
.end method

.method updateApplicationDensity(Landroid/app/Application;)V
    .registers 4

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_f

    .line 462
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 463
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_f
    return-void
.end method

.method public updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 5

    .line 469
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p2

    .line 470
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1c

    .line 471
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 473
    invoke-virtual {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    .line 476
    :cond_1c
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    return p2
.end method
