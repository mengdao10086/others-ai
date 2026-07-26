.class public Lmiuix/internal/widget/ActionSheet;
.super Ljava/lang/Object;
.source "ActionSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ActionSheet$IActionSheet;,
        Lmiuix/internal/widget/ActionSheet$ContentController;,
        Lmiuix/internal/widget/ActionSheet$ArrowMode;,
        Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;,
        Lmiuix/internal/widget/ActionSheet$ActionSheetMode;,
        Lmiuix/internal/widget/ActionSheet$Builder;
    }
.end annotation


# direct methods
.method public static showArrowActionSheet(Landroid/content/Context;)Z
    .registers 2

    .line 272
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 273
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    const/16 v0, 0x2eb

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
