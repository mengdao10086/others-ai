.class public Lmiuix/miuixbasewidget/widget/FilterSortView2;
.super Landroid/widget/HorizontalScrollView;
.source "FilterSortView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    }
.end annotation


# instance fields
.field private final mDeviceType:I

.field private mEnabled:Z

.field private mFilteredId:I

.field protected mIsParentApplyBlur:Z

.field private mLayoutConfig:I

.field private mTabCount:I

.field private final mTabViewChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;


# direct methods
.method private addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 4

    .line 229
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    .line 231
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 232
    invoke-virtual {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    .line 233
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkView(Landroid/view/View;)V
    .registers 3

    .line 152
    instance-of p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz p1, :cond_5

    return-void

    .line 153
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal View! Only support TabView!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private refreshTabState()V
    .registers 4

    const/4 v0, 0x0

    .line 348
    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 349
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 350
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v2, :cond_1a

    .line 351
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 352
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setEnabled(Z)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method


# virtual methods
.method protected addTabViewAt(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V
    .registers 6

    if-eqz p1, :cond_26

    .line 270
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    const/4 v1, -0x2

    if-gt p2, v0, :cond_15

    if-gez p2, :cond_a

    goto :goto_15

    .line 273
    :cond_a
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 271
    :cond_15
    :goto_15
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :goto_20
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    :cond_26
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 121
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_10

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_c

    .line 131
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 133
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 127
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-ne v0, p1, :cond_8

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 146
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->checkView(Landroid/view/View;)V

    .line 147
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;I)V

    :goto_10
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 4

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 105
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 107
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public getEnabled()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    return v0
.end method

.method protected getTabCount()I
    .registers 2

    .line 310
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    return v0
.end method

.method protected getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_5

    return-object v1

    .line 283
    :cond_5
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabCount:I

    sub-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 284
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 285
    instance-of v0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v0, :cond_1c

    .line 286
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object p1

    :cond_1c
    return-object v1
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    const/16 v3, 0x280

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3a

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 79
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 80
    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v2, v4, :cond_5a

    const/16 v2, 0x19a

    if-le v0, v2, :cond_5a

    if-le v1, v3, :cond_5a

    goto :goto_54

    :cond_3a
    if-ne v2, v6, :cond_51

    .line 84
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 85
    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mDeviceType:I

    if-ne v1, v4, :cond_5a

    if-le v0, v3, :cond_5a

    goto :goto_54

    :cond_51
    const/4 v0, 0x3

    if-ne v2, v0, :cond_56

    :goto_54
    move v4, v6

    goto :goto_5b

    :cond_56
    const/4 v0, 0x4

    if-ne v2, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v7

    .line 93
    :goto_5b
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0, v4}, Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;->setTabViewLayoutMode(I)V

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 340
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 341
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    if-eq v0, p1, :cond_c

    .line 342
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mEnabled:Z

    .line 343
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->refreshTabState()V

    :cond_c
    return-void
.end method

.method public setFilteredTab(I)V
    .registers 4

    .line 314
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 316
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 317
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_14
    const/4 v0, 0x1

    .line 319
    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 321
    :cond_18
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 4

    .line 261
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 262
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mFilteredId:I

    :cond_e
    const/4 v0, 0x1

    .line 264
    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    .line 265
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->updateChildIdsFromXml()V

    return-void
.end method

.method public setLayoutConfig(I)V
    .registers 3

    .line 113
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    if-eq v0, p1, :cond_9

    .line 114
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mLayoutConfig:I

    .line 115
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setParentApplyBlur(Z)V
    .registers 7

    .line 158
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    if-eq v0, p1, :cond_6

    .line 159
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mIsParentApplyBlur:Z

    .line 161
    :cond_6
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    if-eqz v0, :cond_21

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    .line 165
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 166
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v4, :cond_1e

    .line 167
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 169
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method public setTabIndicatorVisibility(I)V
    .registers 5

    const/4 v0, 0x0

    .line 246
    :goto_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 247
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 248
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v2, :cond_18

    .line 249
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 250
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setIndicatorVisibility(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method protected updateChildIdsFromXml()V
    .registers 5

    .line 325
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 326
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2d

    .line 328
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewContainerView:Lmiuix/miuixbasewidget/widget/internal/TabViewContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 329
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v3, :cond_2a

    .line 330
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 331
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2;->mTabViewChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 334
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_30
    return-void
.end method
