.class Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;
.super Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RemixRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field mCurrentFlingVelocityX:I

.field mCurrentFlingVelocityY:I

.field mDragFlingVelocityX:I

.field mDragFlingVelocityY:I

.field private mEatRunOnAnimationRequest:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mHasReachEdgeBeforeFling:Z

.field mInterimTarget:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/RemixRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RemixRecyclerView;)V
    .registers 4

    .line 178
    iput-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 162
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 168
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 171
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    .line 172
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    .line 173
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityX:I

    .line 174
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityY:I

    .line 175
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    .line 179
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 9

    .line 530
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 531
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 533
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 534
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 535
    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    if-eqz v2, :cond_28

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_2c

    :cond_28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 536
    :goto_2c
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 537
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 539
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_51

    int-to-float p1, p3

    div-float/2addr p4, p1

    .line 543
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_5c

    :cond_51
    if-eqz v2, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_5c
    const/16 p2, 0x7d0

    .line 548
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 526
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 385
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_11

    .line 386
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    iget-object v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 388
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method

.method private internalPostOnAnimation()V
    .registers 2

    .line 400
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 401
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {v0, p0}, Lmiuix/overscroller/widget/AnimationHelper;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected checkDoneScrolling()V
    .registers 1

    .line 0
    return-void
.end method

