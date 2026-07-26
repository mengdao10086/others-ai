.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2;
.source "SecondaryTabContainerView.java"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
    }
.end annotation


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I


# virtual methods
.method public asViewGroup()Landroid/view/ViewGroup;
    .registers 1

    .line 0
    return-object p0
.end method

.method protected getDefaultTabTextStyle()I
    .registers 2

    .line 224
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryStyle:I

    return v0
.end method

.method protected getTabActivatedTextStyle()I
    .registers 2

    .line 228
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryStyle:I

    return v0
.end method

.method getTabContainerHeight()I
    .registers 2

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 138
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_b

    const/high16 p2, 0x40000000    # 2.0f

    .line 139
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 141
    :cond_b
    invoke-super {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->onMeasure(II)V

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method protected setContentHeight(I)V
    .registers 3

    .line 145
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    if-eq v0, p1, :cond_9

    .line 146
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->mContentHeight:I

    .line 147
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setParentBlurEnabled(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setTabSelected(I)V
    .registers 2

    .line 197
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    return-void
.end method
