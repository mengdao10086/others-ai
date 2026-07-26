.class public Lmiuix/device/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/device/DeviceUtils$CpuStats;,
        Lmiuix/device/DeviceUtils$CpuInfo;
    }
.end annotation


# static fields
.field public static DEV_STANDARD_VERSION:I

.field private static HIGH:I

.field private static LOW:I

.field private static MIDDLE:I

.field static MIUI_LITE_ROM:Ljava/lang/Boolean;

.field static MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

.field static MIUI_LITE_VERSION:I

.field static MIUI_MIDDLE_VERSION:I

.field static final MT_PATTERN:Ljava/util/regex/Pattern;

.field static final SM_PATTERN:Ljava/util/regex/Pattern;

.field private static final STOCK_DEVICE:[Ljava/lang/String;

.field public static TYPE_CPU:I

.field public static TYPE_GPU:I

.field public static TYPE_RAM:I

.field private static UNKNOWN:I

.field private static application:Landroid/app/Application;

.field private static applicationContext:Landroid/content/Context;

.field private static initDeviceLevelInfo:Z

.field private static mCompuConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static mCompuLevel:I

.field private static mCompuPerf:Ljava/lang/Object;

.field static mCompuVersion:I

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static mCpuLevel:I

.field private static mGetCompuVersion:Ljava/lang/reflect/Method;

.field private static mGetCurrentCompuLevel:Ljava/lang/reflect/Method;

.field private static mGetDeviceLevel:Ljava/lang/reflect/Method;

.field private static mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field private static mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

.field private static mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

.field static mGpuLevel:I

.field private static mInitCompuLevel:Ljava/lang/reflect/Method;

.field private static mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static mLastVersion:I

.field static mLevel:I

.field private static mPerf:Ljava/lang/Object;

.field static mRamLevel:I

.field static mTotalRam:I

.field private static sIsPrimaryScreenOled:Ljava/lang/Boolean;

.field private static sIsSecondaryScreenOled:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;

.field private static sMultiDisplayType:I

.field private static sPerfClass:Ljava/lang/Class;

.field private static sPerfClassLoader:Ldalvik/system/PathClassLoader;

.field private static sPerfCompuClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 43

    .line 57
    const-string v1, "DeviceUtils"

    const-string v0, "Inc ([A-Z]+)([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "MT([\\d]{2})([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    .line 62
    sput-object v2, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    const/4 v0, -0x2

    .line 65
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 67
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 69
    sput-object v2, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 76
    sput v0, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 77
    sput-object v2, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    .line 79
    sput-object v2, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    .line 80
    sput-object v2, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    .line 123
    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 124
    sput v0, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 125
    sput v0, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 126
    sput v0, Lmiuix/device/DeviceUtils;->mRamLevel:I

    const v3, 0x7fffffff

    .line 128
    sput v3, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 288
    const-string v41, "angelican"

    const-string v42, "camellia"

    const-string v4, "cactus"

    const-string v5, "cereus"

    const-string v6, "pine"

    const-string v7, "olive"

    const-string v8, "ginkgo"

    const-string v9, "olivelite"

    const-string v10, "olivewood"

    const-string v11, "willow"

    const-string v12, "wayne"

    const-string v13, "dandelion"

    const-string v14, "angelica"

    const-string v15, "angelicain"

    const-string v16, "whyred"

    const-string v17, "tulip"

    const-string v18, "onc"

    const-string v19, "onclite"

    const-string v20, "lavender"

    const-string v21, "lotus"

    const-string v22, "laurus"

    const-string v23, "merlinnfc"

    const-string v24, "merlin"

    const-string v25, "lancelot"

    const-string v26, "citrus"

    const-string v27, "pomelo"

    const-string v28, "lemon"

    const-string v29, "shiva"

    const-string v30, "lime"

    const-string v31, "cannon"

    const-string v32, "curtana"

    const-string v33, "durandal"

    const-string v34, "excalibur"

    const-string v35, "joyeuse"

    const-string v36, "gram"

    const-string v37, "sunny"

    const-string v38, "mojito"

    const-string v39, "rainbow"

    const-string v40, "cattail"

    filled-new-array/range {v4 .. v42}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiuix/device/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 784
    sput-object v2, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 785
    sput-object v2, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 786
    sput-object v2, Lmiuix/device/DeviceUtils;->mCompuConstructor:Ljava/lang/reflect/Constructor;

    .line 787
    sput-object v2, Lmiuix/device/DeviceUtils;->mCompuPerf:Ljava/lang/Object;

    .line 789
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 790
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 791
    sput-object v2, Lmiuix/device/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 792
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 793
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 795
    sput-object v2, Lmiuix/device/DeviceUtils;->mInitCompuLevel:Ljava/lang/reflect/Method;

    .line 796
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetCompuVersion:Ljava/lang/reflect/Method;

    .line 797
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetCurrentCompuLevel:Ljava/lang/reflect/Method;

    .line 799
    sput v0, Lmiuix/device/DeviceUtils;->mCompuLevel:I

    .line 800
    sput v0, Lmiuix/device/DeviceUtils;->mCompuVersion:I

    const/4 v0, 0x1

    .line 805
    sput v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 806
    sput v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    const/4 v3, 0x0

    .line 808
    sput-boolean v3, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 810
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    const/4 v0, 0x2

    .line 811
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const/4 v0, 0x3

    .line 812
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 821
    :try_start_b2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_ce

    const/16 v3, 0x21

    const-string v4, "com.miui.performance.DeviceLevelUtils"

    if-le v0, v3, :cond_d0

    .line 822
    :try_start_ba
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system_ext/framework/MiuiBooster.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    .line 823
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    goto :goto_e3

    :catch_ce
    move-exception v0

    goto :goto_fc

    .line 825
    :cond_d0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/MiuiBooster.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    .line 826
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 828
    :goto_e3
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 829
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    const-string v3, "getMiuiLiteVersion"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_fb} :catch_ce

    goto :goto_110

    .line 831
    :goto_fc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static init(): Load Class Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_110
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_156

    .line 837
    :try_start_114
    const-string v3, "com.miui.performance.ComputilityLevelUtils"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->sPerfCompuClass:Ljava/lang/Class;

    .line 838
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mCompuConstructor:Ljava/lang/reflect/Constructor;

    .line 840
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfCompuClass:Ljava/lang/Class;

    const-string v3, "initComputilityLevel"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mInitCompuLevel:Ljava/lang/reflect/Method;

    .line 842
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfCompuClass:Ljava/lang/Class;

    const-string v3, "getComputilityVersion"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetCompuVersion:Ljava/lang/reflect/Method;

    .line 844
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfCompuClass:Ljava/lang/Class;

    const-string v3, "getComputilityLevel"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetCurrentCompuLevel:Ljava/lang/reflect/Method;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_140} :catch_141

    goto :goto_156

    :catch_141
    move-exception v0

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static init: ComputilityLevel Load Class Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_156
    :goto_156
    :try_start_156
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    const-string v3, "getMiuiMiddleVersion"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_160} :catch_161

    goto :goto_176

    :catch_161
    move-exception v0

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static init(): Load MiuiMiddle Class Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :goto_176
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    if-nez v0, :cond_17f

    .line 858
    const-string v0, "static init(): MiuiBooster is not in this rom"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17f
    return-void
