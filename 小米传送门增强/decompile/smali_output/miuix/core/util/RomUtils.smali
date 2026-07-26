.class public Lmiuix/core/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static HYPER_OS_VERSION_CODE:I = -0x1

.field private static MIUI_VERSION_CODE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static getHyperOsVersion()I
    .registers 2

    .line 45
    sget v0, Lmiuix/core/util/RomUtils;->HYPER_OS_VERSION_CODE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 46
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersionNoCache()I

    move-result v0

    sput v0, Lmiuix/core/util/RomUtils;->HYPER_OS_VERSION_CODE:I

    .line 48
    :cond_b
    sget v0, Lmiuix/core/util/RomUtils;->HYPER_OS_VERSION_CODE:I

    return v0
.end method

.method public static getHyperOsVersionNoCache()I
    .registers 2

    .line 52
    const-string v0, "ro.mi.os.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMiuiVersion()I
    .registers 2

    .line 60
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 61
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersionNoCache()I

    move-result v0

    sput v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    .line 63
    :cond_b
    sget v0, Lmiuix/core/util/RomUtils;->MIUI_VERSION_CODE:I

    return v0
.end method

.method public static getMiuiVersionNoCache()I
    .registers 2

    .line 67
    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMiuiXVSdkSupported()Z
    .registers 2

    .line 102
    invoke-static {}, Lmiuix/core/util/RomUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
