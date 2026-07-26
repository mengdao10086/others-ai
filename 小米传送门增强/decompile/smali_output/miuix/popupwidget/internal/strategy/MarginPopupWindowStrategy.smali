.class public Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;
.super Ljava/lang/Object;
.source "MarginPopupWindowStrategy.java"

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

    .line 114
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 115
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 116
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 117
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 118
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x23

    .line 119
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v4, v5

    add-int/lit8 v6, v6, 0x23

    if-le v0, v6, :cond_1a

    sub-int v0, v4, v5

    add-int/lit8 v0, v0, 0x23

    :cond_1a
    sub-int/2addr v0, v3

    .line 123
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v6, v1, v2

    add-int/lit8 v6, v6, -0x23

    if-ge v0, v6, :cond_28

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x23

    :cond_28
    add-int v1, v0, v3

    sub-int v2, v4, v5

    add-int/lit8 v2, v2, 0x23

    if-le v1, v2, :cond_33

    sub-int/2addr v4, v5

    sub-int v3, v4, v0

    .line 129
    :cond_33
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return v0
.end method

.method private getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 10

    .line 66
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 67
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 68
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 69
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 71
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, v3

    .line 73
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int v7, v5, v6

    add-int/lit8 v7, v7, 0x23

    if-le v4, v7, :cond_20

    sub-int v0, v5, v6

    add-int/lit8 v0, v0, 0x23

    sub-int/2addr v0, v3

    .line 78
    :cond_20
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v1, v2

    add-int/lit8 v4, v4, -0x23

    if-ge v0, v4, :cond_2d

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x23

    :cond_2d
    add-int v1, v0, v3

    sub-int v2, v5, v6

    add-int/lit8 v2, v2, 0x23

    if-le v1, v2, :cond_3a

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x23

    sub-int v3, v5, v0

    .line 87
    :cond_3a
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return v0
.end method

.method private getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 9

    .line 92
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 93
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 94
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 95
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 96
    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x23

    .line 97
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int v6, v4, v5

    add-int/lit8 v6, v6, -0x23

    if-ge v0, v6, :cond_1a

    add-int v0, v4, v5

    add-int/lit8 v0, v0, -0x23

    :cond_1a
    add-int/2addr v0, v3

    .line 101
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, 0x23

    if-le v0, v6, :cond_28

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x23

    :cond_28
    sub-int v1, v0, v3

    add-int v2, v4, v5

    add-int/lit8 v2, v2, -0x23

    if-ge v1, v2, :cond_36

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x23

    sub-int/2addr v0, v1

    .line 108
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    :cond_36
    return v1
.end method

.method private getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 14

    .line 179
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 180
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 181
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 182
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    add-int/lit8 v3, v3, -0x46

    .line 183
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    if-ge v4, v7, :cond_16

    add-int v4, v5, v6

    :cond_16
    add-int v7, v4, v3

    .line 187
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v8, v9

    if-ge v7, v10, :cond_23

    add-int/lit8 v4, v4, -0x23

    return v4

    .line 191
    :cond_23
    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v7, v5

    sub-int v11, v8, v7

    if-lt v11, v10, :cond_4b

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    .line 195
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v8, v0, :cond_46

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 197
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int v4, v0, v8

    :cond_46
    add-int/lit8 v8, v8, 0x46

    .line 199
    iput v8, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_6b

    :cond_4b
    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    .line 201
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 202
    iget v5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v4, v5, :cond_63

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_63
    add-int/lit8 v1, v4, 0x46

    .line 205
    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 206
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, p1, v4

    :goto_6b
    add-int/lit8 v4, v4, -0x23

    return v4
.end method

.method private getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 14

    .line 146
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 147
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 148
    iget-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 149
    iget v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    add-int/lit8 v3, v3, -0x46

    .line 150
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 151
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int v7, v5, v6

    if-ge v4, v7, :cond_17

    add-int v7, v5, v6

    goto :goto_18

    :cond_17
    move v7, v4

    :goto_18
    add-int v8, v7, v3

    .line 154
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v9, v10

    if-ge v8, v11, :cond_25

    add-int/lit8 v7, v7, -0x23

    return v7

    :cond_25
    sub-int v8, v4, v5

    sub-int v11, v9, v4

    if-lt v11, v8, :cond_4b

    sub-int/2addr v9, v10

    sub-int/2addr v9, v7

    .line 162
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v9, v0, :cond_46

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 164
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int v7, v0, v9

    :cond_46
    add-int/lit8 v9, v9, 0x46

    .line 166
    iput v9, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    goto :goto_6b

    :cond_4b
    sub-int/2addr v4, v5

    sub-int/2addr v4, v6

    .line 168
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 169
    iget v5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    if-ge v4, v5, :cond_63

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 172
    :cond_63
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v4

    add-int/lit8 v4, v4, 0x46

    .line 173
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_6b
    return v7
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 4

    .line 54
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    .line 61
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;->getXInWindowAlignLeft(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 59
    :cond_15
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;->getXInWindowAlightRight(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 57
    :cond_1a
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;->getXInWindowAlignCenterHorizontal(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 4

    .line 135
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-eq v0, v1, :cond_d

    .line 140
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;->getYInWindowAlignBottom(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1

    .line 138
    :cond_d
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;->getYInWindowAlignTop(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    return p1
.end method

.method public isNeedScroll(ILmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Z
    .registers 4

    .line 48
    iget v0, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-gt v0, p1, :cond_b

    .line 49
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

    .line 13
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    if-eqz v0, :cond_38

    .line 15
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 16
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 17
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_d
    if-ge v5, v3, :cond_21

    .line 21
    aget-object v8, v0, v5

    aget v9, v8, v4

    const/4 v10, 0x1

    .line 22
    aget v8, v8, v10

    if-le v9, v1, :cond_19

    move v9, v1

    .line 26
    :cond_19
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 29
    :cond_21
    iput v6, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-le v6, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v6

    :goto_27
    add-int/lit8 v2, v2, 0x46

    .line 33
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 35
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 36
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    add-int/lit8 v0, v0, 0x46

    .line 37
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    goto :goto_4c

    .line 39
    :cond_38
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_4c
    return-void
.end method
