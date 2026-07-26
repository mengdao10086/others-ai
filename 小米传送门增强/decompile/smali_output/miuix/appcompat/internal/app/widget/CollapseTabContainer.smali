.class public Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "CollapseTabContainer.java"


# virtual methods
.method getDefaultTabTextStyle()I
    .registers 2

    .line 0
    const v0, 0x10102f5

    return v0
.end method

.method getTabBarLayoutRes()I
    .registers 2

    .line 22
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar:I

    return v0
.end method

.method getTabContainerHeight()I
    .registers 2

    .line 42
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v0

    return v0
.end method

.method getTabViewLayoutRes()I
    .registers 2

    .line 27
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab:I

    return v0
.end method

.method getTabViewMarginHorizontal()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 67
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p1

    .line 70
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 71
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p3

    .line 72
    div-int/lit8 p1, p1, 0x2

    .line 73
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/2addr p3, p1

    invoke-virtual {p5, p2, p1, p4, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method
