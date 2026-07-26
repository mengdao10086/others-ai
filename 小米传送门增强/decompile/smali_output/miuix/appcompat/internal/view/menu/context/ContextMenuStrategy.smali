.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;
.super Ljava/lang/Object;
.source "ContextMenuStrategy.java"

# interfaces
.implements Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;


# instance fields
.field private marginScreen:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->x:F

    .line 20
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->y:F

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->marginScreen:I

    return-void
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 9

    .line 66
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 67
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 68
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->x:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 69
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v0, v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    .line 70
    :goto_13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    sub-int/2addr v5, v6

    if-lt v0, v5, :cond_1d

    move v3, v4

    :cond_1d
    if-eqz v2, :cond_22

    .line 73
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->marginScreen:I

    goto :goto_2e

    :cond_22
    if-eqz v3, :cond_2e

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->marginScreen:I

    sub-int/2addr v0, v1

    iget p1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    sub-int/2addr v0, p1

    :cond_2e
    :goto_2e
    return v0
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 9

    .line 85
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 86
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 87
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuStrategy;->y:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 88
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 89
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_23

    .line 90
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 92
    :cond_23
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    int-to-float v2, v2

    add-float v4, v0, v2

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3c

    .line 94
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float/2addr v0, v2

    .line 96
    :cond_3c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_58

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 98
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 99
    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :cond_58
    float-to-int p1, v0

    return p1
.end method

.method public isNeedScroll(ILmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Z
    .registers 4

    .line 60
    iget v0, p2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-gt v0, p1, :cond_b

    .line 61
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

    .line 26
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    if-eqz v0, :cond_34

    .line 28
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 29
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 30
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_d
    if-ge v5, v3, :cond_21

    .line 34
    aget-object v8, v0, v5

    aget v9, v8, v4

    const/4 v10, 0x1

    .line 35
    aget v8, v8, v10

    if-le v9, v1, :cond_19

    move v9, v1

    .line 39
    :cond_19
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 42
    :cond_21
    iput v6, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    if-le v6, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v6

    .line 46
    :goto_27
    iput v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 48
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 49
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentWidth:I

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    goto :goto_48

    .line 51
    :cond_34
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentHeight:I

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    :goto_48
    return-void
.end method
