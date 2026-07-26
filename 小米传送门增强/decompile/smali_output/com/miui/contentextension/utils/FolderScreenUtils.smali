.class public Lcom/miui/contentextension/utils/FolderScreenUtils;
.super Ljava/lang/Object;
.source "FolderScreenUtils.java"


# direct methods
.method public static isFolderLargeScreen(Landroid/content/Context;)Z
    .registers 3

    .line 38
    invoke-static {}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 39
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 40
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isFolderScreen()Z
    .registers 3

    .line 18
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public static isFolderSmallScreen(Landroid/content/Context;)Z
    .registers 3

    .line 22
    invoke-static {}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isSplitModeEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_13

    move p0, v2

    goto :goto_14

    :cond_13
    move p0, v1

    .line 34
    :goto_14
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1a

    if-eqz p0, :cond_1b

    :cond_1a
    move v1, v2

    :cond_1b
    return v1
.end method
