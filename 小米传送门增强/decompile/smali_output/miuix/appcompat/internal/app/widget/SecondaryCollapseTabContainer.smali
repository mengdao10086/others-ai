.class public Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;
.super Lmiuix/springback/view/SpringBackLayout;
.source "SecondaryCollapseTabContainer.java"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;


# instance fields
.field private final mTabContainer:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;


# virtual methods
.method public asViewGroup()Landroid/view/ViewGroup;
    .registers 1

    .line 0
    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 26
    invoke-super/range {p0 .. p5}, Lmiuix/springback/view/SpringBackLayout;->onLayout(ZIIII)V

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->canScrollHorizontally()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    return-void
.end method

.method public setParentBlurEnabled(Z)V
    .registers 3

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setParentBlurEnabled(Z)V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 3

    .line 98
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;->mTabContainer:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setTabSelected(I)V

    return-void
.end method
