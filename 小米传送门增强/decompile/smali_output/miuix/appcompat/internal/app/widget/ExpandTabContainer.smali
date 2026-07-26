.class public Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "ExpandTabContainer.java"


# instance fields
.field private mTabSizeStages:[I


# direct methods
.method private measureTabViewSizeStage2([III)V
    .registers 12

    const/4 p3, 0x0

    .line 66
    aget v0, p1, p3

    .line 67
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->getTabViewMarginHorizontal()I

    move-result v1

    move v2, p3

    .line 68
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_5a

    .line 69
    aget v0, p1, v2

    const/4 v3, 0x0

    move v4, p3

    move v5, v4

    .line 72
    :goto_10
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_48

    .line 73
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v6}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_45

    if-nez v3, :cond_32

    .line 76
    new-instance v3, Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    add-int/2addr v5, v1

    :cond_32
    int-to-float v7, v0

    .line 79
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    int-to-float v5, v5

    .line 80
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 83
    :cond_48
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt v5, v3, :cond_57

    goto :goto_5a

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5a
    :goto_5a
    move p1, p3

    .line 87
    :goto_5b
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_78

    .line 88
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_75

    int-to-float v1, v0

    .line 90
    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_75
    add-int/lit8 p1, p1, 0x1

    goto :goto_5b

    :cond_78
    return-void
.end method


# virtual methods
.method getDefaultTabTextStyle()I
    .registers 2

    .line 51
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextExpandStyle:I

    return v0
.end method

.method getTabBarLayoutRes()I
    .registers 2

    .line 29
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar_expand:I

    return v0
.end method

.method getTabContainerHeight()I
    .registers 2

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method getTabViewLayoutRes()I
    .registers 2

    .line 34
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab_expand:I

    return v0
.end method

.method getTabViewMarginHorizontal()I
    .registers 3

    .line 46
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .registers 6

    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->measureTabViewSizeStage2([III)V

    .line 62
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onMeasure(II)V

    return-void
.end method
