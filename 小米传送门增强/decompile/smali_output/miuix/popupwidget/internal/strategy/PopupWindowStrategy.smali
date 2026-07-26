.class public Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;
.super Ljava/lang/Object;
.source "PopupWindowStrategy.java"

# interfaces
.implements Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getXInWindowAlightRight(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 9

    .line 110
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 111
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 112
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 113
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 114
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 115
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v4, v5

    if-le v0, v6, :cond_14

    sub-int v0, v4, v5

    :cond_14
    sub-int/2addr v0, v3

    .line 119
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v6, v1, v2

    if-ge v0, v6, :cond_1f

    add-int v0, v1, v2

    :cond_1f
    add-int v1, v0, v3

    sub-int v2, v4, v5

    if-le v1, v2, :cond_28

    sub-int/2addr v4, v5

    sub-int v3, v4, v0

    .line 125
    :cond_28
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return v0
.end method

.method private getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 10

    .line 62
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 63
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 64
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 65
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 67
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, v3

    .line 69
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int v7, v5, v6

    if-le v4, v7, :cond_1c

    sub-int v0, v5, v6

    sub-int/2addr v0, v3

    .line 74
    :cond_1c
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v1, v2

    if-ge v0, v4, :cond_26

    add-int v0, v1, v2

    :cond_26
    add-int v1, v0, v3

    sub-int v2, v5, v6

    if-le v1, v2, :cond_2f

    sub-int/2addr v5, v6

    sub-int v3, v5, v0

    .line 83
    :cond_2f
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return v0
.end method

.method private getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 9

    .line 88
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 89
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 90
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 91
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 92
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 93
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int v6, v4, v5

    if-ge v0, v6, :cond_14

    add-int v0, v4, v5

    :cond_14
    add-int/2addr v0, v3

    .line 97
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    if-le v0, v6, :cond_1f

    sub-int v0, v1, v2

    :cond_1f
    sub-int v1, v0, v3

    add-int v2, v4, v5

    if-ge v1, v2, :cond_2a

    add-int v1, v4, v5

    sub-int/2addr v0, v1

    .line 104
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    :cond_2a
    return v1
.end method

.method private getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 14

    .line 175
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 176
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 177
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 178
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 179
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    if-ge v4, v7, :cond_14

    add-int v4, v5, v6

    :cond_14
    add-int v7, v4, v3

    .line 183
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v8, v9

    if-ge v7, v10, :cond_1f

    return v4

    .line 187
    :cond_1f
    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v7, v5

    sub-int v11, v8, v7

    if-lt v11, v10, :cond_45

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    .line 191
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v8, v0, :cond_42

    .line 192
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 193
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int v4, v0, v8

    .line 195
    :cond_42
    iput v8, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_63

    :cond_45
    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    .line 197
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    iget v5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v4, v5, :cond_5d

    .line 199
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 201
    :cond_5d
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 202
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, p1, v4

    :goto_63
    return v4
.end method

.method private getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 14

    .line 142
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 143
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 144
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 145
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 146
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 147
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    if-ge v4, v7, :cond_15

    add-int v7, v5, v6

    goto :goto_16

    :cond_15
    move v7, v4

    :goto_16
    add-int v8, v7, v3

    .line 150
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v9, v10

    if-ge v8, v11, :cond_21

    return v7

    :cond_21
    sub-int v8, v4, v5

    sub-int v11, v9, v4

    if-lt v11, v8, :cond_45

    sub-int/2addr v9, v10

    sub-int/2addr v9, v7

    .line 158
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v9, v0, :cond_42

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 160
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int v7, v0, v9

    .line 162
    :cond_42
    iput v9, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_63

    :cond_45
    sub-int/2addr v4, v5

    sub-int/2addr v4, v6

    .line 164
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 165
    iget v5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v4, v5, :cond_5d

    .line 166
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 168
    :cond_5d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v4

    .line 169
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_63
    return v7
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 4

    .line 50
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    .line 57
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 55
    :cond_15
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlightRight(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 53
    :cond_1a
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 4

    .line 131
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-eq v0, v1, :cond_d

    .line 136
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 134
    :cond_d
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;->getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1
.end method

.method public isNeedScroll(ILmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Z
    .registers 4

    .line 44
    iget v0, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-gt v0, p1, :cond_b

    .line 45
    iget p1, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    if-le v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .registers 13

    .line 10
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    if-eqz v0, :cond_34

    .line 12
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 13
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 14
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_d
    if-ge v5, v3, :cond_21

    .line 18
    aget-object v8, v0, v5

    aget v9, v8, v4

    const/4 v10, 0x1

    .line 19
    aget v8, v8, v10

    if-le v9, v1, :cond_19

    move v9, v1

    .line 23
    :cond_19
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 26
    :cond_21
    iput v6, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-le v6, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v6

    .line 30
    :goto_27
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 32
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 33
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    goto :goto_48

    .line 35
    :cond_34
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_48
    return-void
.end method