.end method

.method private static createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;
    .registers 4

    .line 669
    new-instance v0, Lmiuix/device/DeviceUtils$CpuInfo;

    invoke-direct {v0}, Lmiuix/device/DeviceUtils$CpuInfo;-><init>()V

    .line 670
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->id:I

    .line 671
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 674
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    :cond_27
    return-object v0
.end method

.method private static decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V
    .registers 6

    .line 623
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 626
    :cond_6
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x231860

    if-lt v0, v1, :cond_23

    .line 627
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    const v1, 0x2932e0

    if-le v0, v1, :cond_1b

    const/4 v0, 0x2

    .line 628
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_2c

    :cond_1b
    if-le v0, v4, :cond_20

    .line 630
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_2c

    .line 632
    :cond_20
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_2c

    .line 634
    :cond_23
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    if-le v0, v4, :cond_2a

    .line 635
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    goto :goto_2c

    .line 637
    :cond_2a
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    :goto_2c
    return-void
.end method

.method private static doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/device/DeviceUtils$CpuStats;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;)V"
        }
    .end annotation

    .line 606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 607
    iget v1, v0, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_19

    const/4 v1, 0x0

    .line 608
    iput v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 610
    :cond_19
    iget v0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    iget v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    if-le v0, v1, :cond_21

    .line 611
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    :cond_21
    const v1, 0x1e8480

    if-lt v0, v1, :cond_2d

    .line 614
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    goto :goto_4

    .line 616
    :cond_2d
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    goto :goto_4

    .line 619
    :cond_34
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V

    return-void
.end method

