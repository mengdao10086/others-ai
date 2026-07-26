.class public Lmiuix/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/ScrollingView;
.implements Lmiuix/core/view/NestedContentInsetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;,
        Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;,
        Lmiuix/core/widget/NestedScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

.field private static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mHasReachEdgeBeforeFling:Z

.field private mInitPaddingTop:I

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMiuixHapticFeedbackEnabled:Z

.field private mNestedYOffset:I

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    const v0, 0x101017a

    .line 174
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 120
    iput-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 127
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 143
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 153
    iput v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 158
    new-array v3, v2, [I

    iput-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 159
    new-array v2, v2, [I

    iput-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 187
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mMiuixHapticFeedbackEnabled:Z

    .line 202
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initScrollView()V

    .line 204
    sget-object v2, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 209
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 212
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 215
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 217
    sget-object p1, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private abortAnimatedScroll()V
    .registers 2

    .line 1695
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x1

    .line 1696
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method private canScroll()Z
    .registers 5

    .line 531
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    .line 532
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method private static clamp(III)I
    .registers 4

    .line 0
    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    .line 1414
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1415
    invoke-virtual {p0, v1, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1417
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 1975
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1977
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1978
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1980
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_15

    .line 1981
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1982
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_15
    return-void
.end method

.method private ensureGlows()V
    .registers 3

    .line 2010
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 2011
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_23

    .line 2012
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2013
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2014
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_23

    :cond_1e
    const/4 v0, 0x0

    .line 2017
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2018
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_23
    :goto_23
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    const/4 v0, 0x2

    .line 1153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v4, v1, :cond_53

    .line 1167
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1168
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1169
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge p2, v8, :cond_50

    if-ge v7, p3, :cond_50

    const/4 v9, 0x1

    if-ge p2, v7, :cond_28

    if-ge v8, p3, :cond_28

    move v10, v9

    goto :goto_29

    :cond_28
    move v10, v3

    :goto_29
    if-nez v2, :cond_2e

    move-object v2, v6

    move v5, v10

    goto :goto_50

    :cond_2e
    if-eqz p1, :cond_36

    .line 1185
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    .line 1186
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_40

    :cond_3e
    move v7, v9

    goto :goto_41

    :cond_40
    move v7, v3

    :goto_41
    if-eqz v5, :cond_48

    if-eqz v10, :cond_50

    if-eqz v7, :cond_50

    goto :goto_4f

    :cond_48
    if-eqz v10, :cond_4d

    move-object v2, v6

    move v5, v9

    goto :goto_50

    :cond_4d
    if-eqz v7, :cond_50

    :goto_4f
    move-object v2, v6

    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_53
    return-object v2
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 1677
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_f

    .line 1678
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 1680
    :cond_f
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .line 1046
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    .line 1047
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1048
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1049
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1055
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1054
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    goto :goto_35

    .line 1051
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_35
    :goto_35
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .registers 7

    .line 682
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2a

    .line 683
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    .line 684
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 685
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_2a

    .line 686
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_2a

    .line 687
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_2a

    .line 688
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 694
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 695
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 697
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 468
    new-instance v0, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 470
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 472
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    .line 474
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 475
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 702
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 703
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1948
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1949
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1394
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1395
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1397
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method private onNestedScrollInternal(II[I)V
    .registers 14

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p3, :cond_16

    const/4 v0, 0x1

    .line 328
    aget v1, p3, v0

    add-int/2addr v1, v4

    aput v1, p3, v0

    :cond_16
    sub-int v6, p1, v4

    .line 332
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1002
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1003
    iget v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_25

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1008
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 1009
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 1010
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_25

    .line 1011
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_25
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 708
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 709
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    .line 1686
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_b

    .line 1688
    :cond_8
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1690
    :goto_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1691
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    .line 1302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 1303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 1307
    :goto_12
    invoke-direct {p0, v2, p2, p3}, Lmiuix/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v2, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    .line 1316
    :goto_24
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    move v3, v4

    .line 1319
    :goto_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    .line 1705
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1708
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1710
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 1713
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1726
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p2, :cond_12

    .line 1730
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_15

    .line 1732
    :cond_12
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_15
    :goto_15
    return v1
.end method

.method private smoothScrollBy(IIZ)V
    .registers 8

    .line 1440
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1444
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_57

    const/4 p1, 0x0

    .line 1446
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1448
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v1

    .line 1451
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v2

    .line 1452
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v2

    .line 1453
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIII)V

    .line 1454
    invoke-direct {p0, p3}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_65

    .line 1456
    :cond_57
    iget-object p3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_62

    .line 1457
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1459
    :cond_62
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1461
    :goto_65
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 480
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 484
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 481
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 489
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 493
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 490
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 511
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 508
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 498
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 502
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 499
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 1332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1335
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1337
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_36

    .line 1339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1340
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1341
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1342
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1343
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1344
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_7e

    :cond_36
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    .line 1349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    .line 1350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    goto :goto_74

    :cond_48
    if-ne p1, v4, :cond_74

    .line 1352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_74

    .line 1353
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1354
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1355
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 1356
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 1357
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_74
    :goto_74
    if-nez v2, :cond_77

    return v3

    :cond_77
    if-ne p1, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    neg-int v2, v2

    .line 1363
    :goto_7b
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    :goto_7e
    if-eqz v0, :cond_9b

    .line 1366
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1367
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1373
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1374
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 1375
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 1376
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_9b
    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    .line 1557
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    .line 1548
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .line 1539
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 17

    move-object/from16 v10, p0

    .line 1593
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1597
    :cond_b
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 1598
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1599
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v0, v1

    .line 1600
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1603
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v0, v11

    .line 1607
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1608
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_31
    if-eqz v0, :cond_59

    .line 1610
    instance-of v2, v0, Lmiuix/core/view/NestedCurrentFling;

    if-eqz v2, :cond_4d

    move-object v2, v0

    check-cast v2, Lmiuix/core/view/NestedCurrentFling;

    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 1611
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v3

    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_59

    .line 1614
    :cond_4d
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_54

    if-ne v0, v1, :cond_54

    goto :goto_59

    .line 1617
    :cond_54
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_31

    .line 1621
    :cond_59
    :goto_59
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 1623
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v11

    sub-int v13, v6, v0

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    if-eqz v13, :cond_9f

    .line 1629
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v15

    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v2, v13

    move v4, v15

    move v6, v14

    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int/2addr v13, v2

    .line 1635
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v12, v7, v11

    .line 1636
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v4, v13

    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 1638
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v11

    sub-int/2addr v13, v0

    :cond_9f
    if-eqz v13, :cond_dc

    .line 1642
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_ab

    if-ne v0, v11, :cond_d9

    if-lez v14, :cond_d9

    .line 1646
    :cond_ab
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    if-gez v13, :cond_c5

    .line 1648
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1649
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_d9

    .line 1652
    :cond_c5
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1653
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1657
    :cond_d9
    :goto_d9
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1660
    :cond_dc
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 1661
    invoke-static/range {p0 .. p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_10a

    .line 1663
    :cond_e8
    invoke-virtual {v10, v11}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1665
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    if-nez v0, :cond_10a

    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mMiuixHapticFeedbackEnabled:Z

    if-eqz v0, :cond_10a

    .line 1666
    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1667
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_10a

    .line 1669
    :cond_105
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v10, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_10a
    :goto_10a
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    .line 1747
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1749
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 1750
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1754
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1759
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v2, v4

    .line 1766
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1767
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1768
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_36

    sub-int v4, v3, v4

    goto :goto_37

    :cond_36
    move v4, v3

    .line 1774
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_59

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_59

    .line 1779
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_49

    .line 1781
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_4c

    .line 1784
    :cond_49
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    .line 1788
    :goto_4c
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 1790
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_77

    .line 1792
    :cond_59
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_77

    if-ge v7, v4, :cond_77

    .line 1797
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_6a

    .line 1799
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_6e

    .line 1802
    :cond_6a
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1806
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_77
    :goto_77
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    .line 1530
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    const/4 v0, 0x0

    .line 1521
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    .line 1495
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 1496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1502
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1503
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 1505
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_35

    sub-int/2addr v2, v3

    goto :goto_39

    :cond_35
    if-le v3, v0, :cond_39

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_39
    :goto_39
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 306
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 311
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 301
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 262
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    .line 231
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 295
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 2024
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2025
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_cd

    .line 2026
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    .line 2027
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_67

    .line 2028
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2029
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 2030
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 2032
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2033
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2034
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 2035
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    goto :goto_3a

    :cond_39
    move v6, v2

    .line 2037
    :goto_3a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2038
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 2039
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    :cond_4f
    int-to-float v6, v6

    int-to-float v5, v5

    .line 2041
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2042
    iget-object v5, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2043
    iget-object v3, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2044
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2046
    :cond_64
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2048
    :cond_67
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 2049
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2050
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 2051
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 2053
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 2054
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2055
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v2

    .line 2056
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    .line 2058
    :cond_98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 2059
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 2060
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_ad
    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    .line 2062
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v3

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    .line 2063
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2064
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2065
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 2066
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2068
    :cond_ca
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_cd
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 640
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 642
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_36

    .line 643
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_35

    .line 644
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_22

    const/4 p1, 0x0

    .line 646
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    if-eq p1, p0, :cond_35

    .line 650
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    .line 656
    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_79

    .line 657
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5a

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_4f

    goto :goto_79

    .line 673
    :cond_4f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_56

    move v2, v4

    :cond_56
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_79

    .line 666
    :cond_5a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_65

    .line 667
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_79

    .line 669
    :cond_65
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_79

    .line 659
    :cond_6a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_75

    .line 660
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_79

    .line 662
    :cond_75
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    :cond_79
    :goto_79
    return v1
.end method

.method public fling(I)V
    .registers 15

    .line 1960
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v0, 0x1

    if-lez p1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    .line 1963
    :goto_c
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mHasReachEdgeBeforeFling:Z

    .line 1965
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1970
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    :cond_2e
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1269
    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 1271
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1272
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3d

    .line 1275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    sub-int/2addr v0, v2

    .line 1277
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1279
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1280
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1284
    :cond_3d
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .line 443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_33

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 416
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .registers 5

    .line 1126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    .line 1127
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1129
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1131
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2e
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    .line 428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 432
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_16

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 249
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 274
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 6

    .line 1563
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    .line 1569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1568
    invoke-static {p2, v0, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 1571
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1573
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1579
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1582
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1581
    invoke-static {p2, p5, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 1584
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1587
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1914
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1916
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x0

    .line 1403
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiuix/core/widget/NestedScrollView;->mInitPaddingTop:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mInitPaddingTop:I

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 1019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_44

    .line 1021
    :cond_12
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_44

    const/16 v0, 0x9

    .line 1022
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_44

    .line 1024
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1025
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    .line 1026
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_35

    move v0, v1

    goto :goto_39

    :cond_35
    if-le p1, v0, :cond_38

    goto :goto_39

    :cond_38
    move v0, p1

    :goto_39
    if-eq v0, v2, :cond_44

    .line 1034
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 736
    iget-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    return v1

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_a2

    const/4 v4, -0x1

    if-eq v0, v1, :cond_7d

    if-eq v0, v2, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1f

    goto/16 :goto_d9

    .line 822
    :cond_1f
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d9

    .line 751
    :cond_24
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_2a

    goto/16 :goto_d9

    .line 757
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_4d

    .line 759
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 764
    :cond_4d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 765
    iget v4, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 766
    iget v5, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_d9

    .line 767
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_d9

    .line 768
    iput-boolean v1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 769
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 770
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 771
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 772
    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 775
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d9

    .line 813
    :cond_7d
    iput-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 814
    iput v4, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 815
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 816
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 817
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 819
    :cond_9e
    invoke-virtual {p0, v3}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_d9

    .line 782
    :cond_a2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v0}, Lmiuix/core/widget/NestedScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 784
    iput-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 785
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_d9

    .line 793
    :cond_b8
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 794
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 796
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 797
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 804
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 805
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 806
    invoke-virtual {p0, v2, v3}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 830
    :cond_d9
    :goto_d9
    iget-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1876
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1877
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1879
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-static {p2, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1880
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_15
    const/4 p2, 0x0

    .line 1882
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1884
    iget-boolean p4, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_63

    .line 1886
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_2d

    .line 1887
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p4

    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    iget v0, v0, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1888
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 1894
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_47

    .line 1895
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1897
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    :cond_47
    sub-int/2addr p5, p3

    .line 1899
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 1900
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    .line 1901
    invoke-static {p2, p5, p1}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    if-eq p1, p2, :cond_63

    .line 1903
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1908
    :cond_63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1909
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 592
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 594
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    return-void

    .line 598
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 603
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_58

    const/4 p2, 0x0

    .line 604
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 605
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 607
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 608
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 609
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_58

    .line 616
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 615
    invoke-static {p1, v1, v0}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 619
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 620
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_c

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 402
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    .line 403
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    return p2

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 411
    invoke-virtual {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 395
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 365
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 390
    invoke-direct {p0, p5, p1, p2}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    const/4 p1, 0x0

    .line 359
    invoke-direct {p0, p5, p6, p1}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 319
    invoke-direct {p0, p5, p6, p7}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 346
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    .line 347
    invoke-virtual {p0, p1, p4}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 1063
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p1, 0x82

    goto :goto_b

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1843
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1844
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    return v1

    .line 1851
    :cond_23
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 1855
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 2105
    instance-of v0, p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    .line 2106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2110
    :cond_8
    check-cast p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 2111
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2112
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 2113
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 2118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2119
    new-instance v1, Lmiuix/core/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    iput v0, v1, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1921
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1923
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2c

    if-ne p0, p1, :cond_c

    goto :goto_2c

    .line 1932
    :cond_c
    invoke-static {p1, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 1933
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1934
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1935
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1936
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 0
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    .line 352
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 353
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 835
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_10

    .line 840
    iput v12, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 843
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 844
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_21d

    const/4 v3, -0x1

    if-eq v0, v14, :cond_1d2

    if-eq v0, v1, :cond_82

    const/4 v1, 0x3

    if-eq v0, v1, :cond_54

    const/4 v1, 0x5

    if-eq v0, v1, :cond_41

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2f

    goto/16 :goto_254

    .line 987
    :cond_2f
    invoke-direct/range {p0 .. p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 988
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_254

    .line 981
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 982
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 983
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_254

    .line 971
    :cond_54
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7b

    .line 972
    iget-object v15, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v17

    const/16 v20, 0x0

    .line 973
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v21

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 972
    invoke-virtual/range {v15 .. v21}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 974
    invoke-static/range {p0 .. p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 977
    :cond_7b
    iput v3, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 978
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_254

    .line 873
    :cond_82
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    if-ne v15, v3, :cond_a9

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_254

    .line 879
    :cond_a9
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 880
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v0, v6

    .line 881
    iget-boolean v1, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_cd

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_cd

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 884
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 886
    :cond_c6
    iput-boolean v14, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_cf

    .line 888
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v0, v1

    :cond_cd
    :goto_cd
    move v7, v0

    goto :goto_d3

    .line 890
    :cond_cf
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v0, v1

    goto :goto_cd

    .line 893
    :goto_d3
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_254

    .line 895
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 897
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int/2addr v7, v0

    .line 898
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    :cond_f4
    move/from16 v16, v7

    .line 902
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int/2addr v6, v0

    iput v6, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v17

    .line 905
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v9

    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_113

    if-ne v0, v14, :cond_110

    if-lez v9, :cond_110

    goto :goto_113

    :cond_110
    move/from16 v18, v12

    goto :goto_115

    :cond_113
    :goto_113
    move/from16 v18, v14

    .line 912
    :goto_115
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v8, 0x0

    const/16 v19, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v6, v9

    move/from16 v22, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 913
    invoke-virtual {v10, v12}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_13a

    .line 915
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 918
    :cond_13a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int v2, v0, v17

    sub-int v4, v16, v2

    .line 921
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v12, v7, v14

    .line 923
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 926
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 927
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    add-int/2addr v0, v1

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    if-eqz v18, :cond_254

    .line 930
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int v0, v16, v0

    .line 931
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    add-int v1, v17, v0

    if-gez v1, :cond_191

    .line 934
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 935
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 934
    invoke-static {v1, v0, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 936
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 937
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1bb

    :cond_191
    move/from16 v2, v22

    if-le v1, v2, :cond_1bb

    .line 940
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 941
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 942
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 940
    invoke-static {v1, v0, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 943
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 944
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 947
    :cond_1bb
    :goto_1bb
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_254

    .line 948
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1cd

    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_254

    .line 949
    :cond_1cd
    invoke-static/range {p0 .. p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_254

    .line 955
    :cond_1d2
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 956
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 957
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 958
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v10, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    if-lt v1, v4, :cond_1fa

    neg-int v0, v0

    int-to-float v1, v0

    .line 959
    invoke-virtual {v10, v2, v1}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_217

    .line 960
    invoke-virtual {v10, v2, v1, v14}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 961
    invoke-virtual {v10, v0}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    goto :goto_217

    .line 963
    :cond_1fa
    iget-object v15, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v17

    const/16 v20, 0x0

    .line 964
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v21

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 963
    invoke-virtual/range {v15 .. v21}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_217

    .line 965
    invoke-static/range {p0 .. p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 967
    :cond_217
    :goto_217
    iput v3, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 968
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    goto :goto_254

    .line 848
    :cond_21d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_224

    return v12

    .line 851
    :cond_224
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_239

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_239

    .line 854
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 862
    :cond_239
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_244

    .line 863
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 867
    :cond_244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 868
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 869
    invoke-virtual {v10, v1, v12}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 992
    :cond_254
    :goto_254
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_25b

    .line 993
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 995
    :cond_25b
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    return v14
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 22

    move-object v0, p0

    .line 1071
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v1

    .line 1073
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_13

    move v2, v5

    goto :goto_14

    :cond_13
    move v2, v4

    .line 1075
    :goto_14
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    if-eqz v1, :cond_2a

    if-ne v1, v5, :cond_28

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v4

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v5

    :goto_2b
    if-eqz v1, :cond_34

    if-ne v1, v5, :cond_32

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    move v1, v4

    goto :goto_35

    :cond_34
    :goto_34
    move v1, v5

    :goto_35
    add-int v3, p3, p1

    if-nez v2, :cond_3b

    move v2, v4

    goto :goto_3d

    :cond_3b
    move/from16 v2, p7

    :goto_3d
    add-int v6, p4, p2

    if-nez v1, :cond_43

    move v1, v4

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    neg-int v7, v2

    add-int v2, v2, p5

    neg-int v8, v1

    add-int v1, v1, p6

    if-le v3, v2, :cond_50

    move v3, v2

    move v2, v5

    goto :goto_56

    :cond_50
    if-ge v3, v7, :cond_55

    move v2, v5

    move v3, v7

    goto :goto_56

    :cond_55
    move v2, v4

    :goto_56
    if-le v6, v1, :cond_5b

    move v6, v1

    move v1, v5

    goto :goto_61

    :cond_5b
    if-ge v6, v8, :cond_60

    move v1, v5

    move v6, v8

    goto :goto_61

    :cond_60
    move v1, v4

    :goto_61
    if-eqz v1, :cond_80

    .line 1115
    invoke-virtual {p0, v5}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v7

    if-nez v7, :cond_80

    .line 1116
    iget-object v7, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object p1, v7

    move p2, v3

    move p3, v6

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-virtual/range {p1 .. p7}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 1119
    :cond_80
    invoke-virtual {p0, v3, v6, v2, v1}, Lmiuix/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_87

    if-eqz v1, :cond_88

    :cond_87
    move v4, v5

    :cond_88
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1231
    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-eqz v0, :cond_40

    .line 1234
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1235
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_51

    sub-int/2addr v0, v2

    .line 1237
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1239
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1240
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_51

    sub-int/2addr v0, v3

    .line 1241
    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_51

    .line 1245
    :cond_40
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1246
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_51

    .line 1247
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1250
    :cond_51
    :goto_51
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1252
    invoke-direct {p0, p1, v1, v3}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1813
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_8

    .line 1814
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_a

    .line 1817
    :cond_8
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1819
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1862
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1863
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1862
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1865
    invoke-direct {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 717
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 719
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    .line 1870
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1871
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    .line 1994
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x0

    .line 1995
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1996
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1997
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1998
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1999
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2000
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 2001
    invoke-static {p1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 2002
    invoke-static {p2, v4, v0}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 2003
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_58

    .line 2004
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_58
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 559
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 560
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 561
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setMiuixHapticFeedbackEnabled(Z)V
    .registers 2

    .line 2126
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mMiuixHapticFeedbackEnabled:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 269
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 578
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1429
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method smoothScrollTo(IIZ)V
    .registers 5

    .line 1483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 239
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 244
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
