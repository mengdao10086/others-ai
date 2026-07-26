.class public Lmiuix/autodensity/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static sAutoDensityDebug:Ljava/lang/String;

.field private static volatile sDebugAutoDensityScale:F

.field private static sDebugLogLevel:I

.field public static sForceEnableDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static getAutoDensityScaleInDebugMode()F
    .registers 1

    .line 49
    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    return v0
.end method

.method public static initAutoDensityDebugEnable()V
    .registers 4

    .line 23
    const-string v0, "AutoDensity"

    .line 25
    :try_start_2
    const-string v1, "log.tag.autodensity.debug.enable"

    invoke-static {v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 26
    const-string v1, "0"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v1

    .line 28
    const-string v2, "can not access property log.tag.autodensity.enable, undebugable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    .line 30
    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autodensity debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_2b
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_35

    :catch_32
    const/4 v0, 0x0

    .line 34
    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    .line 37
    :goto_35
    :try_start_35
    const-string v0, "persist.miuix.dpi.log"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugLogLevel:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_45

    :catch_42
    const/4 v0, 0x0

    .line 40
    sput v0, Lmiuix/autodensity/DebugUtil;->sDebugLogLevel:I

    :goto_45
    return-void
.end method

.method public static isEnableDebug()Z
    .registers 2

    .line 53
    sget-boolean v0, Lmiuix/autodensity/DebugUtil;->sForceEnableDebug:Z

    if-nez v0, :cond_1a

    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugLogLevel:I

    if-gtz v0, :cond_1a

    sget v0, Lmiuix/autodensity/DebugUtil;->sDebugAutoDensityScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18

    sget-object v0, Lmiuix/autodensity/DebugUtil;->sAutoDensityDebug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method public static printDensityLog(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->isEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    const-string v0, "AutoDensity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method
