.class public Lmiuix/core/util/HyperMaterialUtils;
.super Ljava/lang/Object;
.source "HyperMaterialUtils.java"


# static fields
.field static DEFAULT_FEATURE_ENABLE:Ljava/lang/Boolean; = null

.field static ENABLE_HYPER_MATERIAL:Ljava/lang/Boolean; = null

.field static HYPER_MATERIAL_VERSION:I = -0x1

.field static SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean; = null

.field private static isForceEnable:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-lt v0, v1, :cond_7d

    sget-boolean v0, Lmiuix/core/util/HyperMaterialUtils;->isForceEnable:Z

    if-nez v0, :cond_c

    goto :goto_7d

    .line 26
    :cond_c
    const-string v0, "persist.sys.background_blur_supported"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/HyperMaterialUtils;->SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean;

    .line 27
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2a

    .line 28
    const-string v0, "persist.sys.advanced_visual_release"

    invoke-static {v0, v2}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiuix/core/util/HyperMaterialUtils;->HYPER_MATERIAL_VERSION:I

    goto :goto_38

    .line 29
    :cond_2a
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v0

    if-ne v0, v3, :cond_38

    .line 30
    const-string v0, "persist.sys.background_blur_version"

    invoke-static {v0, v2}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiuix/core/util/HyperMaterialUtils;->HYPER_MATERIAL_VERSION:I

    .line 32
    :cond_38
    :goto_38
    const-string v0, "persist.sys.background_blur_status_default"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/HyperMaterialUtils;->DEFAULT_FEATURE_ENABLE:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/core/util/HyperMaterialUtils;->SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", OS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", VERSION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmiuix/core/util/HyperMaterialUtils;->HYPER_MATERIAL_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DEFAULT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/core/util/HyperMaterialUtils;->DEFAULT_FEATURE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "HyperMaterialUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 22
    :cond_7d
    :goto_7d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lmiuix/core/util/HyperMaterialUtils;->SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean;

    .line 23
    sput v2, Lmiuix/core/util/HyperMaterialUtils;->HYPER_MATERIAL_VERSION:I

    .line 24
    sput-object v0, Lmiuix/core/util/HyperMaterialUtils;->DEFAULT_FEATURE_ENABLE:Ljava/lang/Boolean;

    :goto_85
    return-void
.end method

.method public static declared-synchronized clearFeatureEnable()V
    .registers 2

    const-class v0, Lmiuix/core/util/HyperMaterialUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_4
    sput-object v1, Lmiuix/core/util/HyperMaterialUtils;->ENABLE_HYPER_MATERIAL:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 79
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static isEnable()Z
    .registers 1

    .line 42
    sget-object v0, Lmiuix/core/util/HyperMaterialUtils;->SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isFeatureEnable(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lmiuix/core/util/HyperMaterialUtils;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lmiuix/core/util/HyperMaterialUtils;->SUPPORT_HYPER_MATERIAL:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 47
    monitor-exit v0

    return v2

    .line 49
    :cond_e
    :try_start_e
    sget-object v1, Lmiuix/core/util/HyperMaterialUtils;->ENABLE_HYPER_MATERIAL:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    .line 50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_18

    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    goto :goto_38

    :cond_1a
    if-eqz p0, :cond_36

    .line 53
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "background_blur_enable"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2a

    move v2, v1

    :cond_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/HyperMaterialUtils;->ENABLE_HYPER_MATERIAL:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_18

    monitor-exit v0

    return p0

    .line 57
    :cond_36
    monitor-exit v0

    return v2

    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_18

    throw p0
.end method
