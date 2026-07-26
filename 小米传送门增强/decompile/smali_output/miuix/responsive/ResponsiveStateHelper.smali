.class public Lmiuix/responsive/ResponsiveStateHelper;
.super Ljava/lang/Object;
.source "ResponsiveStateHelper.java"


# direct methods
.method public static computeResponsiveState(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    .line 19
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    .line 20
    invoke-static {p0, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object p0

    return-object p0
.end method

.method public static computeResponsiveStateOnConfigChanged(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;)Lmiuix/responsive/map/ResponsiveState;
    .registers 4

    .line 26
    invoke-static {}, Lmiuix/responsive/map/ResponsiveStateManager;->getInstance()Lmiuix/responsive/map/ResponsiveStateManager;

    move-result-object v0

    .line 27
    invoke-static {p2, p1}, Lmiuix/responsive/ResponsiveStateHelper;->wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lmiuix/responsive/map/ResponsiveStateManager;->recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;

    move-result-object p0

    return-object p0
.end method

.method public static detectResponsiveWindowType(II)I
    .registers 4

    .line 0
    const/16 v0, 0x280

    const/4 v1, 0x1

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x3c0

    if-lt p0, v0, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    const/16 p0, 0x226

    if-le p1, p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    return v1
.end method

.method private static windowModeWrapper(I)I
    .registers 4

    const/16 v0, 0x1007

    if-eqz p0, :cond_3d

    packed-switch p0, :pswitch_data_3e

    packed-switch p0, :pswitch_data_48

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window mode for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuixWarning"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_25
    const/16 p0, 0x2004

    return p0

    :pswitch_28
    const/16 p0, 0x2003

    return p0

    :pswitch_2b
    const/16 p0, 0x2002

    return p0

    :pswitch_2e
    const/16 p0, 0x2001

    return p0

    :pswitch_31
    const/16 p0, 0x2000

    return p0

    :pswitch_34
    const/16 p0, 0x1004

    return p0

    :pswitch_37
    const/16 p0, 0x1002

    return p0

    :pswitch_3a
    const/16 p0, 0x1001

    return p0

    :cond_3d
    return v0

    :pswitch_data_3e
    .packed-switch 0x1001
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x2000
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private static wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 4

    .line 50
    new-instance p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    invoke-direct {p1}, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;-><init>()V

    .line 51
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    .line 52
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    .line 53
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    .line 54
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    .line 55
    iget v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    .line 56
    iget v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {v0}, Lmiuix/responsive/ResponsiveStateHelper;->windowModeWrapper(I)I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    .line 57
    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowDensity:F

    iput p0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowDensity:F

    return-object p1
.end method

.method private static wrapperWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 40
    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p0

    return-object p0
.end method

.method private static wrapperWindowInfoByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    .registers 3

    .line 45
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    .line 46
    invoke-static {p1, p0}, Lmiuix/responsive/ResponsiveStateHelper;->wrapWindowInfo(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;

    move-result-object p0

    return-object p0
.end method
