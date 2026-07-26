.class public Lcom/miui/contentextension/utils/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static sRealDisplayHeight:I

.field private static sRealDisplayWidth:I

.field private static sScreenDensity:F

.field private static sScreenDensityDpi:I

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealDisplayRatio(Landroid/content/Context;)I
    .registers 2

    .line 85
    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayWidth:I

    if-eqz v0, :cond_8

    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayHeight:I

    if-nez v0, :cond_b

    .line 87
    :cond_8
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceConfig;->init(Landroid/content/Context;)V

    .line 89
    :cond_b
    sget p0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayHeight:I

    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayWidth:I

    div-int/2addr p0, v0

    return p0
.end method

.method public static getScreenDensityDpi()I
    .registers 1

    .line 64
    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static getScreenHeight()I
    .registers 1

    .line 48
    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenHeight:I

    return v0
.end method

.method public static getScreenRealHeight()I
    .registers 1

    .line 56
    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .registers 1

    .line 44
    sget v0, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenWidth:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_3a

    .line 28
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 29
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenDensity:F

    .line 32
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenDensityDpi:I

    .line 33
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenWidth:I

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/miui/contentextension/utils/DeviceConfig;->sScreenHeight:I

    .line 36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayHeight:I

    .line 39
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/miui/contentextension/utils/DeviceConfig;->sRealDisplayWidth:I

    :cond_3a
    return-void
.end method

.method public static isFullViewDisplay(Landroid/content/Context;)Z
    .registers 2

    .line 96
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceConfig;->getRealDisplayRatio(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isLanguageInZH(Landroid/content/Context;)Z
    .registers 2

    .line 78
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceConfig;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 79
    const-string v0, "zh-CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "zh-HK"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "zh-TW"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method
