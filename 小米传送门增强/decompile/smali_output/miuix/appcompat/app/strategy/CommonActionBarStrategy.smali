.class public Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;
.super Ljava/lang/Object;
.source "CommonActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .registers 11

    if-eqz p1, :cond_a5

    if-eqz p2, :cond_a5

    .line 17
    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    .line 18
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    .line 19
    iget-boolean v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isInFloatingWindowMode:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_9e

    const/16 v1, 0x3c0

    if-lt v0, v1, :cond_17

    goto/16 :goto_9e

    :cond_17
    int-to-float v1, v0

    .line 24
    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float v5, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    cmpg-float v1, v1, v5

    const/16 v5, 0x280

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-gez v1, :cond_44

    .line 26
    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    const/16 v1, 0x19a

    if-ne p2, v7, :cond_2f

    if-gt v4, v5, :cond_31

    :cond_2f
    if-le v0, v1, :cond_3f

    .line 29
    :cond_31
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 30
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-ge v0, v1, :cond_3b

    .line 32
    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto/16 :goto_a6

    .line 34
    :cond_3b
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto/16 :goto_a6

    .line 37
    :cond_3f
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 38
    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_a6

    .line 42
    :cond_44
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne v0, v7, :cond_4a

    if-gt v4, v5, :cond_75

    :cond_4a
    if-ne v0, v6, :cond_50

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v4, v1, :cond_75

    :cond_50
    const/4 v1, 0x4

    if-eq v0, v2, :cond_55

    if-ne v0, v1, :cond_65

    :cond_55
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 49
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v4, 0x226

    if-gt v0, v4, :cond_65

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v0, v4, :cond_75

    :cond_65
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne v0, v1, :cond_7a

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x14a

    if-gt v0, v1, :cond_7a

    .line 55
    :cond_75
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 56
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_9b

    .line 57
    :cond_7a
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    invoke-static {v0}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_99

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-eq v0, v7, :cond_99

    .line 59
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    int-to-float v0, v0

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    const p2, 0x3fd9999a    # 1.7f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_9b

    .line 62
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 63
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_9b

    .line 67
    :cond_99
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 69
    :cond_9b
    :goto_9b
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_a6

    .line 21
    :cond_9e
    :goto_9e
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 22
    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 23
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_a6

    :cond_a5
    const/4 p1, 0x0

    :goto_a6
    return-object p1
.end method
