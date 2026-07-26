.class public Lcom/google/android/flexbox/FlexLine;
.super Ljava/lang/Object;
.source "FlexLine.java"


# instance fields
.field mAnyItemsHaveFlexGrow:Z

.field mAnyItemsHaveFlexShrink:Z

.field mBottom:I

.field mCrossSize:I

.field mDividerLengthInMainSize:I

.field mFirstIndex:I

.field mGoneItemCount:I

.field mIndicesAlignSelfStretch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field mLastIndex:I

.field mLeft:I

.field mMainSize:I

.field mMaxBaseline:I

.field mRight:I

.field mSumCrossSizeBefore:I

.field mTop:I

.field mTotalFlexGrow:F

.field mTotalFlexShrink:F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 34
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 36
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    const/high16 v0, -0x80000000

    .line 38
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 40
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCrossSize()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    return v0
.end method

.method public getItemCountNotGone()I
    .registers 3

    .line 133
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v0, v1

    return v0
.end method