.method private static getAppContext()Landroid/content/Context;
    .registers 5

    .line 956
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "DeviceUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_39

    .line 958
    :try_start_7
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "currentApplication"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    if-eqz v0, :cond_39

    .line 960
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception v0

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.app.ActivityThread Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_39
    :goto_39
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_6f

    .line 969
    :try_start_3d
    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInitialApplication"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    if-eqz v0, :cond_6f

    .line 971
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_59} :catch_5a

    goto :goto_6f

    :catch_5a
    move-exception v0

    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.app.AppGlobals Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_6f
    :goto_6f
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 702
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_29
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    .line 703
    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_22
    .catchall {:try_start_6 .. :try_end_10} :catchall_1d

    .line 704
    :try_start_10
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_37
    .catchall {:try_start_10 .. :try_end_14} :catchall_1b

    .line 710
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    .line 717
    :catch_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    return-object v0

    :catchall_1b
    move-exception v0

    goto :goto_2c

    :catchall_1d
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_2c

    :catch_22
    move-object p0, v0

    goto :goto_37

    :catchall_24
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_2c

    :catch_29
    move-object p0, v0

    move-object v1, p0

    goto :goto_37

    :goto_2c
    if-eqz v1, :cond_31

    .line 710
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    if-eqz p0, :cond_36

    .line 717
    :try_start_33
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    .line 722
    :catch_36
    :cond_36
    throw v0

    :catch_37
    :goto_37
    if-eqz v1, :cond_3c

    .line 710
    :try_start_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    if-eqz p0, :cond_41

    .line 717
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    return-object v0
.end method

.method private static getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V
    .registers 4

    .line 680
    const-string v0, "CPU implementer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 681
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->implementor:I

    goto :goto_2c

    .line 682
    :cond_f
    const-string v0, "CPU architecture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 683
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    goto :goto_2c

    .line 684
    :cond_1e
    const-string v0, "CPU part"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 685
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->part:I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static getCpuInfoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    :try_start_5
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_31

    const/4 v2, 0x0

    .line 645
    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 646
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 647
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    .line 648
    invoke-static {v3, v0, v2}, Lmiuix/device/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2b

    goto :goto_12

    :catchall_2b
    move-exception v2

    goto :goto_33

    .line 651
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception v1

    goto :goto_3c

    .line 643
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_31

    .line 652
    :goto_3c
    const-string v2, "DeviceUtils"

    const-string v3, "getChipSetFromCpuInfo failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return-object v0
.end method

