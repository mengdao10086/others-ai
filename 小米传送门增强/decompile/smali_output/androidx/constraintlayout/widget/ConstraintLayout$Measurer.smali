.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "l"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private isSimilarSpec(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastMeasureSpec",
            "spec",
            "widgetSize"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 909
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 910
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 911
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 912
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_20

    const/high16 p1, -0x80000000

    if-eq v1, p1, :cond_1d

    if-nez v1, :cond_20

    :cond_1d
    if-ne p3, p2, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec",
            "top",
            "bottom",
            "width",
            "height"
        }
    .end annotation

    .line 629
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 630
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 631
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 632
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 633
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 634
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 923
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 925
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 926
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_1b

    .line 927
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 931
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    :goto_2a
    if-ge v1, v0, :cond_40

    .line 934
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 935
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "measure"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    .line 648
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 649
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 650
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 651
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 654
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_26

    return-void

    .line 665
    :cond_26
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 666
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 668
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 669
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 674
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v8, v9

    .line 675
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 679
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v12, v5, :cond_b1

    if-eq v12, v15, :cond_a7

    if-eq v12, v14, :cond_98

    if-eq v12, v13, :cond_52

    const/4 v6, 0x0

    goto/16 :goto_b7

    .line 695
    :cond_52
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 696
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v5, :cond_5f

    move v9, v5

    goto :goto_60

    :cond_5f
    const/4 v9, 0x0

    .line 697
    :goto_60
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v12, v13, :cond_6a

    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v12, v13, :cond_b7

    .line 703
    :cond_6a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    if-ne v12, v13, :cond_76

    move v12, v5

    goto :goto_77

    :cond_76
    const/4 v12, 0x0

    .line 704
    :goto_77
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v13, v14, :cond_8d

    if-eqz v9, :cond_8d

    if-eqz v9, :cond_83

    if-nez v12, :cond_8d

    :cond_83
    instance-of v9, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v9, :cond_8d

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 710
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b7

    :cond_98
    const/high16 v12, 0x40000000    # 2.0f

    .line 690
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v13

    add-int/2addr v9, v13

    const/4 v13, -0x1

    .line 690
    invoke-static {v6, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b7

    :cond_a7
    const/high16 v12, 0x40000000    # 2.0f

    .line 685
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v13, -0x2

    invoke-static {v6, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b7

    :cond_b1
    const/high16 v12, 0x40000000    # 2.0f

    .line 681
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 717
    :cond_b7
    :goto_b7
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v5, :cond_129

    if-eq v9, v15, :cond_11f

    const/4 v7, 0x3

    if-eq v9, v7, :cond_110

    const/4 v7, 0x4

    if-eq v9, v7, :cond_ca

    const/4 v7, 0x0

    goto/16 :goto_12f

    .line 734
    :cond_ca
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 736
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v8, v5, :cond_d7

    move v8, v5

    goto :goto_d8

    :cond_d7
    const/4 v8, 0x0

    .line 737
    :goto_d8
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v9, v11, :cond_e2

    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v9, v11, :cond_12f

    .line 743
    :cond_e2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_ee

    move v9, v5

    goto :goto_ef

    :cond_ee
    const/4 v9, 0x0

    .line 744
    :goto_ef
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v11, v12, :cond_105

    if-eqz v8, :cond_105

    if-eqz v8, :cond_fb

    if-nez v9, :cond_105

    :cond_fb
    instance-of v8, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v8, :cond_105

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 750
    :cond_105
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_12f

    :cond_110
    const/high16 v9, 0x40000000    # 2.0f

    .line 729
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    .line 729
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_12f

    :cond_11f
    const/high16 v9, 0x40000000    # 2.0f

    .line 723
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_12f

    :cond_129
    const/high16 v9, 0x40000000    # 2.0f

    .line 719
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 757
    :cond_12f
    :goto_12f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v8, :cond_1ac

    .line 758
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    const/16 v11, 0x100

    invoke-static {v9, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 759
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_1ac

    .line 762
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    if-ge v9, v11, :cond_1ac

    .line 763
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    if-ne v9, v11, :cond_1ac

    .line 764
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ge v9, v8, :cond_1ac

    .line 765
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v9

    if-ne v8, v9, :cond_1ac

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-nez v8, :cond_1ac

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-direct {v0, v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v8

    if-eqz v8, :cond_1ac

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-direct {v0, v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v8

    if-eqz v8, :cond_1ac

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 783
    :cond_1ac
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_1b2

    move v9, v5

    goto :goto_1b3

    :cond_1b2
    const/4 v9, 0x0

    :goto_1b3
    if-ne v4, v8, :cond_1b7

    move v8, v5

    goto :goto_1b8

    :cond_1b7
    const/4 v8, 0x0

    .line 786
    :goto_1b8
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v11, :cond_1c3

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_1c1

    goto :goto_1c3

    :cond_1c1
    const/4 v4, 0x0

    goto :goto_1c4

    :cond_1c3
    :goto_1c3
    move v4, v5

    :goto_1c4
    if-eq v3, v11, :cond_1cd

    .line 788
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_1cb

    goto :goto_1cd

    :cond_1cb
    const/4 v3, 0x0

    goto :goto_1ce

    :cond_1cd
    :goto_1cd
    move v3, v5

    :goto_1ce
    const/4 v11, 0x0

    if-eqz v9, :cond_1d9

    .line 790
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_1d9

    move v12, v5

    goto :goto_1da

    :cond_1d9
    const/4 v12, 0x0

    :goto_1da
    if-eqz v8, :cond_1e4

    .line 791
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_1e4

    move v11, v5

    goto :goto_1e5

    :cond_1e4
    const/4 v11, 0x0

    :goto_1e5
    if-nez v10, :cond_1e8

    return-void

    .line 796
    :cond_1e8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 802
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v14, v15, :cond_20b

    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v14, v15, :cond_20b

    if-eqz v9, :cond_20b

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v9, :cond_20b

    if-eqz v8, :cond_20b

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_205

    goto :goto_20b

    :cond_205
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2a6

    .line 807
    :cond_20b
    :goto_20b
    instance-of v8, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v8, :cond_21d

    instance-of v8, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v8, :cond_21d

    .line 808
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 809
    move-object v9, v10

    check-cast v9, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v9, v8, v6, v7}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    goto :goto_220

    .line 811
    :cond_21d
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 813
    :goto_220
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 815
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 816
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 817
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 827
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v15, :cond_238

    .line 828
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_239

    :cond_238
    move v15, v8

    .line 830
    :goto_239
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v5, :cond_241

    .line 831
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 833
    :cond_241
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_24c

    .line 834
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v6

    goto :goto_24f

    :cond_24c
    move/from16 v16, v6

    move v5, v9

    .line 836
    :goto_24f
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v6, :cond_257

    .line 837
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 840
    :cond_257
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/4 v0, 0x1

    invoke-static {v6, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v6

    if-nez v6, :cond_27b

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v12, :cond_271

    if-eqz v4, :cond_271

    .line 843
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v15, v4

    goto :goto_27b

    :cond_271
    if-eqz v11, :cond_27b

    if-eqz v3, :cond_27b

    .line 846
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v5, v4

    :cond_27b
    :goto_27b
    if-ne v8, v15, :cond_282

    if-eq v9, v5, :cond_280

    goto :goto_282

    :cond_280
    :goto_280
    const/4 v0, -0x1

    goto :goto_2a6

    :cond_282
    :goto_282
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v15, :cond_28b

    .line 853
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_28d

    :cond_28b
    move/from16 v6, v16

    :goto_28d
    if-eq v9, v5, :cond_293

    .line 856
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 858
    :cond_293
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 860
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 861
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 862
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v14

    goto :goto_280

    :goto_2a6
    if-eq v14, v0, :cond_2aa

    const/4 v0, 0x1

    goto :goto_2ab

    :cond_2aa
    const/4 v0, 0x0

    .line 874
    :goto_2ab
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v15, v3, :cond_2b6

    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v5, v3, :cond_2b4

    goto :goto_2b6

    :cond_2b4
    const/4 v3, 0x0

    goto :goto_2b7

    :cond_2b6
    :goto_2b6
    const/4 v3, 0x1

    :goto_2b7
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 876
    iget-boolean v3, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v3, :cond_2be

    const/4 v0, 0x1

    :cond_2be
    if-eqz v0, :cond_2cc

    const/4 v3, -0x1

    if-eq v14, v3, :cond_2cc

    .line 879
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v14, :cond_2cc

    const/4 v1, 0x1

    .line 880
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 882
    :cond_2cc
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 883
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 884
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 885
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
