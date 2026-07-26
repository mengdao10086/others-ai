.class public Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;
.super Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.source "ActionBarMovableLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarMovableLayout"


# instance fields
.field private mActivePointerId:I

.field private mFlinging:Z

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mIsSpringBackEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScrollStart:I

.field private mScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private mTabViewVisibility:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 83
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 62
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 66
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    const/16 v1, 0x8

    .line 70
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 85
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout:[I

    sget v2, Lmiuix/appcompat/R$attr;->actionBarMovableLayoutStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 88
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 89
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 93
    :cond_28
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollRange:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 94
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollStart:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 99
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    invoke-direct {v1, p1}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 103
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 393
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 398
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v5, :cond_30

    .line 399
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v3, p1

    :cond_30
    if-lt p3, v1, :cond_39

    if-ge p3, v3, :cond_39

    if-lt p2, v2, :cond_39

    if-ge p2, v4, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 409
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 411
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 416
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isTabViewVisibilityChanged()Z
    .registers 3

    .line 640
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 641
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 642
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 643
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    if-eq v0, v1, :cond_13

    .line 644
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 628
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_2c

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 630
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 632
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2c

    .line 633
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_2c
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 422
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 423
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .registers 3

    .line 606
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result p1

    .line 607
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 610
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 611
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_13
    return-void
.end method

.method public computeScroll()V
    .registers 13

    .line 276
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 277
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 278
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_27

    .line 281
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 282
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    sub-int v4, v1, v0

    .line 283
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 285
    :cond_27
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_35

    .line 287
    :cond_2b
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    if-eqz v0, :cond_35

    .line 288
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    :cond_35
    :goto_35
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .line 483
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .registers 4

    .line 492
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 493
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 494
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method ensureTabScrollView()V
    .registers 2

    .line 430
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    return-void
.end method

.method protected fling(I)V
    .registers 13

    .line 502
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 503
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 504
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v10}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public getOverScrollDistance()I
    .registers 2

    .line 361
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getScrollRange()I
    .registers 2

    .line 369
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method public getScrollStart()I
    .registers 2

    .line 381
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .line 436
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-eq p1, v0, :cond_8

    .line 437
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    .line 442
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 446
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 445
    invoke-static {p2, v1, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 449
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    sub-int/2addr p3, v0

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 447
    invoke-static {p4, p3, p5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 451
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected motionToTranslation(F)F
    .registers 3

    .line 595
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 597
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 598
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_22

    .line 599
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_22
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 111
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMask()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 116
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1b

    .line 118
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1b

    return v3

    :cond_1b
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4e

    if-eq v0, v3, :cond_42

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_42

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2a

    goto :goto_6d

    .line 162
    :cond_2a
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_6d

    .line 139
    :cond_2e
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 140
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 141
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_6d

    .line 154
    :cond_42
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 156
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->recycleVelocityTracker()V

    .line 157
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_6d

    .line 124
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 128
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 130
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1, v3}, Lmiuix/overscroller/widget/OverScroller;->forceFinished(Z)V

    .line 167
    :cond_6d
    :goto_6d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 456
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 461
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->isTabViewVisibilityChanged()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    move p1, p2

    .line 462
    :goto_12
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez p3, :cond_24

    .line 463
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez p3, :cond_1e

    .line 464
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 467
    :cond_1e
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 468
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    :cond_24
    if-eqz p1, :cond_2c

    .line 472
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    :cond_2c
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    int-to-float p1, p2

    .line 331
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 333
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez p2, :cond_11

    if-eqz p4, :cond_11

    .line 340
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result p1

    .line 342
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    :cond_11
    return-void
.end method

.method protected onScroll(F)V
    .registers 2

    .line 579
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    return-void
.end method

.method protected onScrollBegin()V
    .registers 1

    .line 0
    return-void
.end method

.method protected onScrollEnd()V
    .registers 2

    const/4 v0, -0x1

    .line 587
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 172
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 173
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_d7

    const/4 v14, -0x1

    if-eq v0, v12, :cond_a5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    goto/16 :goto_e3

    .line 265
    :cond_27
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 266
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_e3

    .line 258
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 259
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 260
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_e3

    .line 188
    :cond_4e
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_91

    .line 189
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v14, :cond_5b

    return v13

    .line 193
    :cond_5b
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 199
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, v15, v0

    float-to-int v2, v0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 202
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 203
    iget v4, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 205
    iput v15, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    if-eqz v0, :cond_e3

    .line 208
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v0, :cond_8b

    .line 209
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 210
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 212
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 213
    invoke-virtual/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    :cond_8b
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_e3

    .line 218
    :cond_91
    invoke-virtual/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 219
    iput-boolean v12, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 220
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 221
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_e3

    .line 230
    :cond_a5
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_e3

    .line 231
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 232
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 234
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v1, v2, :cond_bd

    .line 241
    invoke-virtual {v10, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->fling(I)V

    goto :goto_e3

    .line 243
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v9

    .line 244
    iget-object v3, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    iget v5, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_e3

    .line 247
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    goto :goto_e3

    .line 182
    :cond_d7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 183
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    :cond_e3
    :goto_e3
    return v12
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 10

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result p1

    .line 302
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result p3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result p5

    const/4 p7, 0x1

    const/4 p9, 0x0

    if-le p3, p5, :cond_12

    move p3, p7

    goto :goto_13

    :cond_12
    move p3, p9

    :goto_13
    if-eqz p1, :cond_1c

    if-ne p1, p7, :cond_1a

    if-eqz p3, :cond_1a

    goto :goto_1c

    :cond_1a
    move p1, p9

    goto :goto_1d

    :cond_1c
    :goto_1c
    move p1, p7

    :goto_1d
    add-int/2addr p4, p2

    if-nez p1, :cond_21

    move p8, p9

    :cond_21
    add-int/2addr p8, p6

    if-le p4, p8, :cond_26

    move p4, p8

    goto :goto_2b

    :cond_26
    if-gez p4, :cond_2a

    move p4, p9

    goto :goto_2b

    :cond_2a
    move p7, p9

    .line 324
    :goto_2b
    invoke-virtual {p0, p9, p4, p9, p7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    return p7
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setInitialMotionY(I)V
    .registers 2

    .line 351
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    return-void
.end method

.method public setMotionY(I)V
    .registers 2

    .line 653
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float p1, p1

    .line 654
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    return-void
.end method

.method public setOnScrollListener(Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOverScrollDistance(I)V
    .registers 3

    .line 355
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    :cond_8
    return-void
.end method

.method public setScrollRange(I)V
    .registers 2

    .line 365
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    return-void
.end method

.method public setScrollStart(I)V
    .registers 2

    .line 377
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .registers 2

    .line 385
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 511
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    .line 516
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_15

    .line 518
    sget-object p1, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v0, "invalid pointer index"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 522
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 525
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 526
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 527
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 529
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    float-to-int v6, v2

    float-to-int v7, p1

    invoke-direct {p0, v5, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v5

    .line 530
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-direct {p0, v8, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v5, :cond_45

    if-eqz v6, :cond_43

    goto :goto_45

    :cond_43
    move v5, v1

    goto :goto_46

    :cond_45
    :goto_45
    move v5, v7

    :goto_46
    if-eqz v5, :cond_54

    .line 536
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    if-le v3, v5, :cond_54

    if-le v3, v4, :cond_54

    .line 538
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v3, :cond_56

    if-gez v0, :cond_5b

    :cond_54
    move v3, v1

    goto :goto_5c

    :cond_56
    if-lez v0, :cond_5b

    .line 546
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    :cond_5b
    move v3, v7

    :goto_5c
    if-eqz v3, :cond_70

    .line 554
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 555
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    if-lez v0, :cond_65

    move v1, v7

    .line 557
    :cond_65
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 559
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 561
    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_70
    return v3
.end method

.method protected springBack()V
    .registers 8

    .line 616
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    if-eqz v0, :cond_1f

    .line 617
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    .line 618
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    div-int/lit8 v1, v0, 0x2

    if-le v3, v1, :cond_11

    sub-int/2addr v0, v3

    :goto_f
    move v5, v0

    goto :goto_13

    :cond_11
    neg-int v0, v3

    goto :goto_f

    .line 619
    :goto_13
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIIII)V

    .line 620
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1f
    return-void
.end method
