.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    }
.end annotation


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 899
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 900
    iget-object p4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p4, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 901
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 902
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .registers 9

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 919
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1b

    .line 921
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    :goto_19
    move v3, v4

    goto :goto_27

    .line 922
    :cond_1b
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_26

    .line 924
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_19

    :cond_26
    const/4 v3, 0x0

    .line 927
    :goto_27
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_32

    .line 929
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_3e

    .line 930
    :cond_32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3d

    .line 932
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v4, v3

    :goto_3e
    if-eqz v4, :cond_55

    const/high16 v0, 0x40000000    # 2.0f

    .line 935
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 937
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 938
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 939
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 940
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    :cond_55
    return-void
.end method

.method private ensureChildrenFrozen(I)V
    .registers 4

    .line 1018
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v0, :cond_e

    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    move p1, v0

    .line 1019
    :cond_9
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_20

    .line 1020
    :cond_e
    array-length v1, v0

    if-ge v1, p1, :cond_1c

    .line 1021
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_17

    move p1, v0

    .line 1022
    :cond_17
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_20

    :cond_1c
    const/4 p1, 0x0

    .line 1024
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_20
    return-void
.end method

.method private evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V
    .registers 7

    .line 646
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 647
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    .line 648
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    .line 650
    invoke-static {p1}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_17

    move v4, v3

    goto :goto_1b

    .line 651
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    :goto_1b
    if-nez p1, :cond_1e

    goto :goto_22

    .line 652
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    :goto_22
    const/4 p1, -0x1

    if-ne v1, p1, :cond_26

    move v1, v4

    .line 653
    :cond_26
    invoke-interface {v0, v1}, Lcom/google/android/flexbox/FlexItem;->setMinWidth(I)V

    if-ne v2, p1, :cond_2c

    move v2, v3

    .line 654
    :cond_2c
    invoke-interface {v0, v2}, Lcom/google/android/flexbox/FlexItem;->setMinHeight(I)V

    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .registers 29

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1043
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_20e

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v2, :cond_13

    goto/16 :goto_20e

    :cond_13
    sub-int v5, v4, v2

    int-to-float v5, v5

    div-float/2addr v5, v0

    .line 1049
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v0, p5, v0

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_23

    const/high16 v0, -0x80000000

    .line 1062
    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_23
    const/4 v0, 0x0

    move v6, v0

    move v8, v6

    move v9, v1

    .line 1065
    :goto_27
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v0, v10, :cond_1f4

    .line 1066
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v0

    .line 1067
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_3e

    .line 1068
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_45

    :cond_3e
    move/from16 v21, v1

    move v15, v2

    move/from16 v2, p2

    goto/16 :goto_1ed

    .line 1071
    :cond_45
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1072
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x1

    if-eqz v13, :cond_58

    if-ne v13, v14, :cond_5d

    :cond_58
    move v15, v2

    move/from16 v2, p1

    goto/16 :goto_120

    .line 1138
    :cond_5d
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1139
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_6b

    .line 1145
    aget-wide v14, v15, v10

    .line 1146
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1148
    :cond_6b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1149
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_79

    .line 1151
    aget-wide v14, v15, v10

    .line 1152
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v14

    .line 1154
    :cond_79
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_f3

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    cmpl-float v15, v15, v1

    if-lez v15, :cond_f3

    int-to-float v13, v13

    .line 1156
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    .line 1157
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v0, v14, :cond_96

    add-float/2addr v13, v9

    move v9, v1

    .line 1161
    :cond_96
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1162
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v1

    if-le v14, v1, :cond_b4

    .line 1170
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v14

    .line 1171
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v1, v10

    .line 1172
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v6

    sub-float/2addr v1, v6

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v15, v2

    const/4 v6, 0x1

    goto :goto_cf

    :cond_b4
    int-to-float v1, v14

    sub-float/2addr v13, v1

    add-float/2addr v9, v13

    move v15, v2

    float-to-double v1, v9

    cmpl-double v13, v1, v17

    if-lez v13, :cond_c4

    add-int/lit8 v14, v14, 0x1

    sub-double v1, v1, v17

    :goto_c1
    double-to-float v1, v1

    move v9, v1

    goto :goto_cf

    :cond_c4
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v13, v1, v19

    if-gez v13, :cond_cf

    add-int/lit8 v14, v14, -0x1

    add-double v1, v1, v17

    goto :goto_c1

    .line 1183
    :cond_cf
    :goto_cf
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v2, p1

    invoke-direct {v7, v2, v12, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    .line 1185
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1187
    invoke-virtual {v11, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1188
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1189
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1190
    invoke-direct {v7, v10, v1, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1192
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_f6

    :cond_f3
    move v15, v2

    move/from16 v2, p1

    .line 1195
    :goto_f6
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    add-int/2addr v14, v1

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1196
    invoke-interface {v1, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v14, v1

    .line 1194
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1197
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v13, v10

    .line 1198
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v2, p2

    const/16 v21, 0x0

    goto/16 :goto_1e4

    .line 1076
    :goto_120
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1077
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_12e

    .line 1083
    aget-wide v13, v13, v10

    invoke-virtual {v7, v13, v14}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    .line 1085
    :cond_12e
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1086
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_13c

    .line 1088
    aget-wide v13, v14, v10

    invoke-virtual {v7, v13, v14}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1090
    :cond_13c
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_1bb

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    const/16 v21, 0x0

    cmpl-float v14, v14, v21

    if-lez v14, :cond_1b8

    int-to-float v1, v1

    .line 1092
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    mul-float/2addr v13, v5

    add-float/2addr v1, v13

    .line 1093
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v0, v13, :cond_15c

    add-float/2addr v1, v9

    move/from16 v9, v21

    .line 1097
    :cond_15c
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1098
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v14

    if-le v13, v14, :cond_179

    .line 1106
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v13

    .line 1107
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v6, 0x1

    aput-boolean v6, v1, v10

    .line 1108
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    sub-float/2addr v1, v14

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    goto :goto_193

    :cond_179
    int-to-float v14, v13

    sub-float/2addr v1, v14

    add-float/2addr v9, v1

    float-to-double v1, v9

    cmpl-double v14, v1, v17

    if-lez v14, :cond_188

    add-int/lit8 v13, v13, 0x1

    sub-double v1, v1, v17

    :goto_185
    double-to-float v1, v1

    move v9, v1

    goto :goto_193

    :cond_188
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v14, v1, v19

    if-gez v14, :cond_193

    add-int/lit8 v13, v13, -0x1

    add-double v1, v1, v17

    goto :goto_185

    .line 1119
    :cond_193
    :goto_193
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v2, p2

    invoke-direct {v7, v2, v12, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    .line 1121
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1123
    invoke-virtual {v11, v13, v1}, Landroid/view/View;->measure(II)V

    .line 1124
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1125
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1126
    invoke-direct {v7, v10, v13, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1128
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v1, v14

    move/from16 v13, v16

    goto :goto_1bf

    :cond_1b8
    move/from16 v2, p2

    goto :goto_1bf

    :cond_1bb
    move/from16 v2, p2

    const/16 v21, 0x0

    .line 1131
    :goto_1bf
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v13, v10

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v13, v10

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1132
    invoke-interface {v10, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v13, v10

    .line 1130
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1133
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int/2addr v1, v11

    .line 1134
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v11

    add-int/2addr v1, v11

    add-int/2addr v10, v1

    iput v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v1, v8

    .line 1200
    :goto_1e4
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v1

    :goto_1ed
    add-int/lit8 v0, v0, 0x1

    move v2, v15

    move/from16 v1, v21

    goto/16 :goto_27

    :cond_1f4
    move v15, v2

    move/from16 v2, p2

    if-eqz v6, :cond_20e

    .line 1203
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v1, v15

    if-eq v1, v0, :cond_20e

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1206
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_20e
    :goto_20e
    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .registers 7

    .line 1410
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1411
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1412
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1413
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p3

    .line 1410
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result p1

    .line 1414
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1415
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    if-le p3, v0, :cond_37

    .line 1416
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p2

    .line 1417
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1416
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_49

    .line 1418
    :cond_37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v0

    if-ge p3, v0, :cond_49

    .line 1419
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p2

    .line 1420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1419
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_49
    :goto_49
    return p1
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .registers 7

    .line 1393
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1394
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1395
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1396
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p3

    .line 1393
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result p1

    .line 1397
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1398
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    if-le p3, v0, :cond_37

    .line 1399
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p2

    .line 1400
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1399
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_49

    .line 1401
    :cond_37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v0

    if-ge p3, v0, :cond_49

    .line 1402
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p2

    .line 1403
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1402
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_49
    :goto_49
    return p1
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 844
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p1

    return p1

    .line 847
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 806
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p1

    return p1

    .line 809
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 825
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p1

    return p1

    .line 828
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 787
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p1

    return p1

    .line 790
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 767
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1

    .line 770
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 752
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p1

    return p1

    .line 755
    :cond_7
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p1

    return p1
.end method

.method private getPaddingEndCross(Z)I
    .registers 2

    if-eqz p1, :cond_9

    .line 707
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1

    .line 710
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method private getPaddingEndMain(Z)I
    .registers 2

    if-eqz p1, :cond_9

    .line 679
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1

    .line 682
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1
.end method

.method private getPaddingStartCross(Z)I
    .registers 2

    if-eqz p1, :cond_9

    .line 693
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1

    .line 696
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method private getPaddingStartMain(Z)I
    .registers 2

    if-eqz p1, :cond_9

    .line 665
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1

    .line 668
    :cond_9
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 740
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .registers 3

    if-eqz p2, :cond_7

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1

    .line 725
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .registers 5

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_b

    .line 894
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z
    .registers 12

    .line 869
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 872
    :cond_a
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_12

    return v0

    :cond_12
    if-nez p2, :cond_15

    return v1

    .line 878
    :cond_15
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getMaxLine()I

    move-result p2

    const/4 p6, -0x1

    if-eq p2, p6, :cond_22

    add-int/2addr p9, v0

    if-gt p2, p9, :cond_22

    return v1

    .line 884
    :cond_22
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 885
    invoke-interface {p2, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result p1

    if-lez p1, :cond_2b

    add-int/2addr p5, p1

    :cond_2b
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_2f

    move v1, v0

    :cond_2f
    return v1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1226
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1227
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_20e

    if-le v4, v0, :cond_13

    goto/16 :goto_20e

    :cond_13
    sub-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 1233
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v1, p5, v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_23

    const/high16 v1, -0x80000000

    .line 1246
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_23
    const/4 v1, 0x0

    move v6, v1

    move v8, v6

    move v9, v2

    .line 1248
    :goto_27
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v1, v10, :cond_1f5

    .line 1249
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v1

    .line 1250
    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_3e

    .line 1251
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_46

    :cond_3e
    move/from16 v14, p2

    move v15, v1

    move/from16 v20, v2

    move v2, v0

    goto/16 :goto_1ee

    .line 1254
    :cond_46
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 1255
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-eqz v13, :cond_5b

    if-ne v13, v14, :cond_61

    :cond_5b
    move v2, v0

    move v15, v1

    move/from16 v1, p1

    goto/16 :goto_124

    .line 1322
    :cond_61
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1323
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_6f

    .line 1329
    aget-wide v14, v15, v10

    .line 1330
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1332
    :cond_6f
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1333
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_7d

    .line 1335
    aget-wide v14, v15, v10

    .line 1336
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v14

    .line 1338
    :cond_7d
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_f6

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    cmpl-float v15, v15, v2

    if-lez v15, :cond_f6

    int-to-float v13, v13

    .line 1340
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    mul-float/2addr v14, v5

    sub-float/2addr v13, v14

    .line 1341
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v1, v14, :cond_9a

    add-float/2addr v13, v9

    move v9, v2

    .line 1345
    :cond_9a
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1346
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v14, v2, :cond_b9

    .line 1349
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v14

    .line 1350
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v2, v10

    .line 1351
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v6

    sub-float/2addr v2, v6

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v2, v0

    move v15, v1

    const/4 v6, 0x1

    goto :goto_d2

    :cond_b9
    int-to-float v2, v14

    sub-float/2addr v13, v2

    add-float/2addr v9, v13

    move v2, v0

    move v15, v1

    float-to-double v0, v9

    cmpl-double v13, v0, v17

    if-lez v13, :cond_c8

    add-int/lit8 v14, v14, 0x1

    sub-float v9, v9, v19

    goto :goto_d2

    :cond_c8
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v16

    if-gez v0, :cond_d2

    add-int/lit8 v14, v14, -0x1

    add-float v9, v9, v19

    .line 1362
    :cond_d2
    :goto_d2
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v1, p1

    invoke-direct {v7, v1, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v0

    const/high16 v13, 0x40000000    # 2.0f

    .line 1365
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1366
    invoke-virtual {v11, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1368
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1369
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1370
    invoke-direct {v7, v10, v0, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1372
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_fa

    :cond_f6
    move v2, v0

    move v15, v1

    move/from16 v1, p1

    .line 1375
    :goto_fa
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    add-int/2addr v14, v0

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    add-int/2addr v14, v0

    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1376
    invoke-interface {v0, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v0

    add-int/2addr v14, v0

    .line 1374
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1377
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v13, v10

    .line 1378
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v14, p2

    const/16 v20, 0x0

    goto/16 :goto_1e5

    .line 1259
    :goto_124
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1260
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_132

    .line 1266
    aget-wide v13, v13, v10

    invoke-virtual {v7, v13, v14}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v0

    .line 1268
    :cond_132
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1269
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_140

    .line 1271
    aget-wide v13, v14, v10

    invoke-virtual {v7, v13, v14}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v13

    .line 1273
    :cond_140
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_1bc

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    const/16 v20, 0x0

    cmpl-float v14, v14, v20

    if-lez v14, :cond_1b9

    int-to-float v0, v0

    .line 1275
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    mul-float/2addr v13, v5

    sub-float/2addr v0, v13

    .line 1276
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v15, v13, :cond_160

    add-float/2addr v0, v9

    move/from16 v9, v20

    .line 1280
    :cond_160
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1281
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v14

    if-ge v13, v14, :cond_17d

    .line 1289
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v13

    .line 1290
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v6, 0x1

    aput-boolean v6, v0, v10

    .line 1291
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    sub-float/2addr v0, v14

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    goto :goto_194

    :cond_17d
    int-to-float v14, v13

    sub-float/2addr v0, v14

    add-float/2addr v9, v0

    float-to-double v0, v9

    cmpl-double v14, v0, v17

    if-lez v14, :cond_18a

    add-int/lit8 v13, v13, 0x1

    sub-float v9, v9, v19

    goto :goto_194

    :cond_18a
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v16

    if-gez v0, :cond_194

    add-int/lit8 v13, v13, -0x1

    add-float v9, v9, v19

    .line 1302
    :cond_194
    :goto_194
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v14, p2

    invoke-direct {v7, v14, v12, v0}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1305
    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1306
    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1308
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1309
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 1310
    invoke-direct {v7, v10, v1, v0, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1312
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v10, v11}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v0, v13

    move/from16 v13, v16

    goto :goto_1c0

    :cond_1b9
    move/from16 v14, p2

    goto :goto_1c0

    :cond_1bc
    move/from16 v14, p2

    const/16 v20, 0x0

    .line 1315
    :goto_1c0
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    add-int/2addr v13, v1

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    add-int/2addr v13, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1316
    invoke-interface {v1, v11}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v13, v1

    .line 1314
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1317
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v0, v10

    .line 1318
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v0, v10

    add-int/2addr v8, v0

    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v0, v1

    .line 1380
    :goto_1e5
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v0

    :goto_1ee
    add-int/lit8 v1, v15, 0x1

    move v0, v2

    move/from16 v2, v20

    goto/16 :goto_27

    :cond_1f5
    move/from16 v14, p2

    move v2, v0

    if-eqz v6, :cond_20e

    .line 1383
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v2, v0, :cond_20e

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1386
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_20e
    :goto_20e
    return-void
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .registers 6

    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1725
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1726
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1727
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1728
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1731
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_32

    .line 1737
    aget-wide v0, v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v0

    goto :goto_36

    .line 1739
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_36
    const/high16 v1, 0x40000000    # 2.0f

    .line 1741
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1743
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1744
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 1746
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1747
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .registers 6

    .line 1689
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1690
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1691
    invoke-interface {v1, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1692
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1693
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1696
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_32

    .line 1702
    aget-wide v0, v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v0

    goto :goto_36

    .line 1704
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_36
    const/high16 v1, 0x40000000    # 2.0f

    .line 1706
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1709
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1710
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1712
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1713
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .registers 6

    .line 1966
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_a

    .line 1967
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p2

    aput-wide p2, v0, p1

    .line 1971
    :cond_a
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz p2, :cond_1c

    .line 1973
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 1974
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 1972
    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide p3

    aput-wide p3, p2, p1

    :cond_1c
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p6

    .line 392
    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v15

    .line 394
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 395
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-nez p7, :cond_21

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    goto :goto_23

    :cond_21
    move-object/from16 v7, p7

    .line 406
    :goto_23
    iput-object v7, v11, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v14, v6, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 410
    :goto_2b
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v1

    .line 411
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v2

    .line 412
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v16

    .line 413
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v17

    .line 423
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v6, p5

    .line 424
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v1

    .line 425
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 427
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v1

    const/high16 v18, -0x80000000

    move/from16 v19, v0

    move/from16 v22, v18

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_58
    if-ge v6, v1, :cond_353

    .line 429
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v6}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6c

    .line 432
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 433
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_88

    .line 436
    :cond_6c
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v11, :cond_99

    .line 437
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 438
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 439
    invoke-direct {v10, v6, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 440
    invoke-direct {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_88
    :goto_88
    move/from16 v12, p4

    move/from16 v24, v8

    move/from16 v26, v9

    move v4, v13

    move v11, v14

    const/16 v27, 0x0

    move v8, v2

    move-object v14, v7

    const/4 v7, -0x1

    move v2, v1

    const/4 v1, 0x1

    goto/16 :goto_342

    .line 443
    :cond_99
    instance-of v5, v4, Landroid/widget/CompoundButton;

    if-eqz v5, :cond_a3

    .line 444
    move-object v5, v4

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-direct {v10, v5}, Lcom/google/android/flexbox/FlexboxHelper;->evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V

    .line 447
    :cond_a3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 449
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    move/from16 v25, v1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_bc

    .line 450
    iget-object v1, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_bc
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v1

    .line 455
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v5

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v5, v5, v26

    if-eqz v5, :cond_d8

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_d8

    int-to-float v1, v8

    .line 457
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_d8
    if-eqz v15, :cond_114

    .line 466
    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    const/4 v14, 0x1

    .line 468
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v24

    add-int v24, v2, v24

    .line 469
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v24, v26

    .line 466
    invoke-interface {v5, v12, v14, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 471
    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v14, v16, v17

    move/from16 v24, v8

    const/4 v8, 0x1

    .line 473
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v14, v26

    .line 474
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v14, v14, v26

    add-int/2addr v14, v0

    move/from16 v26, v9

    .line 476
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    .line 471
    invoke-interface {v5, v13, v14, v9}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v5

    .line 477
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 478
    invoke-direct {v10, v6, v1, v5, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v9, v1

    const/4 v14, 0x0

    goto :goto_14b

    :cond_114
    move/from16 v24, v8

    move/from16 v26, v9

    const/4 v8, 0x1

    .line 480
    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v9, v16, v17

    const/4 v14, 0x0

    .line 482
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    .line 483
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    add-int/2addr v9, v0

    .line 484
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    .line 480
    invoke-interface {v5, v13, v9, v8}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v5

    .line 485
    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 487
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v2

    .line 488
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v9, v9, v23

    .line 485
    invoke-interface {v8, v12, v9, v1}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 490
    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    .line 491
    invoke-direct {v10, v6, v5, v1, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v9, v1

    .line 493
    :goto_14b
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v6, v4}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 501
    invoke-direct {v10, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 504
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v5, v20

    .line 503
    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v20

    .line 506
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 507
    invoke-direct {v10, v4, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    .line 508
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v1, v8

    .line 509
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v8, v1

    .line 510
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move v1, v0

    move-object/from16 v0, p0

    move v12, v1

    move/from16 v14, v25

    move-object v1, v4

    move v14, v2

    move/from16 v2, v26

    move-object/from16 v28, v3

    move/from16 v3, v24

    move/from16 v29, v14

    const/16 v27, 0x0

    move-object v14, v4

    move v4, v5

    move v5, v8

    move/from16 p5, v6

    const/4 v8, -0x1

    move-object v6, v11

    move-object/from16 p7, v14

    move-object v14, v7

    move/from16 v7, p5

    move v13, v8

    move/from16 v8, v21

    move/from16 v30, v9

    move/from16 v9, v23

    .line 506
    invoke-direct/range {v0 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 511
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    move/from16 v6, p5

    if-lez v0, :cond_1b5

    if-lez v6, :cond_1ab

    add-int/lit8 v4, v6, -0x1

    :goto_1a8
    move-object/from16 v3, v28

    goto :goto_1ae

    :cond_1ab
    move/from16 v4, v27

    goto :goto_1a8

    .line 512
    :goto_1ae
    invoke-direct {v10, v14, v3, v4, v12}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 513
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v12

    goto :goto_1b6

    :cond_1b5
    move v0, v12

    :goto_1b6
    if-eqz v15, :cond_1f2

    .line 517
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v1

    if-ne v1, v13, :cond_1ec

    .line 525
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 527
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 528
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 529
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 530
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v3

    move/from16 v4, p3

    move v7, v13

    .line 525
    invoke-interface {v1, v4, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    move-object/from16 v2, p7

    move/from16 v3, v30

    .line 531
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 532
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_225

    :cond_1ec
    move/from16 v4, p3

    move-object/from16 v2, p7

    move v7, v13

    goto :goto_225

    :cond_1f2
    move/from16 v4, p3

    move-object/from16 v2, p7

    move v7, v13

    move/from16 v3, v30

    .line 535
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v1

    if-ne v1, v7, :cond_225

    .line 543
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 545
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v5

    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v8}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v8

    add-int/2addr v5, v8

    .line 546
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v8

    add-int/2addr v5, v8

    .line 547
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v5, v0

    .line 548
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v8

    .line 543
    invoke-interface {v1, v4, v5, v8}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 549
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 550
    invoke-direct {v10, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 554
    :cond_225
    :goto_225
    new-instance v3, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v3}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    const/4 v1, 0x1

    .line 555
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v8, v29

    .line 556
    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 557
    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move/from16 v9, v18

    move/from16 v5, v27

    goto :goto_24f

    :cond_238
    move/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v2, p7

    move v7, v13

    move-object/from16 v3, v28

    move/from16 v8, v29

    const/4 v1, 0x1

    .line 561
    iget v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v0, v21, 0x1

    move v5, v0

    move v0, v12

    move/from16 v9, v22

    .line 564
    :goto_24f
    iget-boolean v12, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    const/16 v21, 0x0

    cmpl-float v13, v13, v21

    if-eqz v13, :cond_25d

    move v13, v1

    goto :goto_25f

    :cond_25d
    move/from16 v13, v27

    :goto_25f
    or-int/2addr v12, v13

    iput-boolean v12, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 565
    iget-boolean v12, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    cmpl-float v13, v13, v21

    if-eqz v13, :cond_26e

    move v13, v1

    goto :goto_270

    :cond_26e
    move/from16 v13, v27

    :goto_270
    or-int/2addr v12, v13

    iput-boolean v12, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 567
    iget-object v12, v10, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v12, :cond_27d

    .line 568
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    aput v13, v12, v6

    .line 570
    :cond_27d
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v13

    .line 571
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v21

    add-int v13, v13, v21

    .line 572
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v21

    add-int v13, v13, v21

    add-int/2addr v12, v13

    iput v12, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 573
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    add-float/2addr v12, v13

    iput v12, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 574
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    add-float/2addr v12, v13

    iput v12, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 576
    iget-object v12, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v12, v2, v6, v5, v3}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 579
    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v12

    .line 580
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v13

    add-int/2addr v12, v13

    .line 581
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 582
    invoke-interface {v13, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    .line 578
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 586
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v15, :cond_2e6

    .line 589
    iget-object v12, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2e9

    .line 590
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v11

    add-int/2addr v2, v11

    .line 590
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_2e6
    :goto_2e6
    move/from16 v2, v25

    goto :goto_300

    .line 596
    :cond_2e9
    iget v12, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 597
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    sub-int/2addr v13, v2

    .line 598
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v13, v2

    .line 596
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_2e6

    .line 602
    :goto_300
    invoke-direct {v10, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v11

    if-eqz v11, :cond_30c

    .line 603
    invoke-direct {v10, v14, v3, v6, v0}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 604
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v11

    :cond_30c
    move/from16 v11, p6

    if-eq v11, v7, :cond_333

    .line 608
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_333

    .line 609
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    iget v12, v12, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v12, v11, :cond_333

    if-lt v6, v11, :cond_333

    if-nez v19, :cond_333

    .line 617
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v0

    neg-int v0, v0

    move/from16 v12, p4

    move/from16 v19, v1

    goto :goto_335

    :cond_333
    move/from16 v12, p4

    :goto_335
    if-le v0, v12, :cond_33e

    if-eqz v19, :cond_33e

    move-object/from16 v0, p1

    move/from16 v5, v20

    goto :goto_357

    :cond_33e
    move/from16 v21, v5

    move/from16 v22, v9

    :goto_342
    add-int/lit8 v6, v6, 0x1

    move/from16 v12, p2

    move v1, v2

    move v13, v4

    move v2, v8

    move-object v7, v14

    move/from16 v8, v24

    move/from16 v9, v26

    move v14, v11

    move-object/from16 v11, p1

    goto/16 :goto_58

    :cond_353
    move/from16 v5, v20

    move-object/from16 v0, p1

    .line 632
    :goto_357
    iput v5, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 249
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 280
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 323
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 354
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1998
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 2005
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-lt v2, v0, :cond_16

    .line 2006
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 2009
    :cond_16
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_21

    .line 2011
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_24

    .line 2013
    :cond_21
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2016
    :goto_24
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_31

    .line 2018
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_34

    .line 2020
    :cond_31
    invoke-static {p1, p2, v0, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_34
    return-void
.end method

.method determineMainSize(II)V
    .registers 4

    const/4 v0, 0x0

    .line 948
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    return-void
.end method

.method determineMainSize(III)V
    .registers 15

    .line 963
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 964
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_12

    return-void

    .line 969
    :cond_12
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    .line 970
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_62

    const/4 v3, 0x1

    if-eq v1, v3, :cond_62

    const/4 v3, 0x2

    if-eq v1, v3, :cond_43

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2c

    goto :goto_43

    .line 997
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flex direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 986
    :cond_43
    :goto_43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 987
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v2, :cond_4e

    goto :goto_54

    .line 991
    :cond_4e
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 993
    :goto_54
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 994
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    :goto_60
    add-int/2addr v0, v2

    goto :goto_84

    .line 973
    :cond_62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 974
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 975
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v3

    if-ne v0, v2, :cond_73

    goto :goto_77

    :cond_73
    if-le v3, v1, :cond_76

    goto :goto_77

    :cond_76
    move v1, v3

    .line 981
    :goto_77
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 982
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    goto :goto_60

    .line 1001
    :goto_84
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v2, :cond_8b

    .line 1002
    aget p3, v2, p3

    goto :goto_8c

    :cond_8b
    const/4 p3, 0x0

    .line 1004
    :goto_8c
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v9

    .line 1005
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_96
    if-ge p3, v10, :cond_c3

    .line 1006
    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1007
    iget v2, v5, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v2, v1, :cond_b1

    iget-boolean v3, v5, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v3, :cond_b1

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    .line 1008
    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_c0

    :cond_b1
    if-le v2, v1, :cond_c0

    .line 1010
    iget-boolean v2, v5, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v2, :cond_c0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    .line 1011
    invoke-direct/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_c0
    :goto_c0
    add-int/lit8 p3, p3, 0x1

    goto :goto_96

    :cond_c3
    return-void
.end method

.method ensureIndexToFlexLine(I)V
    .registers 4

    .line 1979
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_e

    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    move p1, v0

    .line 1980
    :cond_9
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_1d

    .line 1981
    :cond_e
    array-length v1, v0

    if-ge v1, p1, :cond_1d

    .line 1982
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-lt v1, p1, :cond_17

    move p1, v1

    .line 1984
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_1d
    :goto_1d
    return-void
.end method

.method ensureMeasureSpecCache(I)V
    .registers 4

    .line 1920
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_e

    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    move p1, v0

    .line 1921
    :cond_9
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_1d

    .line 1922
    :cond_e
    array-length v1, v0

    if-ge v1, p1, :cond_1d

    .line 1923
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-lt v1, p1, :cond_17

    move p1, v1

    .line 1925
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_1d
    :goto_1d
    return-void
.end method

.method ensureMeasuredSizeCache(I)V
    .registers 4

    .line 1910
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_e

    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    move p1, v0

    .line 1911
    :cond_9
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_1d

    .line 1912
    :cond_e
    array-length v1, v0

    if-ge v1, p1, :cond_1d

    .line 1913
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-lt v1, p1, :cond_17

    move p1, v1

    .line 1915
    :cond_17
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_1d
    :goto_1d
    return-void
.end method

.method extractHigherInt(J)I
    .registers 4

    .line 0
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method extractLowerInt(J)I
    .registers 3

    .line 0
    long-to-int p1, p1

    return p1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .registers 12

    .line 1773
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1774
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1775
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 1778
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1780
    :cond_17
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    if-eqz v1, :cond_c5

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8e

    if-eq v1, v3, :cond_62

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    const/4 p2, 0x4

    if-eq v1, p2, :cond_c5

    goto/16 :goto_e8

    .line 1793
    :cond_29
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v1

    if-eq v1, v3, :cond_47

    .line 1794
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1795
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    .line 1796
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_e8

    .line 1798
    :cond_47
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1799
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr p2, v1

    .line 1800
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    .line 1801
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_e8

    .line 1819
    :cond_62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 1820
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    .line 1821
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_84

    add-int/2addr p4, v2

    .line 1823
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1822
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_e8

    :cond_84
    sub-int/2addr p4, v2

    .line 1826
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    .line 1825
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_e8

    .line 1805
    :cond_8e
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_ab

    add-int/2addr p4, v2

    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p2, p6

    .line 1808
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p4, p6

    .line 1806
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_e8

    :cond_ab
    sub-int/2addr p4, v2

    .line 1813
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p4, p2

    sub-int/2addr p6, v2

    .line 1814
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p6, p2

    .line 1815
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p6, p2

    .line 1812
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_e8

    .line 1784
    :cond_c5
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_db

    .line 1785
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p4, p2

    .line 1786
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p6, p2

    .line 1785
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_e8

    .line 1788
    :cond_db
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1789
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1788
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    :goto_e8
    return-void
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .registers 12

    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1858
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1859
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 1862
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1864
    :cond_17
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v1, :cond_83

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    const/4 p2, 0x3

    if-eq v1, p2, :cond_83

    const/4 p2, 0x4

    if-eq v1, p2, :cond_83

    goto/16 :goto_a0

    .line 1896
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1897
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1898
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr p2, v1

    .line 1899
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v2

    if-nez p3, :cond_47

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    .line 1901
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_a0

    :cond_47
    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    .line 1903
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_a0

    :cond_4d
    if-nez p3, :cond_69

    add-int/2addr p4, p2

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p3

    sub-int/2addr p4, p3

    add-int/2addr p6, p2

    .line 1882
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1879
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_a0

    :cond_69
    sub-int/2addr p4, p2

    .line 1888
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p4, p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p3

    add-int/2addr p4, p3

    sub-int/2addr p6, p2

    .line 1890
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p6, p2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p6, p2

    .line 1887
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_a0

    :cond_83
    if-nez p3, :cond_93

    .line 1870
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p4, p2

    .line 1871
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p6, p2

    .line 1870
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_a0

    .line 1873
    :cond_93
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 1874
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p2

    sub-int/2addr p6, p2

    .line 1873
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_a0
    return-void
.end method

.method makeCombinedLong(II)J
    .registers 7

    .line 0
    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method stretchViews()V
    .registers 2

    const/4 v0, 0x0

    .line 1602
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    return-void
.end method

.method stretchViews(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1618
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v2

    if-lt v1, v2, :cond_d

    return-void

    .line 1621
    :cond_d
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    .line 1622
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v3

    const-string v4, "Invalid flex direction: "

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v3, v7, :cond_a0

    .line 1624
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_26

    .line 1625
    aget v1, v3, v1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 1627
    :goto_27
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    .line 1628
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    :goto_31
    if-ge v1, v10, :cond_108

    .line 1629
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 1630
    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x0

    :goto_3c
    if-ge v13, v12, :cond_9d

    .line 1631
    iget v14, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v14, v13

    .line 1632
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v15

    if-lt v13, v15, :cond_4a

    goto :goto_9a

    .line 1635
    :cond_4a
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v15, v14}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_9a

    .line 1636
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v5, 0x8

    if-ne v9, v5, :cond_5b

    goto :goto_9a

    .line 1639
    :cond_5b
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    .line 1640
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v9

    const/4 v6, -0x1

    if-eq v9, v6, :cond_6f

    .line 1641
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    if-eq v5, v7, :cond_6f

    goto :goto_9a

    :cond_6f
    if-eqz v2, :cond_95

    if-eq v2, v8, :cond_95

    const/4 v5, 0x2

    if-eq v2, v5, :cond_8f

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7a

    goto :goto_8f

    .line 1654
    :cond_7a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1651
    :cond_8f
    :goto_8f
    iget v5, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v15, v5, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_9a

    .line 1647
    :cond_95
    iget v5, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v15, v5, v14}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_9a
    :goto_9a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3c

    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1660
    :cond_a0
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 1661
    iget-object v5, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1662
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_fc

    if-eq v2, v8, :cond_fc

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v2, v9, :cond_f2

    if-ne v2, v10, :cond_dd

    goto :goto_f2

    .line 1673
    :cond_dd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1670
    :cond_f2
    :goto_f2
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_bc

    :cond_fc
    const/4 v9, 0x2

    const/4 v10, 0x3

    .line 1666
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_bc

    :cond_108
    return-void
.end method