.method public fling(II)V
    .registers 15

    .line 411
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 416
    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v2, v3, :cond_20

    .line 417
    iput-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 418
    new-instance v2, Lmiuix/overscroller/widget/OverScroller;

    iget-object v4, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    :cond_20
    if-eqz p1, :cond_2b

    .line 422
    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->getVelocityFromMonitor(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_2c

    :cond_2b
    move v0, p1

    :goto_2c
    const/4 v2, 0x1

    if-eqz p2, :cond_38

    .line 425
    iget-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RemixRecyclerView;->getVelocityFromMonitor(I)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    goto :goto_39

    :cond_38
    move v3, p2

    :goto_39
    if-nez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move p1, v0

    :goto_3d
    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    move p2, v3

    .line 435
    :goto_41
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # getter for: Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I
    invoke-static {v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # getter for: Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I
    invoke-static {v3}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 436
    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # getter for: Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I
    invoke-static {p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)I

    move-result p1

    neg-int p1, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # getter for: Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I
    invoke-static {v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 438
    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    .line 439
    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_7f

    or-int/lit8 p1, p1, 0x2

    :cond_7f
    const/4 p2, -0x1

    if-ne p1, v1, :cond_8f

    if-lez v7, :cond_85

    move p2, v2

    .line 450
    :cond_85
    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    goto :goto_9d

    :cond_8f
    if-ne p1, v2, :cond_9d

    if-lez v6, :cond_94

    move p2, v2

    .line 453
    :cond_94
    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    .line 456
    :cond_9d
    :goto_9d
    iget-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIII)V

    .line 458
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .registers 2

    .line 392
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_b

    .line 395
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_b
    return-void
.end method

.method resetFlingPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 560
    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 564
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->resetPosition()V

    return-void
.end method

.method public run()V
    .registers 23

    move-object/from16 v0, p0

    .line 184
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_c

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 189
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 192
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 204
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 205
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_256

    .line 206
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 207
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 208
    iget-object v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v6}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v6

    if-ne v6, v3, :cond_3b

    .line 209
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    .line 210
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    .line 212
    :cond_3b
    iget-object v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RemixRecyclerView;->isOverScrolling()Z

    move-result v6

    if-nez v6, :cond_51

    .line 213
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityX:I

    .line 214
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityY:I

    .line 216
    :cond_51
    iget v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v4, v6

    .line 217
    iget v7, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v13, v5, v7

    .line 218
    iput v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 219
    iput v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 224
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    .line 225
    aput v2, v4, v3

    .line 228
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v4

    if-ne v4, v3, :cond_a8

    .line 229
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 230
    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_80
    if-eqz v4, :cond_a8

    .line 232
    instance-of v7, v4, Lmiuix/core/view/NestedCurrentFling;

    if-eqz v7, :cond_9c

    move-object v7, v4

    check-cast v7, Lmiuix/core/view/NestedCurrentFling;

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 233
    invoke-virtual {v8}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v8

    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v9}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    move-result v7

    if-eqz v7, :cond_9c

    goto :goto_a8

    .line 236
    :cond_9c
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_a3

    if-ne v4, v5, :cond_a3

    goto :goto_a8

    .line 239
    :cond_a3
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_80

    .line 243
    :cond_a8
    :goto_a8
    iget-object v7, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 245
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr v6, v5

    .line 246
    aget v4, v4, v3

    sub-int/2addr v13, v4

    .line 251
    :cond_c0
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_ce

    .line 252
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 256
    :cond_ce
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v7, :cond_119

    .line 257
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v7, v2

    .line 258
    aput v2, v7, v3

    .line 259
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 260
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    .line 261
    aget v7, v7, v3

    sub-int/2addr v6, v8

    sub-int/2addr v13, v7

    .line 267
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v4, :cond_11b

    .line 268
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_11b

    .line 269
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 270
    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_107

    .line 272
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_11b

    .line 273
    :cond_107
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_115

    sub-int/2addr v9, v3

    .line 274
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 275
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_11b

    .line 277
    :cond_115
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_11b

    :cond_119
    move v7, v2

    move v8, v7

    .line 282
    :cond_11b
    :goto_11b
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12a

    .line 283
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 287
    :cond_12a
    iget-object v14, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    .line 288
    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    .line 289
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 291
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v6, v10

    .line 292
    aget v9, v9, v3

    sub-int/2addr v13, v9

    if-nez v8, :cond_150

    if-eqz v7, :cond_153

    .line 295
    :cond_150
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 298
    :cond_153
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # invokes: Landroid/view/ViewGroup;->awakenScrollBars()Z
    invoke-static {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$000(Landroidx/recyclerview/widget/RemixRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_160

    .line 299
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 307
    :cond_160
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v4, v9, :cond_16c

    move v4, v3

    goto :goto_16d

    :cond_16c
    move v4, v2

    .line 308
    :goto_16d
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_179

    move v9, v3

    goto :goto_17a

    :cond_179
    move v9, v2

    .line 309
    :goto_17a
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_18b

    if-nez v4, :cond_184

    if-eqz v6, :cond_189

    :cond_184
    if-nez v9, :cond_18b

    if-eqz v13, :cond_189

    goto :goto_18b

    :cond_189
    move v4, v2

    goto :goto_18c

    :cond_18b
    :goto_18b
    move v4, v3

    .line 316
    :goto_18c
    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v9, :cond_19c

    .line 318
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_19c

    goto/16 :goto_24a

    :cond_19c
    if-eqz v4, :cond_24a

    .line 324
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_1c1

    .line 325
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_1af

    neg-int v4, v1

    goto :goto_1b4

    :cond_1af
    if-lez v6, :cond_1b3

    move v4, v1

    goto :goto_1b4

    :cond_1b3
    move v4, v2

    :goto_1b4
    if-gez v13, :cond_1b8

    neg-int v1, v1

    goto :goto_1bc

    :cond_1b8
    if-lez v13, :cond_1bb

    goto :goto_1bc

    :cond_1bb
    move v1, v2

    .line 328
    :goto_1bc
    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 333
    :cond_1c1
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1e3

    .line 334
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartY()I

    move-result v5

    if-le v1, v5, :cond_1db

    move v4, v3

    .line 335
    :cond_1db
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    :goto_1e1
    xor-int/2addr v1, v3

    goto :goto_204

    .line 336
    :cond_1e3
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_203

    .line 337
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartX()I

    move-result v5

    if-le v1, v5, :cond_1fc

    move v4, v3

    .line 338
    :cond_1fc
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    goto :goto_1e1

    :cond_203
    move v1, v2

    .line 340
    :goto_204
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    # getter for: Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z
    invoke-static {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$100(Landroidx/recyclerview/widget/RemixRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_23b

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v4

    if-ne v4, v3, :cond_23b

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    if-nez v4, :cond_23b

    if-eqz v1, :cond_23b

    .line 342
    const-string v1, "2.0"

    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_234

    .line 343
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_23b

    .line 344
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v1

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedbackAsync(I)V

    goto :goto_23b

    .line 347
    :cond_234
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    sget v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v1, v4}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    .line 351
    :cond_23b
    :goto_23b
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_246

    .line 352
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 354
    :cond_246
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->checkDoneScrolling()V

    goto :goto_256

    .line 358
    :cond_24a
    :goto_24a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 359
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v4, :cond_256

    .line 360
    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 365
    :cond_256
    :goto_256
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_267

    .line 367
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_267

    .line 368
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 371
    :cond_267
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 372
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_271

    .line 373
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_283

    .line 375
    :cond_271
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 376
    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 377
    iput v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    .line 378
    iput v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    .line 379
    iput v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityY:I

    .line 380
    iput v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityX:I

    :goto_283
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 13

    .line 475
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p3, v0, :cond_11

    .line 481
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    :cond_11
    if-nez p4, :cond_15

    .line 484
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 487
    :cond_15
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_34

    iget-boolean p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    if-nez p3, :cond_34

    .line 488
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    .line 489
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    .line 492
    :cond_34
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    instance-of v2, p3, Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v2, :cond_5a

    .line 495
    move-object v2, p3

    check-cast v2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    iget v2, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    .line 496
    check-cast p3, Landroidx/recyclerview/widget/LinearSmoothScroller;

    iget p3, p3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float p3, p3

    mul-float/2addr p3, v3

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5a

    int-to-float v2, p2

    cmpl-float p3, p3, v2

    if-nez p3, :cond_5a

    const/4 p3, 0x1

    goto :goto_5b

    :cond_5a
    move p3, v1

    .line 499
    :goto_5b
    iput-boolean p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    .line 502
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_70

    .line 503
    iput-object p4, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 504
    new-instance p3, Lmiuix/overscroller/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, p4}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 508
    :cond_70
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 511
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 512
    iget-object v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    iget v6, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    iget v7, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lmiuix/overscroller/widget/OverScroller;->startScrollByFling(IIIIII)V

    .line 520
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 552
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 553
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    return-void
.end method
