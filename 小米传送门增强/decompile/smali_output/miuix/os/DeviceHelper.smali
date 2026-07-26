.class public Lmiuix/os/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field public static final SUB_BUILTIN_DISPLAY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const-string v0, "persist.sys.secondary_builtin_display_id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiuix/os/DeviceHelper;->SUB_BUILTIN_DISPLAY:I

    return-void
.end method

.method public static detectType(Landroid/content/Context;)I
    .registers 1

    .line 31
    sget-boolean p0, Lmiuix/os/Build;->IS_FOLD_INSIDE:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 34
    :cond_6
    sget-boolean p0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x4

    return p0

    .line 37
    :cond_c
    sget-boolean p0, Lmiuix/os/Build;->IS_FOLD_OUTSIDE:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x5

    return p0

    .line 40
    :cond_12
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    return p0

    .line 43
    :cond_18
    sget-boolean p0, Lmiuix/os/Build;->IS_AUTOMOTIVE:Z

    if-eqz p0, :cond_1f

    const/16 p0, 0xb

    return p0

    .line 46
    :cond_1f
    sget-boolean p0, Lmiuix/os/Build;->IS_WEAR:Z

    if-eqz p0, :cond_26

    const/16 p0, 0xa

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public static hasIndependentRearDisplay()Z
    .registers 1

    .line 61
    sget-boolean v0, Lmiuix/os/Build;->IS_INDEPENDENT_REAR:Z

    return v0
.end method

.method public static isCarWithScreen(Landroid/content/Context;Landroid/view/Display;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_d

    .line 106
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    if-nez p1, :cond_1c

    .line 114
    :try_start_f
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 115
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    move-object p1, p0

    :catch_1c
    :cond_1c
    if-eqz p1, :cond_45

    .line 124
    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 125
    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "carlink"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ucar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_45

    :cond_44
    const/4 v0, 0x1

    :cond_45
    return v0
.end method

.method public static isInRearDisplay(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 72
    :cond_4
    invoke-static {}, Lmiuix/os/DeviceHelper;->hasIndependentRearDisplay()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 75
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1e

    .line 77
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    sget v1, Lmiuix/os/DeviceHelper;->SUB_BUILTIN_DISPLAY:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1e

    if-ne p0, v1, :cond_1e

    const/4 v0, 0x1

    :catch_1e
    :cond_1e
    return v0
.end method

.method public static isInRearDisplay(Landroid/view/Display;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 91
    :cond_4
    invoke-static {}, Lmiuix/os/DeviceHelper;->hasIndependentRearDisplay()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 94
    :cond_b
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    sget v1, Lmiuix/os/DeviceHelper;->SUB_BUILTIN_DISPLAY:I

    if-ne p0, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static isTinyScreen(Landroid/content/Context;)Z
    .registers 6

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->getScreenType(Landroid/content/res/Configuration;)I

    move-result v0

    .line 160
    invoke-static {p0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_19

    if-ne v0, v4, :cond_18

    move v3, v4

    :cond_18
    return v3

    .line 164
    :cond_19
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 166
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x280

    if-gt p0, v0, :cond_37

    move v3, v4

    :cond_37
    return v3
.end method

.method public static isWideScreen(Landroid/content/Context;)Z
    .registers 3

    .line 150
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenShortEdge(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isXiaomiSynergy(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 138
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "synergy_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0

    :catch_10
    move-exception p0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isXiaomiSynergy warning!! context cannot get synergy_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Miuix.DeviceHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