.method private static getCpuLevel()I
    .registers 3

    .line 508
    invoke-static {}, Lmiuix/device/DeviceUtils;->getHardwareInfo()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_1d

    .line 511
    const-string v1, "Qualcomm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 512
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 514
    :cond_18
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getMtkCpuLevel(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-ne v0, v2, :cond_26

    .line 518
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;

    move-result-object v0

    iget v0, v0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    :cond_26
    return v0
.end method

.method public static getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;
    .registers 4

    .line 596
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuInfoList()Ljava/util/List;

    move-result-object v0

    .line 597
    new-instance v1, Lmiuix/device/DeviceUtils$CpuStats;

    invoke-direct {v1}, Lmiuix/device/DeviceUtils$CpuStats;-><init>()V

    .line 598
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_14

    const/4 v2, 0x0

    .line 599
    iput v2, v1, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 601
    :cond_14
    invoke-static {v1, v0}, Lmiuix/device/DeviceUtils;->doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V

    return-object v1
.end method

.method public static getDeviceLevel()I
    .registers 1

    .line 232
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevel(I)I
    .registers 3

    .line 236
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    const/4 v1, -0x1

    if-ne v0, p0, :cond_a

    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq v0, v1, :cond_a

    return v0

    .line 239
    :cond_a
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 240
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(I)I

    move-result p0

    sput p0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq p0, v1, :cond_15

    return p0

    .line 244
    :cond_15
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel1()I

    move-result p0

    return p0
.end method

.method public static getDeviceLevel(II)I
    .registers 4

    .line 248
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_e

    .line 249
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 252
    :cond_e
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    if-ne p1, v0, :cond_1b

    .line 253
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 256
    :cond_1b
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p1, v0, :cond_28

    .line 257
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mRamLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 261
    :cond_28
    invoke-static {p0, p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(II)I

    move-result v0

    if-eq v0, v1, :cond_33

    .line 263
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0

    .line 265
    :cond_33
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 266
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel1()I
    .registers 4

    .line 480
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 483
    :cond_6
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 484
    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    goto :goto_2e

    .line 486
    :cond_10
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 487
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    invoke-static {v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v1

    .line 488
    sget v2, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v3, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v2, v3}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v2

    .line 489
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getMinLevel([I)I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 491
    :goto_2e
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    return v0
.end method

.method private static getDeviceLevel1(I)I
    .registers 2

    .line 459
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p0, v0, :cond_16

    .line 460
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    move-result p0

    const/4 v0, 0x6

    if-le p0, v0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const/4 v0, 0x4

    if-le p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    if-lez p0, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 468
    :cond_16
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    if-ne p0, v0, :cond_1f

    .line 469
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuLevel()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static getDeviceLevel2(I)I
    .registers 4

    .line 734
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 738
    :cond_8
    :try_start_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 740
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 741
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_47

    :catch_23
    move-exception p0

    goto :goto_2d

    .line 743
    :cond_25
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "perf is null!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_23

    .line 746
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevel failed , e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_47
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel2(II)I
    .registers 5

    .line 759
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 763
    :cond_8
    :try_start_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 765
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 766
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4b

    :catch_27
    move-exception p0

    goto :goto_31

    .line 768
    :cond_29
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "perf is null!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_27

    .line 771
    :goto_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceLevel failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_4b
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getHardwareInfo()Ljava/lang/String;
    .registers 4

    .line 524
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_2c

    .line 525
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 526
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_c

    .line 528
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 529
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 530
    aget-object v1, v1, v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2e

    .line 534
    :try_start_28
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-object v1

    :catch_2c
    move-exception v0

    goto :goto_3d

    :catchall_2e
    move-exception v1

    goto :goto_34

    :cond_30
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_2c

    goto :goto_44

    .line 524
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_2c

    .line 535
    :goto_3d
    const-string v1, "DeviceUtils"

    const-string v2, "getChipSetFromCpuInfo failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    :goto_44
    const-string v0, ""

    return-object v0
.end method

.method private static varargs getMinLevel([I)I
    .registers 6

    .line 495
    array-length v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    .line 498
    aget v2, p0, v0

    .line 499
    array-length v3, p0

    :goto_9
    if-ge v0, v3, :cond_15

    aget v4, p0, v0

    if-le v4, v1, :cond_12

    if-ge v4, v2, :cond_12

    move v2, v4

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    return v2
.end method

.method public static getMiuiLiteVersion()I
    .registers 3

    .line 178
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 179
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    return v0

    .line 182
    :cond_a
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_55

    .line 185
    :try_start_f
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 187
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4a

    :catch_25
    move-exception v0

    goto :goto_2f

    .line 190
    :cond_27
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "perf is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_25

    .line 194
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiuiLiteVersion failed , e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_4a
    const/4 v1, 0x2

    if-lt v0, v1, :cond_50

    .line 197
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    goto :goto_53

    :cond_50
    const/4 v0, 0x1

    .line 199
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 201
    :goto_53
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    :cond_55
    return v0
.end method

.method private static getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    .line 916
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMiuiLiteVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 918
    :cond_11
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getMiuiMiddleVersion()I
    .registers 4

    .line 215
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3d

    const/4 v0, -0x1

    .line 217
    :try_start_6
    sget-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 219
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    goto :goto_3d

    :catch_1c
    move-exception v1

    goto :goto_21

    .line 221
    :cond_1e
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_1c

    goto :goto_3d

    .line 224
    :goto_21
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMiuiMiddleVersion failed , e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3d
    :goto_3d
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    return v0
.end method

.method private static getMtkCpuLevel(Ljava/lang/String;)I
    .registers 4

    .line 582
    sget-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 584
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 586
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_2b

    const/16 v1, 0x49

    if-lt p0, v1, :cond_2b

    return v0

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method private static getPerf()Ljava/lang/Object;
    .registers 3

    .line 897
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    if-nez v0, :cond_3c

    .line 899
    :try_start_4
    invoke-static {}, Lmiuix/device/DeviceUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 900
    sget-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1b

    .line 901
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    goto :goto_3c

    :catch_19
    move-exception v0

    goto :goto_23

    .line 903
    :cond_1b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "getAppContext fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_19

    .line 906
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPerf DeviceUtils(): newInstance Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 910
    :cond_3c
    :goto_3c
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    return-object v0
.end method

.method private static getPerfClass()Ljava/lang/Class;
    .registers 1

    .line 863
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .registers 7

    .line 553
    sget-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 555
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    const/4 v2, 0x2

    .line 556
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 557
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 558
    const-string v3, "sm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-eqz v3, :cond_3b

    .line 559
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_37

    return v2

    :cond_37
    if-lt p0, v4, :cond_3a

    return v0

    :cond_3a
    return v5

    .line 567
    :cond_3b
    const-string v2, "sdm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 568
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v4, :cond_4e

    return v0

    :cond_4e
    return v5

    .line 574
    :cond_4f
    const-string p0, "msm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    return v5

    :cond_58
    const/4 p0, -0x1

    return p0
.end method

.method private static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 996
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 997
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 998
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalRam()I
    .registers 4

    .line 131
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_34

    .line 133
    :try_start_7
    const-string v0, "miui.util.HardwareInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    const-string v1, "getTotalPhysicalMemory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    .line 136
    div-long/2addr v0, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lmiuix/device/DeviceUtils;->mTotalRam:I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_34

    :catchall_27
    move-exception v0

    .line 138
    const-string v1, "DeviceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 139
    sput v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 142
    :cond_34
    :goto_34
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    return v0
.end method

.method private static initDeviceLevelInfo()Z
    .registers 4

    .line 922
    const-string v0, "getDeviceLevel"

    sget-boolean v1, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    if-eqz v1, :cond_7

    return v1

    .line 926
    :cond_7
    :try_start_7
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_13

    .line 928
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    return v0

    :catch_10
    move-exception v0

    goto/16 :goto_8f

    .line 931
    :cond_13
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v3

    .line 932
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 934
    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    .line 935
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 939
    const-string v0, "DEVICE_LEVEL_FOR_RAM"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 940
    const-string v0, "DEVICE_LEVEL_FOR_CPU"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 941
    const-string v0, "DEVICE_LEVEL_FOR_GPU"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 944
    const-string v0, "LOW_DEVICE"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->LOW:I

    .line 945
    const-string v0, "MIDDLE_DEVICE"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 946
    const-string v0, "HIGH_DEVICE"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 947
    const-string v0, "DEVICE_LEVEL_UNKNOWN"

    invoke-static {v1, v0, v2}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->UNKNOWN:I

    const/4 v0, 0x1

    .line 948
    sput-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8e} :catch_10

    goto :goto_a5

    .line 950
    :goto_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDeviceLevelInfo Fail: Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :goto_a5
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    return v0
.end method

.method public static isLiteV1StockPlus()Z
    .registers 2

    .line 296
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 298
    const-string v0, "ro.config.low_ram.support_miuilite_plus"

    .line 299
    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 301
    :cond_18
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMiuiLiteRom()Z
    .registers 4

    .line 146
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    .line 148
    :try_start_5
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 149
    const-string v2, "IS_MIUI_LITE_VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    goto :goto_27

    :catchall_1d
    move-exception v1

    .line 152
    const-string v2, "DeviceUtils"

    const-string v3, "isMiuiLiteRom failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 156
    :cond_27
    :goto_27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiLiteV2()Z
    .registers 3

    .line 167
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 170
    :cond_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static isMiuiMiddle()Z
    .registers 2

    .line 207
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiMiddleVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ")",
            "Lmiuix/device/DeviceUtils$CpuInfo;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 658
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 659
    aget-object v2, p0, v1

    const-string v3, "processor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 660
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;

    move-result-object p2

    .line 661
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_20
    if-eqz p2, :cond_27

    .line 663
    aget-object p0, p0, v1

    invoke-static {p0, v0, p2}, Lmiuix/device/DeviceUtils;->getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V

    :cond_27
    :goto_27
    return-object p2
.end method

.method private static setDeviceLevel(III)I
    .registers 3

    .line 438
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 439
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    if-ne p2, p0, :cond_9

    .line 440
    sput p1, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    return p1

    .line 442
    :cond_9
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    if-ne p2, p0, :cond_10

    .line 443
    sput p1, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    return p1

    .line 445
    :cond_10
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p2, p0, :cond_17

    .line 446
    sput p1, Lmiuix/device/DeviceUtils;->mRamLevel:I

    return p1

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method private static toInt(Ljava/lang/String;)I
    .registers 2

    .line 690
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 691
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 693
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static transDeviceLevel(I)I
    .registers 2

    .line 981
    sget v0, Lmiuix/device/DeviceUtils;->LOW:I

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 983
    :cond_6
    sget v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 985
    :cond_c
    sget v0, Lmiuix/device/DeviceUtils;->HIGH:I

    if-ne p0, v0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method
