.class public abstract Lmiuix/flexible/template/AbstractMarkTemplate;
.super Ljava/lang/Object;
.source "AbstractMarkTemplate.java"

# interfaces
.implements Lmiuix/flexible/template/IHyperCellTemplate;
.implements Lmiuix/flexible/mark/MarkHelper$IParamsGetter;


# static fields
.field protected static final NOT_SET:I = 0x7fffffff


# instance fields
.field private mColumnSpacing:I

.field protected mContext:Landroid/content/Context;

.field protected mDensity:F

.field private mFinishInflate:Z

.field private mGravity:I

.field protected mLevel:I

.field private mLevelCallback:Lmiuix/flexible/view/HyperCellLayout$LevelCallback;

.field private mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

.field private mRowSpacing:I

.field private mViewList:Lmiuix/flexible/mark/ViewList;


# direct methods
.method public static synthetic $r8$lambda$7DiWQ5bM4IlYkKeKPw_XRWMDN-w(Lmiuix/flexible/template/AbstractMarkTemplate;Lmiuix/flexible/mark/ViewNode;Lmiuix/flexible/mark/ViewNode;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->lambda$measureViewList$0(Lmiuix/flexible/mark/ViewNode;Lmiuix/flexible/mark/ViewNode;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mGravity:I

    .line 30
    iput-boolean v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mFinishInflate:Z

    .line 33
    iput v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    .line 34
    iput v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    return-void
.end method

.method protected static addAuxiliaryView(Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 549
    invoke-static {p0, p1, p2, v0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->addAuxiliaryView(Landroid/view/ViewGroup;Landroid/content/Context;III)V

    return-void
.end method

.method protected static addAuxiliaryView(Landroid/view/ViewGroup;Landroid/content/Context;III)V
    .registers 6

    .line 553
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 554
    invoke-virtual {v0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 555
    invoke-static {p2, p3, p4}, Lmiuix/flexible/template/AbstractMarkTemplate;->generateAuxiliaryLayoutParams(III)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    .line 556
    invoke-virtual {p1, p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setAreaId(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 557
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected static generateAuxiliaryLayoutParams(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    const/4 v0, 0x0

    .line 539
    invoke-static {p0, v0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->generateAuxiliaryLayoutParams(III)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected static generateAuxiliaryLayoutParams(III)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 4

    .line 543
    new-instance v0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;-><init>(II)V

    .line 544
    invoke-virtual {v0, p0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setAreaId(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    return-object v0
.end method

.method protected static generateLayoutParams(IFFII)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 14

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 574
    invoke-static/range {v0 .. v8}, Lmiuix/flexible/template/AbstractMarkTemplate;->generateLayoutParams(IFFIIIIII)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected static generateLayoutParams(IFFIIIIII)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 11

    .line 580
    new-instance v0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;-><init>(II)V

    .line 581
    invoke-virtual {v0, p0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setMark(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 582
    invoke-virtual {v0, p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setWeight(F)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 583
    invoke-virtual {v0, p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setGroupWeight(F)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 584
    invoke-virtual {v0, p3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setGravity(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 585
    invoke-virtual {v0, p4}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setOrder(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 586
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 587
    invoke-virtual {v0, p7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 588
    iput p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 589
    iput p8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method private synthetic lambda$measureViewList$0(Lmiuix/flexible/mark/ViewNode;Lmiuix/flexible/mark/ViewNode;)I
    .registers 3

    .line 205
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getViewNodePriority(Lmiuix/flexible/mark/ViewNode;)I

    move-result p1

    .line 206
    invoke-virtual {p0, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->getViewNodePriority(Lmiuix/flexible/mark/ViewNode;)I

    move-result p2

    sub-int/2addr p2, p1

    return p2
.end method

.method private layoutViewList(Lmiuix/flexible/mark/ViewList;ZIII)V
    .registers 23

    move-object/from16 v8, p0

    .line 431
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    add-int v0, p4, v0

    .line 433
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v1

    add-int v1, p5, v1

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 436
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    :goto_1d
    const/16 v10, 0x50

    const/4 v11, 0x5

    if-ltz v3, :cond_53

    .line 437
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/flexible/mark/ViewNode;

    .line 438
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 440
    invoke-virtual {v8, v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v5

    .line 441
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v6

    if-ne v6, v9, :cond_40

    and-int/lit8 v6, v5, 0x7

    if-eq v6, v11, :cond_4a

    .line 443
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v6

    if-nez v6, :cond_50

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v10, :cond_50

    .line 445
    :cond_4a
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 446
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 451
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v6, p4

    move/from16 v7, p5

    move v13, v0

    move v14, v1

    :cond_5d
    :goto_5d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/mark/ViewNode;

    .line 452
    instance-of v1, v0, Lmiuix/flexible/mark/ViewList;

    const/16 v2, 0x10

    if-eqz v1, :cond_e4

    .line 453
    move-object v15, v0

    check-cast v15, Lmiuix/flexible/mark/ViewList;

    .line 454
    invoke-virtual {v15}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/mark/ViewNode;

    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    .line 455
    invoke-virtual {v8, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v0

    .line 458
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v1

    if-ne v1, v9, :cond_a2

    .line 459
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v2, :cond_a2

    .line 460
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-virtual {v15}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    move v5, v0

    move v4, v6

    goto :goto_c1

    .line 461
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v1

    if-nez v1, :cond_bf

    .line 462
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v9, :cond_bf

    .line 463
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-virtual {v15}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    move v4, v0

    :goto_bd
    move v5, v7

    goto :goto_c1

    :cond_bf
    move v4, v6

    goto :goto_bd

    :goto_c1
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move/from16 v3, p3

    .line 465
    invoke-direct/range {v0 .. v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->layoutViewList(Lmiuix/flexible/mark/ViewList;ZIII)V

    .line 466
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v9, :cond_da

    .line 467
    invoke-virtual {v15}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    iget v1, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    goto :goto_5d

    .line 469
    :cond_da
    invoke-virtual {v15}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    iget v1, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    goto/16 :goto_5d

    .line 471
    :cond_e4
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5d

    .line 472
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v1

    .line 473
    invoke-virtual {v8, v1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v3

    .line 474
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v4, v6

    .line 475
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v7

    .line 476
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v15

    if-ne v15, v9, :cond_167

    .line 477
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v15

    and-int/lit8 v15, v15, 0x7

    if-ne v15, v11, :cond_128

    .line 478
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v13, v4

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v15

    sub-int/2addr v4, v15

    .line 479
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v15

    iget v9, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v15, v9

    sub-int/2addr v13, v15

    goto :goto_130

    .line 481
    :cond_128
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v9

    iget v15, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v9, v15

    add-int/2addr v6, v9

    .line 483
    :goto_130
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    if-ne v9, v10, :cond_14e

    .line 484
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v2

    move v5, v0

    :cond_146
    :goto_146
    move v15, v13

    move/from16 v16, v14

    const/4 v9, 0x1

    :goto_14a
    move v13, v6

    move v14, v7

    goto/16 :goto_1c2

    .line 485
    :cond_14e
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    if-ne v9, v2, :cond_146

    .line 486
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    move v5, v2

    goto :goto_146

    .line 489
    :cond_167
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    if-ne v2, v10, :cond_182

    .line 490
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v14, v2

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v2, v5

    .line 491
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v2

    iget v9, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v2, v9

    sub-int/2addr v14, v2

    goto :goto_18a

    .line 493
    :cond_182
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v2

    iget v9, v8, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v2, v9

    add-int/2addr v7, v2

    .line 495
    :goto_18a
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v11, :cond_1a3

    .line 496
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v0, v2

    move v4, v0

    goto :goto_146

    .line 497
    :cond_1a3
    invoke-virtual {v3}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1be

    .line 498
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v2, v0

    move v4, v2

    :cond_1be
    move v15, v13

    move/from16 v16, v14

    goto :goto_14a

    .line 502
    :goto_1c2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v6, v4, v0

    .line 503
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v7, v5, v0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 501
    invoke-virtual/range {v0 .. v7}, Lmiuix/flexible/template/AbstractMarkTemplate;->layoutChildView(Landroid/view/View;ZIIIII)V

    move v6, v13

    move v7, v14

    move v13, v15

    move/from16 v14, v16

    goto/16 :goto_5d

    :cond_1de
    return-void
.end method

.method private measureChildView(Lmiuix/flexible/mark/ViewNode;IIII)V
    .registers 14

    .line 312
    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 319
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_21

    .line 321
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    :goto_1e
    sub-int v2, p2, v2

    goto :goto_36

    :cond_21
    if-ne v2, v4, :cond_35

    if-eq p4, v7, :cond_2a

    if-ne p4, v6, :cond_28

    goto :goto_2a

    :cond_28
    move p4, v3

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p4, v6

    .line 328
    :goto_2b
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    goto :goto_1e

    :cond_35
    move p4, v7

    .line 333
    :goto_36
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne p2, v5, :cond_42

    .line 335
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p2

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_3f
    sub-int p2, p3, p2

    goto :goto_53

    :cond_42
    if-ne p2, v4, :cond_52

    if-eq p5, v7, :cond_4b

    if-ne p5, v6, :cond_49

    goto :goto_4b

    :cond_49
    move p5, v3

    goto :goto_4c

    :cond_4b
    :goto_4b
    move p5, v6

    .line 342
    :goto_4c
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p2

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3f

    :cond_52
    move p5, v7

    .line 348
    :goto_53
    invoke-static {v2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 349
    invoke-static {p2, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 347
    invoke-virtual {v0, p3, p2}, Landroid/view/View;->measure(II)V

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    add-int/2addr p2, p3

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    .line 352
    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->isAnimating()Z

    move-result p4

    if-eqz p4, :cond_9a

    .line 353
    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getAnimSpec()I

    move-result p4

    and-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_8b

    int-to-float p2, p2

    .line 354
    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getAnimationProgress()F

    move-result p4

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 356
    :cond_8b
    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getAnimSpec()I

    move-result p4

    and-int/lit8 p4, p4, 0x2

    if-lez p4, :cond_9a

    int-to-float p3, p3

    .line 357
    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getAnimationProgress()F

    move-result p4

    mul-float/2addr p3, p4

    float-to-int p3, p3

    .line 360
    :cond_9a
    invoke-virtual {p1, p2}, Lmiuix/flexible/mark/ViewNode;->setWidth(I)V

    .line 361
    invoke-virtual {p1, p3}, Lmiuix/flexible/mark/ViewNode;->setHeight(I)V

    :cond_a0
    return-void
.end method

.method private measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V
    .registers 26

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 200
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    new-instance v1, Lmiuix/flexible/template/AbstractMarkTemplate$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lmiuix/flexible/template/AbstractMarkTemplate$$ExternalSyntheticLambda0;-><init>(Lmiuix/flexible/template/AbstractMarkTemplate;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    move v15, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_22
    :goto_22
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v6, 0x8

    const/4 v5, 0x1

    if-eqz v0, :cond_e7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmiuix/flexible/mark/ViewNode;

    .line 211
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getWeight()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_43

    .line 212
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getWeight()F

    move-result v0

    add-float/2addr v15, v0

    .line 213
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 216
    :cond_43
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v5, :cond_4d

    sub-int v0, p3, v13

    move v3, v0

    goto :goto_4f

    :cond_4d
    move/from16 v3, p3

    .line 217
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v5, :cond_58

    move/from16 v16, p4

    goto :goto_5c

    :cond_58
    sub-int v0, p4, v14

    move/from16 v16, v0

    .line 218
    :goto_5c
    instance-of v0, v4, Lmiuix/flexible/mark/ViewList;

    if-eqz v0, :cond_9e

    .line 219
    move-object/from16 v17, v4

    check-cast v17, Lmiuix/flexible/mark/ViewList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v4, v16

    move v6, v5

    move/from16 v5, p5

    move v11, v6

    move/from16 v6, p6

    .line 220
    invoke-direct/range {v0 .. v6}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_8c

    .line 222
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 223
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_9c

    .line 225
    :cond_8c
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 226
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v0, v14

    :goto_9c
    move v14, v0

    goto :goto_22

    :cond_9e
    move v11, v5

    .line 228
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_22

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v3

    move/from16 v3, v16

    move-object v6, v4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 229
    invoke-direct/range {v0 .. v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureChildView(Lmiuix/flexible/mark/ViewNode;IIII)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_d4

    .line 231
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 232
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_9c

    .line 234
    :cond_d4
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 235
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v1

    iget v2, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    move v13, v0

    goto/16 :goto_22

    :cond_e7
    move v11, v5

    .line 239
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ce

    sub-int v0, p3, v13

    .line 240
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    iget v2, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    mul-int/2addr v1, v2

    sub-int v10, v0, v1

    sub-int v0, p4, v14

    .line 241
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    iget v2, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    mul-int/2addr v1, v2

    sub-int v5, v0, v1

    .line 242
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmiuix/flexible/mark/ViewNode;

    .line 243
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_127

    int-to-float v0, v10

    .line 244
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getWeight()F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v15

    float-to-int v0, v0

    move v3, v0

    goto :goto_129

    :cond_127
    move/from16 v3, p3

    .line 245
    :goto_129
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_132

    move/from16 v16, p4

    goto :goto_13c

    :cond_132
    int-to-float v0, v5

    .line 246
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getWeight()F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v15

    float-to-int v0, v0

    move/from16 v16, v0

    .line 247
    :goto_13c
    instance-of v0, v4, Lmiuix/flexible/mark/ViewList;

    if-eqz v0, :cond_17f

    .line 248
    move-object/from16 v17, v4

    check-cast v17, Lmiuix/flexible/mark/ViewList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v4, v16

    move/from16 v18, v5

    move/from16 v5, p5

    move v12, v6

    move/from16 v6, p6

    .line 249
    invoke-direct/range {v0 .. v6}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_16d

    .line 251
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 252
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_17d

    .line 254
    :cond_16d
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 255
    invoke-virtual/range {v17 .. v17}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v0, v14

    :goto_17d
    move v14, v0

    goto :goto_1c8

    :cond_17f
    move/from16 v18, v5

    move v12, v6

    .line 257
    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c8

    invoke-virtual {v4}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_1c8

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v3

    move/from16 v3, v16

    move-object v6, v4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 258
    invoke-direct/range {v0 .. v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureChildView(Lmiuix/flexible/mark/ViewNode;IIII)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_1b7

    .line 260
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    iget v1, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 261
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_17d

    .line 263
    :cond_1b7
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 264
    invoke-virtual {v6}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v1

    iget v2, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    move v13, v0

    :cond_1c8
    :goto_1c8
    move v6, v12

    move/from16 v5, v18

    const/4 v12, 0x0

    goto/16 :goto_10a

    :cond_1ce
    move v12, v6

    .line 269
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getWeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1da

    move v5, v11

    goto :goto_1db

    :cond_1da
    const/4 v5, 0x0

    .line 270
    :goto_1db
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_1e5

    .line 271
    iget v0, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    sub-int/2addr v13, v0

    goto :goto_1e8

    .line 273
    :cond_1e5
    iget v0, v7, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    sub-int/2addr v14, v0

    :goto_1e8
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v5, :cond_1fa

    move/from16 v1, p5

    if-ne v1, v0, :cond_1fa

    if-eqz p1, :cond_1f8

    .line 276
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v1

    if-ne v1, v11, :cond_1fa

    :cond_1f8
    move/from16 v13, p3

    .line 275
    :cond_1fa
    invoke-virtual {v8, v13}, Lmiuix/flexible/mark/ViewNode;->setWidth(I)V

    if-eqz v5, :cond_20d

    move/from16 v1, p6

    if-ne v1, v0, :cond_20d

    if-eqz p1, :cond_20b

    .line 279
    invoke-virtual/range {p1 .. p1}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-nez v0, :cond_20d

    :cond_20b
    move/from16 v14, p4

    .line 278
    :cond_20d
    invoke-virtual {v8, v14}, Lmiuix/flexible/mark/ViewNode;->setHeight(I)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_218
    :goto_218
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2ea

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmiuix/flexible/mark/ViewNode;

    .line 283
    instance-of v0, v1, Lmiuix/flexible/mark/ViewList;

    if-eqz v0, :cond_282

    .line 284
    move-object v2, v1

    check-cast v2, Lmiuix/flexible/mark/ViewList;

    .line 285
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_257

    .line 286
    invoke-virtual {v2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_257

    const/4 v10, 0x0

    .line 287
    invoke-virtual {v7, v2, v10}, Lmiuix/flexible/template/AbstractMarkTemplate;->hasMatchParentChild(Lmiuix/flexible/mark/ViewList;I)Z

    move-result v0

    if-eqz v0, :cond_258

    .line 288
    invoke-virtual {v2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V

    goto :goto_218

    :cond_257
    const/4 v10, 0x0

    .line 290
    :cond_258
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-nez v0, :cond_218

    .line 291
    invoke-virtual {v2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_218

    .line 292
    invoke-virtual {v7, v2, v11}, Lmiuix/flexible/template/AbstractMarkTemplate;->hasMatchParentChild(Lmiuix/flexible/mark/ViewList;I)Z

    move-result v0

    if-eqz v0, :cond_218

    .line 293
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V

    goto :goto_218

    :cond_282
    const/4 v10, 0x0

    .line 296
    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_218

    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_218

    .line 297
    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v0

    .line 298
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c3

    .line 299
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v2

    if-ne v2, v11, :cond_2c3

    .line 300
    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_2c3

    .line 301
    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureChildView(Lmiuix/flexible/mark/ViewNode;IIII)V

    goto/16 :goto_218

    .line 302
    :cond_2c3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v3, :cond_218

    .line 303
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewList;->getOrientation()I

    move-result v0

    if-nez v0, :cond_218

    .line 304
    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_218

    .line 305
    invoke-virtual/range {p2 .. p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureChildView(Lmiuix/flexible/mark/ViewNode;IIII)V

    goto/16 :goto_218

    :cond_2ea
    return-void
.end method


# virtual methods
.method public applyLevel()V
    .registers 1

    .line 0
    return-void
.end method

.method public buildViewTree(Landroid/view/ViewGroup;)V
    .registers 6

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 108
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 112
    :cond_12
    invoke-static {v1, p0}, Lmiuix/flexible/mark/MarkHelper;->buildViewNodeTree([Landroid/view/View;Lmiuix/flexible/mark/MarkHelper$IParamsGetter;)Lmiuix/flexible/mark/ViewList;

    move-result-object p1

    iput-object p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    return-void
.end method

.method public createLevelSupplier()Lmiuix/flexible/template/level/LevelSupplier;
    .registers 3

    .line 522
    new-instance v0, Lmiuix/flexible/template/level/FontLevelSupplier;

    iget-object v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/flexible/template/level/FontLevelSupplier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected dp2px(F)I
    .registers 3

    .line 644
    iget v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mDensity:F

    invoke-static {v0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    return p1
.end method

.method protected findViewByAreaId(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 4

    .line 648
    instance-of v0, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v0, :cond_b

    .line 649
    check-cast p1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {p1, p2}, Lmiuix/flexible/view/HyperCellLayout;->findViewByAreaId(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 6

    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 562
    instance-of v1, v0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    if-eqz v1, :cond_b

    .line 563
    check-cast v0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    return-object v0

    .line 565
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutParams "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of child view "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not instance of HyperCellLayout.LayoutParams! Context is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnSpacing()I
    .registers 2

    .line 663
    iget v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 655
    iget v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mGravity:I

    return v0
.end method

.method public getGroupWeight(Landroid/view/View;)F
    .registers 4

    .line 94
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    .line 96
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGroupWeight()F

    move-result p1

    return p1

    .line 98
    :cond_11
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGroupWeight()F

    move-result p1

    return p1
.end method

.method public abstract getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
.end method

.method public final getLevel()I
    .registers 2

    .line 516
    iget-object v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

    invoke-interface {v0}, Lmiuix/flexible/template/level/LevelSupplier;->getLevel()I

    move-result v0

    iput v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevel:I

    return v0
.end method

.method public getMark(Landroid/view/View;)I
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getMark()I

    move-result p1

    return p1
.end method

.method public getOrder(Landroid/view/View;)I
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getOrder()I

    move-result p1

    return p1
.end method

.method public getRowSpacing()I
    .registers 2

    .line 671
    iget v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    return v0
.end method

.method protected getViewNodePriority(Lmiuix/flexible/mark/ViewNode;)I
    .registers 4

    .line 367
    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 368
    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getPriority()I

    move-result p1

    goto :goto_2a

    .line 369
    :cond_13
    instance-of v0, p1, Lmiuix/flexible/mark/ViewList;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 370
    check-cast p1, Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/flexible/mark/ViewNode;

    .line 371
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getViewNodePriority(Lmiuix/flexible/mark/ViewNode;)I

    move-result p1

    goto :goto_2a

    :cond_29
    move p1, v1

    :goto_2a
    return p1
.end method

.method public getWeight(Landroid/view/View;)F
    .registers 4

    .line 85
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_11

    .line 87
    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getWeight()F

    move-result p1

    return p1

    .line 89
    :cond_11
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getWeight()F

    move-result p1

    return p1
.end method

.method protected hasMatchParentChild(Lmiuix/flexible/mark/ViewList;I)Z
    .registers 6

    .line 377
    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewList;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/mark/ViewNode;

    .line 378
    instance-of v1, v0, Lmiuix/flexible/mark/ViewList;

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 379
    check-cast v0, Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p0, v0, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->hasMatchParentChild(Lmiuix/flexible/mark/ViewList;I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 382
    :cond_22
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 383
    invoke-virtual {v0}, Lmiuix/flexible/mark/ViewNode;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v2, :cond_38

    .line 386
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_8

    goto :goto_3c

    .line 388
    :cond_38
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_8

    :goto_3c
    return v2

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 38
    iput-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mDensity:F

    if-eqz p3, :cond_4f

    .line 41
    sget-object p1, Lmiuix/flexible/R$styleable;->HyperCellLayout:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_1c
    if-ge v0, p2, :cond_4c

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 45
    sget v2, Lmiuix/flexible/R$styleable;->HyperCellLayout_android_gravity:I

    if-ne v1, v2, :cond_2d

    .line 46
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mGravity:I

    goto :goto_49

    .line 47
    :cond_2d
    sget v2, Lmiuix/flexible/R$styleable;->HyperCellLayout_column_spacing:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3d

    .line 48
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    goto :goto_49

    .line 49
    :cond_3d
    sget v2, Lmiuix/flexible/R$styleable;->HyperCellLayout_row_spacing:I

    if-ne v1, v2, :cond_49

    .line 50
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 53
    :cond_4c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :cond_4f
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;->createLevelSupplier()Lmiuix/flexible/template/level/LevelSupplier;

    move-result-object p1

    iput-object p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

    return-void
.end method

.method public layoutChildView(Landroid/view/View;ZIIIII)V
    .registers 9

    if-eqz p2, :cond_5

    sub-int v0, p3, p6

    goto :goto_6

    :cond_5
    move v0, p4

    :goto_6
    if-eqz p2, :cond_a

    sub-int p6, p3, p4

    .line 511
    :cond_a
    invoke-virtual {p1, v0, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onAddAuxiliaryViews(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAttachedToWindow(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onConfigurationChanged(Landroid/view/ViewGroup;Landroid/content/res/Configuration;)V
    .registers 5

    .line 143
    iget-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 144
    iget v0, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevel:I

    .line 145
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;->getLevel()I

    .line 146
    iget-boolean v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mFinishInflate:Z

    if-eqz v1, :cond_37

    iget v1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mDensity:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v1, 0x3a83126f    # 0.001f

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_27

    iget p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevel:I

    if-eq v0, p2, :cond_37

    .line 148
    :cond_27
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->onPreBuildViewTree(Landroid/view/ViewGroup;)V

    .line 149
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->buildViewTree(Landroid/view/ViewGroup;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 151
    iget p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mLevel:I

    if-eq v0, p1, :cond_37

    .line 152
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;->applyLevel()V

    :cond_37
    return-void
.end method

.method public onDetachedFromWindow(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFinishInflate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->onAddAuxiliaryViews(Landroid/view/ViewGroup;)V

    .line 61
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->onPreBuildViewTree(Landroid/view/ViewGroup;)V

    .line 62
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->buildViewTree(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mFinishInflate:Z

    .line 64
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;->applyLevel()V

    return-void
.end method

.method public onLayout(Landroid/view/ViewGroup;ZIIII)V
    .registers 14

    .line 401
    iget-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    if-eqz p2, :cond_83

    .line 402
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    move v3, v0

    goto :goto_f

    :cond_d
    const/4 p2, 0x0

    move v3, p2

    :goto_f
    sub-int v4, p5, p3

    sub-int/2addr p6, p4

    .line 406
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p2

    .line 407
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 408
    iget p4, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mGravity:I

    and-int/lit8 p5, p4, 0x70

    and-int/lit8 p4, p4, 0x7

    const/16 v1, 0x10

    if-ne p5, v1, :cond_3e

    .line 411
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 412
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    sub-int/2addr p6, p5

    .line 413
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p6, p5

    iget-object p5, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p5}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result p5

    sub-int/2addr p6, p5

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p3, p6

    :cond_3c
    move v6, p3

    goto :goto_4f

    :cond_3e
    const/16 v1, 0x50

    if-ne p5, v1, :cond_3c

    .line 415
    iget-object p3, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p3}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result p3

    sub-int/2addr p6, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p6, p3

    move v6, p6

    :goto_4f
    if-ne p4, v0, :cond_6c

    .line 418
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p2

    .line 419
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p3

    sub-int p3, v4, p3

    .line 420
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p1}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    :cond_6a
    :goto_6a
    move v5, p2

    goto :goto_7d

    :cond_6c
    const/4 p3, 0x5

    if-ne p4, p3, :cond_6a

    .line 422
    iget-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result p2

    sub-int p2, v4, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p2, p1

    goto :goto_6a

    .line 424
    :goto_7d
    iget-object v2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmiuix/flexible/template/AbstractMarkTemplate;->layoutViewList(Lmiuix/flexible/mark/ViewList;ZIII)V

    :cond_83
    return-void
.end method

.method public onMeasure(Landroid/view/ViewGroup;II)[I
    .registers 13

    .line 159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 160
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 161
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 162
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 163
    iget-object v4, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    if-eqz v4, :cond_71

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    sub-int v5, v2, v3

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int v6, v2, v3

    const/4 v3, 0x0

    move-object v2, p0

    move v7, p2

    move v8, p3

    .line 164
    invoke-direct/range {v2 .. v8}, Lmiuix/flexible/template/AbstractMarkTemplate;->measureViewList(Lmiuix/flexible/mark/ViewList;Lmiuix/flexible/mark/ViewList;IIII)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_38

    goto :goto_48

    .line 173
    :cond_38
    iget-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p2}, Lmiuix/flexible/mark/ViewNode;->getWidth()I

    move-result p2

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    add-int/2addr v0, p2

    :goto_48
    if-ne p3, v2, :cond_4b

    goto :goto_5c

    .line 179
    :cond_4b
    iget-object p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mViewList:Lmiuix/flexible/mark/ViewList;

    invoke-virtual {p2}, Lmiuix/flexible/mark/ViewNode;->getHeight()I

    move-result p2

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    add-int v1, p2, p3

    .line 182
    :goto_5c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMinimumWidth()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 184
    filled-new-array {p2, p1}, [I

    move-result-object p1

    return-object p1

    .line 186
    :cond_71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result p1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public onPreBuildViewTree(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onViewAdded(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 127
    iget-boolean p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mFinishInflate:Z

    if-eqz p2, :cond_a

    .line 128
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->onPreBuildViewTree(Landroid/view/ViewGroup;)V

    .line 129
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->buildViewTree(Landroid/view/ViewGroup;)V

    :cond_a
    return-void
.end method

.method public onViewRemoved(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 135
    iget-boolean p2, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mFinishInflate:Z

    if-eqz p2, :cond_a

    .line 136
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->onPreBuildViewTree(Landroid/view/ViewGroup;)V

    .line 137
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->buildViewTree(Landroid/view/ViewGroup;)V

    :cond_a
    return-void
.end method

.method public setColumnSpacing(I)V
    .registers 2

    .line 667
    iput p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mColumnSpacing:I

    return-void
.end method

.method public setGravity(I)V
    .registers 2

    .line 659
    iput p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mGravity:I

    return-void
.end method

.method protected setGravity(Lmiuix/flexible/view/HyperCellLayout$LayoutParams;Lmiuix/flexible/view/HyperCellLayout$LayoutParams;)V
    .registers 5

    .line 613
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_18

    .line 614
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_18

    .line 615
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGravity()I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setGravity(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    :cond_18
    return-void
.end method

.method public setLevelCallback(Lmiuix/flexible/view/HyperCellLayout$LevelCallback;)V
    .registers 2

    .line 535
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;->applyLevel()V

    return-void
.end method

.method protected setMargin(Lmiuix/flexible/view/HyperCellLayout$LayoutParams;Lmiuix/flexible/view/HyperCellLayout$LayoutParams;)V
    .registers 5

    .line 594
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const v1, 0x7fffffff

    if-nez v0, :cond_1d

    .line 595
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 596
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 598
    :cond_1d
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_37

    .line 599
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq v0, v1, :cond_37

    .line 600
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 602
    :cond_37
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v0, v1, :cond_4a

    int-to-float v0, v0

    .line 604
    invoke-virtual {p0, v0}, Lmiuix/flexible/template/AbstractMarkTemplate;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 606
    :cond_4a
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5d

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, v1, :cond_5d

    int-to-float p2, p2

    .line 608
    invoke-virtual {p0, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5d
    return-void
.end method

.method protected setPriority(Lmiuix/flexible/view/HyperCellLayout$LayoutParams;Lmiuix/flexible/view/HyperCellLayout$LayoutParams;)V
    .registers 5

    .line 620
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const v1, 0x7fffffff

    if-nez v0, :cond_18

    .line 621
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getPriority()I

    move-result v0

    if-eq v0, v1, :cond_18

    .line 622
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getPriority()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setPriority(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    .line 624
    :cond_18
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2d

    .line 625
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGroupPriority()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 626
    invoke-virtual {p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getGroupPriority()I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->setGroupPriority(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    :cond_2d
    return-void
.end method

.method public setRowSpacing(I)V
    .registers 2

    .line 675
    iput p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate;->mRowSpacing:I

    return-void
.end method

.method protected setWidthHeight(Lmiuix/flexible/view/HyperCellLayout$LayoutParams;Lmiuix/flexible/view/HyperCellLayout$LayoutParams;)V
    .registers 5

    .line 631
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const v1, 0x7fffffff

    if-nez v0, :cond_11

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v0, v1, :cond_11

    .line 633
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 635
    :cond_11
    invoke-virtual {p1}, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->getCustomParams()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1f

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq p2, v1, :cond_1f

    .line 637
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_1f
    return-void
.end method
