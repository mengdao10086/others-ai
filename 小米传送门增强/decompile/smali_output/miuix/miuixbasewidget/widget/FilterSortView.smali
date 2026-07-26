.class public Lmiuix/miuixbasewidget/widget/FilterSortView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    }
.end annotation


# instance fields
.field private mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field private mEnabled:Z

.field private mFilteredId:I

.field private mFilteredUpdated:Z

.field private final mPadding:I

.field private mTabCount:I

.field private final mTabViewChildIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_oTpP-kKlxEfMdSAkG2yGrCCSpE(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateFiltered$0(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .registers 3

    .line 374
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshTabState()V
    .registers 4

    const/4 v0, 0x0

    .line 315
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 316
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 317
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v2, :cond_16

    .line 318
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 319
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .registers 4

    .line 367
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 368
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    :cond_e
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 371
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 372
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 374
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$$ExternalSyntheticLambda0;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    return v0
.end method

.method public getFilterHoverListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnFilteredListener()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabCount()I
    .registers 2

    .line 276
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    return v0
.end method

.method protected getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_5

    return-object v1

    .line 250
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabCount:I

    sub-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 252
    instance-of v0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v0, :cond_18

    .line 253
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    return-object p1

    :cond_18
    return-object v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 399
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 338
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 339
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_28

    .line 340
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p1

    .line 341
    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 342
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    .line 343
    iget-object p4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    .line 344
    iget-object p5, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 346
    :cond_28
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_45

    iget-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    if-nez p2, :cond_45

    .line 347
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz p1, :cond_45

    .line 349
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 350
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_45

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    :cond_45
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 326
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 327
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_36

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_36

    .line 328
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 329
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 330
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 331
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 329
    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_36
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 307
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 308
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    if-eq v0, p1, :cond_c

    .line 309
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 310
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->refreshTabState()V

    :cond_c
    return-void
.end method

.method public setFilteredTab(I)V
    .registers 2

    .line 215
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 217
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    :cond_9
    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .registers 4

    .line 227
    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 228
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    :cond_e
    const/4 v0, 0x1

    .line 230
    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 231
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method protected setFilteredUpdated(Z)V
    .registers 2

    .line 281
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .registers 5

    const/4 v0, 0x0

    .line 205
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 206
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    instance-of v2, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v2, :cond_14

    .line 208
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 209
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method protected updateChildIdsFromXml()V
    .registers 7

    .line 285
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4a

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3c

    .line 288
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 289
    instance-of v3, v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v3, :cond_39

    .line 290
    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 291
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    if-eq v3, v4, :cond_39

    const/4 v3, 0x0

    .line 292
    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 293
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 298
    :cond_3c
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 299
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 300
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 301
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4a
    return-void
.end method

.method protected updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 378
    :goto_2
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 379
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 380
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v3, -0x2

    .line 381
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalWeight(IF)V

    if-nez v1, :cond_26

    move v6, v0

    goto :goto_35

    .line 384
    :cond_26
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v6, v3

    .line 385
    :goto_35
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_41

    move v9, v0

    goto :goto_50

    :cond_41
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v9, v3

    .line 386
    :goto_50
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->centerVertically(II)V

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-nez v6, :cond_59

    move v7, v11

    goto :goto_5a

    :cond_59
    move v7, v10

    :goto_5a
    if-nez v6, :cond_60

    .line 388
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    move v8, v3

    goto :goto_61

    :cond_60
    move v8, v0

    :goto_61
    const/4 v5, 0x6

    move-object v3, p1

    move v4, v2

    .line 387
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    if-nez v9, :cond_6b

    move v7, v10

    goto :goto_6c

    :cond_6b
    move v7, v11

    :goto_6c
    if-nez v9, :cond_72

    .line 390
    iget v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    move v8, v3

    goto :goto_73

    :cond_72
    move v8, v0

    :goto_73
    const/4 v5, 0x7

    move-object v3, p1

    move v4, v2

    move v6, v9

    .line 389
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v7, 0x3

    .line 392
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v7, 0x4

    .line 393
    iget v8, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    const/4 v5, 0x4

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8d
    return-void
.end method
