.class public Lcom/miui/contentextension/utils/SuperImageUtils;
.super Ljava/lang/Object;
.source "SuperImageUtils.java"


# direct methods
.method public static getImageSaveMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 35
    invoke-static {}, Lcom/miui/contentextension/utils/SuperImageUtils;->isSupportSuperImage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    const-string p0, "0"

    return-object p0

    .line 38
    :cond_9
    const-string v0, "key_settings_image_save_mode"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalImageDesc(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "(%dx%dpx)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperImageDesc(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 70
    invoke-static {p0}, Lcom/miui/contentextension/utils/SuperImageUtils;->isBitmapSupportSuperImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%dx%dpx)"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100205

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBitmapSupportSuperImage(Landroid/graphics/Bitmap;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 61
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x2d0

    if-ge v1, v2, :cond_13

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ge p0, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static isSupportSuperImage()Z
    .registers 4

    .line 50
    const-string v0, "support_SR_for_image_display"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    .line 51
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    const-string v3, "com.miui.mediafeature"

    invoke-virtual {v0, v2, v3}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static setImageSaveMode(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    const-string v0, "key_settings_image_save_mode"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
