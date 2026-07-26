.class public abstract Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field protected mBackgroundViewApplyBlur:Z

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 42
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 118
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected clearBackground()V
    .registers 1

    .line 0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public filterLeftoverView(I)Z
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 97
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 4

    .line 104
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 109
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_c

    .line 110
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;)V

    return-object v0

    .line 113
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .registers 3

    .line 122
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p1
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public bridge synthetic getCurrentMaterial()Lmiuix/core/util/MaterialConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getCurrentMaterial()Lmiuix/core/util/MaterialConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaterial()Lmiuix/core/util/MaterialDayNightConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getMaterial()Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .registers 2

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 5

    add-int/lit8 v0, p1, -0x1

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1b

    instance-of v2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz v2, :cond_1b

    .line 147
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-lez p1, :cond_29

    .line 149
    instance-of p1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz p1, :cond_29

    .line 150
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_29
    return v0
.end method

.method public hasOnlyCustomView()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z
    .registers 4

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    :cond_b
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 65
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    .line 70
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onWillRemoved()V
    .registers 1

    .line 0
    return-void
.end method

.method protected resetBackground()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract synthetic setEnableBlur(Z)V
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialConfig;)V

    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-void
.end method

.method public abstract synthetic setSupportBlur(Z)V
.end method

.method public updateBackground(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    if-eqz p1, :cond_8

    .line 171
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->clearBackground()V

    goto :goto_b

    .line 173
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->resetBackground()V

    :goto_b
    return-void
.end method
