.class public Lmiuix/core/util/screenutils/SplitScreenModeHelper;
.super Ljava/lang/Object;
.source "SplitScreenModeHelper.java"


# direct methods
.method public static detectSplitScreenInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V
    .registers 6

    .line 46
    invoke-static {p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isScreenLandscape(Landroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 47
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    :goto_e
    int-to-float p1, p1

    add-float/2addr p1, v1

    div-float/2addr v0, p1

    goto :goto_2a

    .line 50
    :cond_12
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_29

    .line 52
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_e

    :cond_29
    move v0, v2

    :goto_2a
    const p1, 0x3ecccccd    # 0.4f

    .line 57
    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 p1, 0x1001

    .line 58
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_38
    const v1, 0x3f19999a    # 0.6f

    .line 59
    invoke-static {v0, p1, v1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p1

    if-eqz p1, :cond_46

    const/16 p1, 0x1002

    .line 60
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_46
    const p1, 0x3f4ccccd    # 0.8f

    .line 61
    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p1

    if-eqz p1, :cond_54

    const/16 p1, 0x1003

    .line 62
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_54
    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    :goto_57
    return-void
.end method

.method private static isInRegion(FFF)Z
    .registers 3

    .line 0
    cmpl-float p1, p0, p1

    if-ltz p1, :cond_a

    cmpg-float p0, p0, p2

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isScreenLandscape(Landroid/graphics/Point;)Z
    .registers 2

    .line 69
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
