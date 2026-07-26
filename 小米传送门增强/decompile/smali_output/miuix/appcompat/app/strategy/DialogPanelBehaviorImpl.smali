.class public Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;
.super Ljava/lang/Object;
.source "DialogPanelBehaviorImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private judgeLandscape(Landroid/graphics/Point;I)Z
    .registers 6

    .line 37
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    if-ge v0, p1, :cond_c

    return v2

    :cond_c
    const/4 p1, 0x2

    if-ne p2, p1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method


# virtual methods
.method public calcDesignedPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I
    .registers 6

    .line 121
    iget v0, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mUsableWindowWidthDp:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;->shouldLimitPanelWidth(I)Z

    move-result v0

    .line 122
    iget-boolean v1, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mUseLandscapeLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_e

    .line 123
    iget p2, p2, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    goto :goto_22

    :cond_e
    if-eqz v0, :cond_13

    .line 125
    iget p2, p2, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidth:I

    goto :goto_22

    .line 126
    :cond_13
    iget-boolean v1, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mIsLandscapeWindow:Z

    if-eqz v1, :cond_21

    .line 127
    iget-boolean v1, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mMarkLandscapeWindow:Z

    if-eqz v1, :cond_1e

    iget p2, p2, Lmiuix/appcompat/app/DialogContract$DimensConfig;->fakeLandScreenMinorSize:I

    goto :goto_22

    :cond_1e
    iget p2, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mScreenMinorSize:I

    goto :goto_22

    :cond_21
    move p2, v2

    :goto_22
    if-eq p2, v2, :cond_2e

    .line 131
    iget-boolean v1, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mIsCarWithScreen:Z

    if-eqz v1, :cond_2e

    int-to-float p2, p2

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 134
    :cond_2e
    iget-boolean v1, p1, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->mIsDebugMode:Z

    if-eqz v1, :cond_70

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcDesignedPanelWidth: panelWidthSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IPanelBehavior"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcDesignedPanelWidth: shouldLimitPanelLimit = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calcDesignedPanelWidth: panelWidth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return p2
.end method

.method public calcDesignedWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I
    .registers 4

    const/16 v0, 0x168

    if-ge p2, v0, :cond_7

    .line 157
    iget p1, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    return p1

    :cond_7
    const/16 v0, 0x18a

    if-gt p2, v0, :cond_e

    .line 159
    iget p1, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthMargin:I

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public calcPanelPosition(Lmiuix/appcompat/app/DialogContract$PanelPosSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;Landroid/graphics/Rect;)I
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez p3, :cond_c

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_e

    :cond_c
    move-object/from16 v2, p3

    .line 53
    :goto_e
    iget v3, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mRootViewSizeX:I

    iget v4, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mRootViewWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57
    iget v4, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mRootViewPaddingLeft:I

    iget v5, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mRootViewPaddingRight:I

    add-int/2addr v4, v5

    if-lez v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 59
    :goto_20
    iget v7, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mDesignedPanelWidth:I

    .line 61
    iget v8, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mUsableWindowWidthDp:I

    move-object/from16 v9, p0

    invoke-virtual {v9, v1, v8}, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;->calcDesignedWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I

    move-result v8

    const/4 v10, -0x1

    if-ne v7, v10, :cond_32

    .line 64
    iget v7, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mUsableWindowWidth:I

    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr v7, v10

    .line 66
    :cond_32
    iget-boolean v10, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mIsFlipTiny:Z

    if-eqz v10, :cond_39

    iget v10, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    goto :goto_3b

    :cond_39
    iget v10, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    .line 67
    :goto_3b
    iget-object v11, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mBoundInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 72
    iget-object v12, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mBoundInsets:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int v14, v13, v12

    div-int/lit8 v14, v14, 0x2

    sub-int v15, v3, v7

    .line 75
    div-int/lit8 v15, v15, 0x2

    if-lt v15, v13, :cond_58

    if-ge v15, v12, :cond_56

    goto :goto_58

    :cond_56
    const/4 v12, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v12, 0x1

    .line 78
    :goto_59
    iget-boolean v13, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mIsDebugMode:Z

    const-string v5, "IPanelBehavior"

    if-eqz v13, :cond_c5

    .line 79
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcPanelPosition: panelPosSpec = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcPanelPosition: avoidMoved = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcPanelPosition: horizontalMargin = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcPanelPosition: centerBlankSpace = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calcPanelPosition: widthSmallMargin = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    if-eqz v14, :cond_121

    if-eqz v12, :cond_121

    if-nez v4, :cond_121

    .line 87
    iget-object v1, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mBoundInsets:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v1, :cond_d7

    add-int v1, v14, v8

    move v4, v8

    goto :goto_e0

    :cond_d7
    if-ge v4, v1, :cond_de

    add-int v1, v14, v8

    move v4, v1

    move v1, v8

    goto :goto_e0

    :cond_de
    move v1, v8

    move v4, v1

    .line 94
    :goto_e0
    iget-boolean v6, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mIsDebugMode:Z

    if-eqz v6, :cond_123

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcPanelPosition: leftMargin = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcPanelPosition: rightMargin = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calcPanelPosition: realRootViewWidth = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    :cond_121
    move v1, v8

    move v4, v1

    :cond_123
    :goto_123
    if-ge v15, v14, :cond_127

    const/4 v3, 0x1

    goto :goto_128

    :cond_127
    const/4 v3, 0x0

    :goto_128
    if-eqz v3, :cond_130

    .line 105
    iget v6, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mUsableWindowWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v7, v6, v8

    .line 107
    :cond_130
    iget-boolean v0, v0, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mIsDebugMode:Z

    if-eqz v0, :cond_15c

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcPanelPosition: isOverflow = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcPanelPosition: panelWidth = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_15c
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 112
    iput v11, v2, Landroid/graphics/Rect;->top:I

    .line 113
    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 114
    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    return v7
.end method

.method public isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z
    .registers 6

    .line 16
    iget-boolean v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mMarkLandscape:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 20
    :cond_6
    iget-boolean v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mInFreeFrom:Z

    if-eqz v0, :cond_13

    .line 21
    iget-object v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mWindowSize:Landroid/graphics/Point;

    iget p1, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mScreenOrientation:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;->judgeLandscape(Landroid/graphics/Point;I)Z

    move-result p1

    return p1

    .line 23
    :cond_13
    iget v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mScreenOrientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1a

    return v3

    .line 26
    :cond_1a
    iget-boolean v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mIsCarWithScreen:Z

    if-nez v0, :cond_33

    iget-boolean v0, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mIsSynergy:Z

    if-eqz v0, :cond_23

    goto :goto_33

    .line 29
    :cond_23
    iget-object p1, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mUsableWindowSizeDp:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    const/16 v2, 0x18a

    if-ge v0, v2, :cond_2c

    return v3

    .line 32
    :cond_2c
    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_31

    goto :goto_32

    :cond_31
    move v1, v3

    :goto_32
    return v1

    .line 27
    :cond_33
    :goto_33
    iget-object p1, p1, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mRealScreenSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v3

    :goto_3d
    return v1
.end method

.method public shouldLimitPanelWidth(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x18a

    if-lt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
