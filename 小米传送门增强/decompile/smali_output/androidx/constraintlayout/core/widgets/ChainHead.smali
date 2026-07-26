.class public Landroidx/constraintlayout/core/widgets/ChainHead;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasRatio:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mOptimizable:Z

.field private mOrientation:I

.field mTotalMargins:I

.field mTotalSize:I

.field protected mTotalWeight:F

.field mVisibleWidgets:I

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 64
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 65
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 66
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    return-void
.end method

.method private defineChainProperties()V
    .registers 13

    .line 84
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    const/4 v4, 0x0

    move-object v5, v2

    move v6, v4

    :goto_c
    if-nez v6, :cond_12d

    .line 93
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 94
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 95
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v9, v7, v8

    .line 96
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_102

    .line 97
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    .line 98
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_40

    .line 99
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLength(I)I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 101
    :cond_40
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 102
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v11, v0, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 103
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    .line 104
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    .line 106
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v7, :cond_78

    .line 107
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 109
    :cond_78
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 112
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aget-object v7, v7, v10

    if-ne v7, v8, :cond_102

    .line 113
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v10

    const/4 v8, 0x0

    if-eqz v7, :cond_8e

    const/4 v11, 0x3

    if-eq v7, v11, :cond_8e

    if-ne v7, v1, :cond_d1

    .line 116
    :cond_8e
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 117
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v7, v7, v10

    cmpl-float v11, v7, v8

    if-lez v11, :cond_a0

    .line 119
    iget v11, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    add-float/2addr v11, v7

    iput v11, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 122
    :cond_a0
    invoke-static {v2, v10}, Landroidx/constraintlayout/core/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v10

    if-eqz v10, :cond_bf

    cmpg-float v7, v7, v8

    if-gez v7, :cond_ad

    .line 124
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    goto :goto_af

    .line 126
    :cond_ad
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 128
    :goto_af
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v7, :cond_ba

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 131
    :cond_ba
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_bf
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v7, :cond_c5

    .line 135
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 137
    :cond_c5
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v7, :cond_cf

    .line 138
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aput-object v2, v7, v10

    .line 140
    :cond_cf
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 142
    :cond_d1
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    if-nez v7, :cond_e7

    .line 143
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v7, :cond_dc

    .line 144
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    goto :goto_f8

    .line 145
    :cond_dc
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v7, :cond_e4

    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v7, :cond_f8

    .line 146
    :cond_e4
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    goto :goto_f8

    .line 149
    :cond_e7
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v7, :cond_ee

    .line 150
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    goto :goto_f8

    .line 151
    :cond_ee
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v7, :cond_f6

    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v7, :cond_f8

    .line 152
    :cond_f6
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    .line 155
    :cond_f8
    :goto_f8
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_102

    .line 157
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    .line 158
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasRatio:Z

    :cond_102
    if-eq v5, v2, :cond_10a

    .line 163
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    aput-object v2, v5, v7

    .line 168
    :cond_10a
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v7, v0, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_124

    .line 170
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 171
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_124

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v7, v2, :cond_123

    goto :goto_124

    :cond_123
    move-object v9, v5

    :cond_124
    :goto_124
    if-eqz v9, :cond_127

    goto :goto_129

    :cond_127
    move-object v9, v2

    move v6, v3

    :goto_129
    move-object v5, v2

    move-object v2, v9

    goto/16 :goto_c

    .line 184
    :cond_12d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_13e

    .line 185
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 187
    :cond_13e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_150

    .line 188
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/2addr v0, v3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    .line 190
    :cond_150
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 192
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    if-nez v0, :cond_15d

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    if-eqz v0, :cond_15d

    .line 193
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_161

    .line 195
    :cond_15d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 198
    :goto_161
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v0, :cond_16a

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v0, :cond_16a

    goto :goto_16b

    :cond_16a
    move v3, v4

    :goto_16b
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    return-void
.end method

.method private static isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .registers 4

    .line 77
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1b

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p0, p0, p1

    if-eqz p0, :cond_19

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1b

    :cond_19
    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method


# virtual methods
.method public define()V
    .registers 2

    .line 234
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    if-nez v0, :cond_7

    .line 235
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ChainHead;->defineChainProperties()V

    :cond_7
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    return-void
.end method
