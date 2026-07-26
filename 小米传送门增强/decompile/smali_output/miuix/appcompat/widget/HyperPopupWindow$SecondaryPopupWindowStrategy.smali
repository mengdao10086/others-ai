.class Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;
.super Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecondaryPopupWindowStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1013
    invoke-direct {p0}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 7

    .line 1016
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 1017
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 1018
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 1019
    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v0, v2

    .line 1021
    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_11

    sub-int v0, v4, v2

    move v3, v4

    .line 1025
    :cond_11
    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_16

    move v0, v1

    :cond_16
    sub-int/2addr v3, v0

    .line 1028
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    return v0
.end method

.method public getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I
    .registers 7

    .line 1034
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 1035
    iget-object v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 1036
    iget v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 1037
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v0, v2

    .line 1038
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_f

    return v0

    :cond_f
    sub-int v0, v4, v2

    .line 1043
    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_19

    sub-int/2addr v4, v1

    .line 1045
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    move v0, v1

    :cond_19
    return v0
.end method
