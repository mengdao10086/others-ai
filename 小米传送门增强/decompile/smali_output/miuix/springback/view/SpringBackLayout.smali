.class public Lmiuix/springback/view/SpringBackLayout;
.super Landroid/view/ViewGroup;
.source "SpringBackLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Lmiuix/core/view/NestedCurrentFling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/view/SpringBackLayout$OnSpringListener;
    }
.end annotation


# instance fields
.field private consumeNestFlingCounter:I

.field private mActivePointerId:I

.field private mFakeScrollX:I

.field private mFakeScrollY:I

.field private mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

.field private mInGlobalRomMode:Z

.field private mInitPaddingTop:I

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mNestedFlingInProgress:Z

.field private mNestedScrollAxes:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field private mOnScrollChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/core/view/ViewCompatOnScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginScrollOrientation:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mScrollByFling:Z

.field private mScrollOrientation:I

.field private mScrollState:I

.field private mSpringBackEnable:Z

.field private mSpringBackMode:I

.field private mSpringScroller:Lmiuix/springback/view/SpringScroller;

.field private mTarget:Landroid/view/View;

.field private mTargetId:I

.field private mTotalFlingUnconsumed:F

.field private mTotalScrollBottomUnconsumed:F

.field private mTotalScrollTopUnconsumed:F

.field private mTouchSlop:I

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    const/4 v2, 0x2

    .line 83
    new-array v3, v2, [I

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    .line 84
    new-array v3, v2, [I

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    .line 85
    new-array v3, v2, [I

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 1650
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    .line 1652
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 131
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 132
    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v3

    iput-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 133
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    .line 134
    sget-object v3, Lmiuix/springback/R$styleable;->SpringBackLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 135
    sget v3, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollableView:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    .line 136
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_scrollOrientation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 137
    sget v0, Lmiuix/springback/R$styleable;->SpringBackLayout_springBackMode:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    .line 138
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    new-instance p2, Lmiuix/springback/view/SpringScroller;

    invoke-direct {p2}, Lmiuix/springback/view/SpringScroller;-><init>()V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    .line 140
    new-instance p2, Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    invoke-direct {p2, p0, v0}, Lmiuix/springback/view/SpringBackLayoutHelper;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    const/4 p2, 0x1

    .line 141
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->setNestedScrollingEnabled(Z)V

    .line 142
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 143
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 144
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    .line 145
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInGlobalRomMode:Z

    if-eqz p1, :cond_81

    .line 147
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    goto :goto_83

    .line 149
    :cond_81
    iput-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    :goto_83
    return-void
.end method

.method private checkHorizontalScrollStart(I)V
    .registers 4

    .line 849
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 852
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    .line 853
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-gez v0, :cond_2b

    .line 854
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    goto :goto_30

    .line 856
    :cond_2b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 858
    :goto_30
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_38

    :cond_35
    const/4 p1, 0x0

    .line 860
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :goto_38
    return-void
.end method

.method private checkOrientation(Landroid/view/MotionEvent;)V
    .registers 7

    .line 463
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_1d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    goto :goto_6e

    .line 492
    :cond_19
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_6e

    .line 486
    :cond_1d
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-nez p1, :cond_6e

    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    if-eqz p1, :cond_6e

    .line 488
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    goto :goto_6e

    .line 496
    :cond_2a
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    .line 498
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_36

    .line 499
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_6e

    .line 501
    :cond_36
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_6e

    .line 467
    :cond_3a
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iget v0, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 468
    iget v0, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 469
    iget p1, p1, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 470
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_54

    .line 471
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 472
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_62

    .line 473
    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_60

    .line 474
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 475
    invoke-virtual {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    goto :goto_62

    .line 477
    :cond_60
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 479
    :goto_62
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_6b

    .line 480
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    goto :goto_6e

    .line 482
    :cond_6b
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private checkScrollStart(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 839
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkVerticalScrollStart(I)V

    goto :goto_a

    .line 841
    :cond_7
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkHorizontalScrollStart(I)V

    :goto_a
    return-void
.end method

.method private checkVerticalScrollStart(I)V
    .registers 4

    .line 822
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 825
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    .line 826
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-gez v0, :cond_2b

    .line 827
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    goto :goto_30

    .line 829
    :cond_2b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    add-float/2addr v0, p1

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 831
    :goto_30
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_38

    :cond_35
    const/4 p1, 0x0

    .line 833
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    :goto_38
    return-void
.end method

.method private consumeDelta(I[II)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    const/4 p3, 0x1

    .line 1503
    aput p1, p2, p3

    goto :goto_a

    :cond_7
    const/4 p3, 0x0

    .line 1505
    aput p1, p2, p3

    :goto_a
    return-void
.end method

.method private disallowParentInterceptTouchEvent(Z)V
    .registers 3

    .line 456
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 458
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private dispatchScrollState(I)V
    .registers 6

    .line 1641
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq v0, p1, :cond_22

    .line 1643
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    .line 1644
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 1645
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v3

    invoke-interface {v2, v0, p1, v3}, Lmiuix/core/view/ViewCompatOnScrollChangeListener;->onStateChanged(IIZ)V

    goto :goto_c

    :cond_22
    return-void
.end method

.method private ensureTarget()V
    .registers 3

    .line 246
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_18

    .line 247
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTargetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 250
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    goto :goto_18

    .line 248
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_18
    :goto_18
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_47

    .line 256
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_34

    .line 257
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 260
    :cond_34
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_46

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_46

    .line 261
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_46
    return-void

    .line 253
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fail to get target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFakeScrollX()I
    .registers 2

    .line 192
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    return v0
.end method

.method private getFakeScrollY()I
    .registers 2

    .line 196
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    return v0
.end method

.method private isTargetScrollOrientation(I)Z
    .registers 3

    .line 368
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isTargetScrollToBottom(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_18

    .line 384
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_12

    .line 385
    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1, v1}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 387
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 389
    :cond_18
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isTargetScrollToTop(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1a

    .line 373
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_13

    .line 374
    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1, v1}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 376
    :cond_13
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 378
    :cond_1a
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private moveTarget(FI)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_a

    neg-float p1, p1

    float-to-int p1, p1

    .line 1054
    invoke-virtual {p0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    goto :goto_f

    :cond_a
    neg-float p1, p1

    float-to-int p1, p1

    .line 1056
    invoke-virtual {p0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    :goto_f
    return-void
.end method

.method private onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    .line 578
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 581
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 584
    :cond_1c
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    .line 587
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v3, -0x1

    if-eq v1, v0, :cond_a8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_42

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a8

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3d

    goto/16 :goto_cf

    .line 635
    :cond_3d
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_cf

    .line 605
    :cond_42
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const-string v4, "SpringBackLayout"

    if-ne v1, v3, :cond_4e

    .line 606
    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 609
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_5a

    .line 611
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 615
    :cond_5a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 617
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    move v2, v0

    :cond_6b
    if-nez v2, :cond_73

    .line 618
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_7b

    :cond_73
    if-eqz v2, :cond_92

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_92

    .line 619
    :cond_7b
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float v1, p1, v1

    .line 620
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_cf

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_cf

    .line 621
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 622
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 623
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_cf

    .line 626
    :cond_92
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr v1, p1

    .line 627
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_cf

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_cf

    .line 628
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 629
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 630
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_cf

    .line 639
    :cond_a8
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 640
    iput v3, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_cf

    .line 591
    :cond_ad
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 592
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_ba

    return v2

    .line 596
    :cond_ba
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_cd

    .line 598
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 599
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    goto :goto_cf

    .line 601
    :cond_cd
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 643
    :cond_cf
    :goto_cf
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p1
.end method

.method private onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 697
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/GridView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    .line 698
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 699
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onOverScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 702
    :cond_1c
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 703
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 704
    :cond_2d
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 705
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 707
    :cond_38
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1
.end method

.method private onNestedPreScroll(I[II)V
    .registers 11

    .line 1411
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    :goto_f
    if-eqz v0, :cond_16

    .line 1413
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1414
    :goto_1a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x0

    if-nez p3, :cond_74

    if-lez p1, :cond_49

    .line 1416
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v0, p3, v5

    if-lez v0, :cond_49

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_35

    float-to-int p1, p3

    .line 1418
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1419
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_3b

    :cond_35
    sub-float/2addr p3, v0

    .line 1421
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1422
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1424
    :goto_3b
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1425
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_181

    :cond_49
    if-gez p1, :cond_181

    .line 1426
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v0, p3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_181

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5f

    float-to-int p1, p3

    .line 1428
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1429
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_65

    :cond_5f
    add-float/2addr p3, v0

    .line 1431
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1432
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1434
    :goto_65
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1435
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto/16 :goto_181

    :cond_74
    if-ne v4, v3, :cond_79

    .line 1438
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_7b

    :cond_79
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    :goto_7b
    if-lez p1, :cond_f0

    .line 1439
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_f0

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_b9

    .line 1441
    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    cmpl-float v1, v0, p3

    if-lez v1, :cond_99

    float-to-int p1, p3

    .line 1443
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1445
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_b1

    .line 1447
    :cond_99
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    sub-float v5, p3, v0

    .line 1450
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p1, p2

    .line 1449
    invoke-virtual {p0, v5, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1452
    :goto_b1
    invoke-direct {p0, v5, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1453
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_181

    .line 1455
    :cond_b9
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_c2

    .line 1456
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1457
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1459
    :cond_c2
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_e9

    .line 1460
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    .line 1461
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    goto :goto_eb

    .line 1463
    :cond_e9
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1465
    :goto_eb
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto/16 :goto_181

    :cond_f0
    if-gez p1, :cond_166

    .line 1467
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    neg-float v6, v3

    cmpg-float v6, v6, v5

    if-gez v6, :cond_166

    const/high16 v6, -0x3b060000    # -2000.0f

    cmpg-float v6, p3, v6

    if-gez v6, :cond_130

    .line 1469
    invoke-virtual {p0, v3, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p3

    int-to-float v0, p1

    neg-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_110

    float-to-int p1, p3

    .line 1471
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    .line 1473
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_128

    .line 1475
    :cond_110
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    add-float v5, p3, v0

    .line 1478
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p1, p2

    .line 1477
    invoke-virtual {p0, v5, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1480
    :goto_128
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    neg-float p1, v5

    .line 1481
    invoke-direct {p0, p1, v4}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_181

    .line 1483
    :cond_130
    iget-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-nez v3, :cond_139

    .line 1484
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1485
    invoke-direct {p0, p3, v4, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1487
    :cond_139
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_160

    .line 1488
    iget-object p3, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p3}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result p3

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    int-to-float p3, v0

    .line 1489
    invoke-virtual {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p3, v0, v4}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p3

    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_162

    .line 1491
    :cond_160
    iput v5, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1493
    :goto_162
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    goto :goto_181

    :cond_166
    if-eqz p1, :cond_181

    .line 1495
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float p3, p3, v5

    if-eqz p3, :cond_174

    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float p3, p3, v5

    if-nez p3, :cond_181

    :cond_174
    iget-boolean p3, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz p3, :cond_181

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p3

    if-nez p3, :cond_181

    .line 1496
    invoke-direct {p0, p1, p2, v4}, Lmiuix/springback/view/SpringBackLayout;->consumeDelta(I[II)V

    :cond_181
    :goto_181
    return-void
.end method

.method private onOverScrollEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d6

    .line 960
    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_bb

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6a

    const/4 v4, 0x3

    if-eq p2, v4, :cond_bb

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 p3, 0x6

    if-eq p2, p3, :cond_16

    goto/16 :goto_df

    .line 1031
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_df

    .line 994
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 996
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1000
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_48

    .line 1001
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 1002
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3e

    .line 1005
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1009
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 1010
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 1011
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_62

    .line 1013
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 1014
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_59

    .line 1017
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1022
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 1023
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 1024
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 1026
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto/16 :goto_df

    .line 966
    :cond_6a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_78

    .line 968
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 972
    :cond_78
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_df

    if-ne p3, v3, :cond_93

    .line 975
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 976
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_91
    mul-float/2addr p2, p1

    goto :goto_a7

    .line 978
    :cond_93
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 979
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_91

    .line 981
    :goto_a7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_b7

    .line 984
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 985
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_df

    .line 987
    :cond_b7
    invoke-direct {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    .line 1035
    :cond_bb
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c9

    .line 1037
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1040
    :cond_c9
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_d2

    .line 1041
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 1042
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_d2
    const/4 p1, -0x1

    .line 1044
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 962
    :cond_d6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 963
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_df
    :goto_df
    return v0
.end method

.method private onScrollDownEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d2

    .line 866
    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_b7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6a

    const/4 v4, 0x3

    if-eq p2, v4, :cond_b7

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 p3, 0x6

    if-eq p2, p3, :cond_16

    goto/16 :goto_db

    .line 937
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_db

    .line 900
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 902
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 906
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_48

    .line 907
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 908
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3e

    .line 911
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 915
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 916
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 917
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_62

    .line 919
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 920
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_59

    .line 923
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 928
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 929
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 930
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 932
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto/16 :goto_db

    .line 872
    :cond_6a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_78

    .line 874
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 878
    :cond_78
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_db

    if-ne p3, v3, :cond_93

    .line 881
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 882
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_91
    mul-float/2addr p2, p1

    goto :goto_a7

    .line 884
    :cond_93
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 885
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_91

    :goto_a7
    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_b3

    .line 890
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 891
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_db

    .line 893
    :cond_b3
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    .line 941
    :cond_b7
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c5

    .line 943
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 946
    :cond_c5
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_ce

    .line 947
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 948
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_ce
    const/4 p1, -0x1

    .line 950
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 868
    :cond_d2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 869
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_db
    :goto_db
    return v0
.end method

.method private onScrollEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c9

    .line 729
    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_ae

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6a

    const/4 v4, 0x3

    if-eq p2, v4, :cond_69

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 p3, 0x6

    if-eq p2, p3, :cond_16

    goto/16 :goto_d2

    .line 796
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d2

    .line 759
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 761
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 765
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_48

    .line 766
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 767
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3e

    .line 770
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 774
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 775
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 776
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_62

    .line 778
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 779
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_59

    .line 782
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 787
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 788
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 789
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 791
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_d2

    :cond_69
    return v1

    .line 736
    :cond_6a
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_78

    .line 738
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 742
    :cond_78
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_d2

    if-ne p3, v3, :cond_93

    .line 745
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 746
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p1, v1

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_91
    mul-float/2addr p2, p1

    goto :goto_a7

    .line 748
    :cond_93
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 749
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p1, v1

    invoke-virtual {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_91

    .line 753
    :goto_a7
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    .line 754
    invoke-direct {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_d2

    .line 799
    :cond_ae
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_bc

    .line 801
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 804
    :cond_bc
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_c5

    .line 805
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 806
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_c5
    const/4 p1, -0x1

    .line 808
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 731
    :cond_c9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 732
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_d2
    :goto_d2
    return v0
.end method

.method private onScrollUpEvent(Landroid/view/MotionEvent;II)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d0

    .line 1084
    const-string v2, "SpringBackLayout"

    if-eq p2, v0, :cond_b5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_69

    const/4 v4, 0x3

    if-eq p2, v4, :cond_b5

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1b

    const/4 p3, 0x6

    if-eq p2, p3, :cond_16

    goto/16 :goto_d9

    .line 1163
    :cond_16
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d9

    .line 1126
    :cond_1b
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_29

    .line 1128
    const-string p1, "Got ACTION_POINTER_DOWN event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1132
    :cond_29
    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    if-ne p3, v3, :cond_48

    .line 1133
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 1134
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr p2, p3

    .line 1135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_3e

    .line 1137
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1141
    :cond_3e
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 1142
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 1143
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_62

    .line 1145
    :cond_48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 1146
    iget p3, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    sub-float/2addr p2, p3

    .line 1147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p3

    if-gez p3, :cond_59

    .line 1149
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1154
    :cond_59
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v1, p2

    .line 1155
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownX:F

    .line 1156
    iput v1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    .line 1158
    :goto_62
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_d9

    .line 1090
    :cond_69
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_77

    .line 1092
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1096
    :cond_77
    iget-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_d9

    if-ne p3, v3, :cond_91

    .line 1099
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1100
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    :goto_8f
    mul-float/2addr p2, p1

    goto :goto_a4

    .line 1102
    :cond_91
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1103
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionX:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2, p3}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result p1

    goto :goto_8f

    :goto_a4
    const/4 p1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_b1

    .line 1109
    invoke-virtual {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->requestDisallowParentInterceptTouchEvent(Z)V

    neg-float p1, p2

    .line 1110
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    goto :goto_d9

    .line 1119
    :cond_b1
    invoke-direct {p0, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    return v1

    .line 1167
    :cond_b5
    iget p2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_c3

    .line 1169
    const-string p1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1172
    :cond_c3
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_cc

    .line 1173
    iput-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 1174
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :cond_cc
    const/4 p1, -0x1

    .line 1176
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    return v1

    .line 1086
    :cond_d0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 1087
    invoke-direct {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->checkScrollStart(I)V

    :cond_d9
    :goto_d9
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1186
    iget v2, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_17

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1190
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    :cond_17
    return-void
.end method

.method private onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x2

    .line 508
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 511
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 514
    :cond_1c
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    .line 517
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_ad

    const/4 v4, -0x1

    if-eq v1, v3, :cond_a8

    if-eq v1, v0, :cond_42

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a8

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3d

    goto/16 :goto_cf

    .line 565
    :cond_3d
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_cf

    .line 535
    :cond_42
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    const-string v5, "SpringBackLayout"

    if-ne v1, v4, :cond_4e

    .line 536
    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 539
    :cond_4e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_5a

    .line 541
    const-string p1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 544
    :cond_5a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 546
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    move v2, v3

    :cond_6b
    if-nez v2, :cond_73

    .line 547
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_73
    if-eqz v2, :cond_92

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_92

    .line 548
    :cond_7b
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    .line 549
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cf

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_cf

    .line 550
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 551
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 552
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_cf

    .line 555
    :cond_92
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    sub-float/2addr v0, p1

    .line 556
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cf

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_cf

    .line 557
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 558
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 559
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_cf

    .line 570
    :cond_a8
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 571
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    goto :goto_cf

    .line 521
    :cond_ad
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mActivePointerId:I

    .line 522
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_ba

    return v2

    .line 526
    :cond_ba
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    .line 527
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_cd

    .line 528
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 529
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialDownY:F

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mInitialMotionY:F

    goto :goto_cf

    .line 531
    :cond_cd
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    .line 574
    :cond_cf
    :goto_cf
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mIsBeingDragged:Z

    return p1
.end method

.method private onVerticalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 713
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/GridView;

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    .line 714
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 715
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onOverScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 718
    :cond_1c
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 719
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 720
    :cond_2d
    invoke-direct {p0, v2}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 721
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollUpEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1

    .line 723
    :cond_38
    invoke-direct {p0, p1, v0, v2}, Lmiuix/springback/view/SpringBackLayout;->onScrollDownEvent(Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1
.end method

.method private springBack(FIZ)V
    .registers 14

    .line 1068
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 1069
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1070
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1071
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    int-to-float v3, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lmiuix/springback/view/SpringScroller;->scrollByFling(FFFFFIZ)V

    if-nez v0, :cond_27

    if-nez v1, :cond_27

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_27

    const/4 p1, 0x0

    .line 1073
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_2b

    :cond_27
    const/4 p1, 0x2

    .line 1075
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :goto_2b
    if-eqz p3, :cond_30

    .line 1078
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_30
    return-void
.end method

.method private springBack(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1061
    invoke-direct {p0, v0, p1, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    return-void
.end method

.method private stopNestedFlingScroll(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1544
    iput-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 1545
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v1, :cond_1e

    .line 1546
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_15

    .line 1547
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    goto :goto_17

    :cond_15
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1548
    :goto_17
    invoke-direct {p0, v1, p1, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(FIZ)V

    .line 1550
    :cond_1a
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_21

    .line 1552
    :cond_1e
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    :goto_21
    return-void
.end method

.method private supportBottomSpringBackMode()Z
    .registers 2

    .line 230
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private supportTopSpringBackMode()Z
    .registers 3

    .line 226
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method


# virtual methods
.method public computeScroll()V
    .registers 4

    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 310
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 311
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->scrollTo(II)V

    .line 312
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    .line 313
    invoke-static {p0}, Lmiuix/overscroller/widget/AnimationHelper;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_4c

    .line 315
    :cond_26
    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollX()I

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result v0

    if-eqz v0, :cond_48

    :cond_32
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    .line 318
    const-string v0, "SpringBackLayout"

    const-string v2, "Scroll stop but state is not correct."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    if-ne v0, v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x1

    .line 321
    :goto_44
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_4c

    :cond_48
    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 1614
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 1609
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 1619
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 1604
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

    .line 1573
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_17

    .line 396
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->isTouchInTarget(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 397
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 401
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_29

    .line 404
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollState:I

    if-eq p1, v2, :cond_29

    const/4 p1, 0x0

    .line 405
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    :cond_29
    return v0
.end method

.method public getSpringBackMode()I
    .registers 2

    .line 188
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return v0
.end method

.method protected getSpringBackRange(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1195
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    goto :goto_8

    :cond_6
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    :goto_8
    return p1
.end method

.method public getSpringScrollX()I
    .registers 2

    .line 200
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_9

    .line 201
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    return v0

    .line 203
    :cond_9
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->getFakeScrollX()I

    move-result v0

    return v0
.end method

.method public getSpringScrollY()I
    .registers 2

    .line 207
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    return v0

    .line 210
    :cond_9
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->getFakeScrollY()I

    move-result v0

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .registers 2

    .line 266
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public internalRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1516
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected obtainDampingDistance(FI)F
    .registers 9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1209
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 1210
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p1, v4

    int-to-float p2, p2

    mul-float/2addr p1, p2

    return p1
.end method

.method protected obtainMaxSpringBackDistance(I)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1205
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result p1

    return p1
.end method

.method protected obtainSpringBackDistance(FI)F
    .registers 4

    .line 1199
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    move-result p2

    .line 1200
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, p2

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1201
    invoke-virtual {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->obtainDampingDistance(FI)F

    move-result p1

    return p1
.end method

.method protected obtainTouchDistance(FFI)F
    .registers 10

    .line 1217
    invoke-virtual {p0, p3}, Lmiuix/springback/view/SpringBackLayout;->getSpringBackRange(I)I

    move-result p3

    .line 1218
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    goto :goto_12

    :cond_11
    move p1, p2

    :goto_12
    int-to-double v0, p3

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    .line 1219
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-float p2, p3

    const/high16 p3, 0x40400000    # 3.0f

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1624
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1625
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 1626
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenWidth:I

    .line 1627
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mScreenHeight:I

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 156
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInitPaddingTop:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 413
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 417
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v0, :cond_16

    goto/16 :goto_9d

    .line 420
    :cond_16
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 424
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 425
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_32

    if-nez v0, :cond_32

    .line 426
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 429
    :cond_32
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v0

    if-nez v0, :cond_3f

    return v1

    .line 433
    :cond_3f
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_85

    .line 434
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 435
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_60

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_60

    .line 436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_60

    return v1

    .line 438
    :cond_60
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_75

    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_75

    .line 439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_75

    return v1

    .line 441
    :cond_75
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 442
    :cond_81
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->disallowParentInterceptTouchEvent(Z)V

    goto :goto_87

    .line 445
    :cond_85
    iput v0, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollOrientation:I

    .line 447
    :cond_87
    :goto_87
    invoke-direct {p0, v3}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 448
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 449
    :cond_92
    invoke-direct {p0, v4}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 450
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9d
    :goto_9d
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 271
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_25

    .line 272
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 273
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 274
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    .line 276
    iget-object p5, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p5, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    :cond_25
    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    .line 282
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->ensureTarget()V

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 284
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 285
    iget-object v2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_25

    .line 289
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_44

    :cond_25
    if-ne v0, v2, :cond_2c

    .line 291
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_44

    .line 293
    :cond_2c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    .line 293
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_44
    if-nez v1, :cond_57

    .line 297
    iget-object p2, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_76

    :cond_57
    if-ne v1, v2, :cond_5e

    .line 299
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_76

    .line 301
    :cond_5e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 304
    :goto_76
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedCurrentFling(FF)Z
    .registers 3

    .line 1674
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1675
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1563
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1568
    invoke-virtual {p0, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 13

    .line 1396
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_10

    .line 1397
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 1398
    invoke-direct {p0, p3, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    goto :goto_10

    .line 1400
    :cond_d
    invoke-direct {p0, p2, p4, p5}, Lmiuix/springback/view/SpringBackLayout;->onNestedPreScroll(I[II)V

    .line 1403
    :cond_10
    :goto_10
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mParentScrollConsumed:[I

    const/4 v0, 0x0

    .line 1404
    aget v1, p4, v0

    sub-int v2, p2, v1

    const/4 p2, 0x1

    aget v1, p4, p2

    sub-int v3, p3, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 1405
    aget p3, p4, v0

    aget p5, p1, v0

    add-int/2addr p3, p5

    aput p3, p4, v0

    .line 1406
    aget p3, p4, p2

    aget p1, p1, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    :cond_34
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 14

    const/4 v6, 0x0

    .line 1320
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15

    .line 1314
    iget-object v7, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 23

    move-object v8, p0

    .line 1224
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v0, v11, :cond_a

    move v12, v10

    goto :goto_b

    :cond_a
    move v12, v9

    :goto_b
    if-eqz v12, :cond_10

    move/from16 v13, p3

    goto :goto_12

    :cond_10
    move/from16 v13, p2

    :goto_12
    if-eqz v12, :cond_18

    .line 1226
    aget v0, p7, v10

    :goto_16
    move v14, v0

    goto :goto_1b

    :cond_18
    aget v0, p7, v9

    goto :goto_16

    .line 1227
    :goto_1b
    iget-object v5, v8, Lmiuix/springback/view/SpringBackLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/springback/view/SpringBackLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 1229
    iget-boolean v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_32

    return-void

    :cond_32
    if-eqz v12, :cond_38

    .line 1232
    aget v0, p7, v10

    :goto_36
    sub-int/2addr v0, v14

    goto :goto_3b

    :cond_38
    aget v0, p7, v9

    goto :goto_36

    :goto_3b
    if-eqz v12, :cond_40

    sub-int v0, p5, v0

    goto :goto_42

    :cond_40
    sub-int v0, p4, v0

    :goto_42
    if-eqz v0, :cond_45

    move v9, v0

    :cond_45
    if-eqz v12, :cond_49

    move v1, v11

    goto :goto_4a

    :cond_49
    move v1, v10

    :goto_4a
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gez v9, :cond_ec

    .line 1239
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToTop(I)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1240
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportTopSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_ec

    if-eqz p6, :cond_c7

    .line 1242
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 1243
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_b3

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_6d

    goto :goto_b3

    .line 1250
    :cond_6d
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_74

    return-void

    .line 1253
    :cond_74
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 1254
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_189

    .line 1255
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_91

    .line 1256
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1257
    aget v0, p7, v10

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v10

    goto :goto_a0

    .line 1259
    :cond_91
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1260
    aget v2, p7, v10

    add-int/2addr v2, v0

    aput v2, p7, v10

    .line 1262
    :goto_a0
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1263
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1264
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v10

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto/16 :goto_189

    .line 1244
    :cond_b3
    :goto_b3
    iput-boolean v10, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_c2

    neg-int v0, v9

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c2

    .line 1246
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 1248
    :cond_c2
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto/16 :goto_189

    .line 1268
    :cond_c7
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_189

    .line 1269
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1270
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1271
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    invoke-virtual {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1272
    aget v1, p7, v10

    add-int/2addr v1, v0

    aput v1, p7, v10

    goto/16 :goto_189

    :cond_ec
    if-lez v9, :cond_189

    .line 1275
    invoke-direct {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollToBottom(I)Z

    move-result v4

    if-eqz v4, :cond_189

    .line 1276
    invoke-direct {p0}, Lmiuix/springback/view/SpringBackLayout;->supportBottomSpringBackMode()Z

    move-result v4

    if-eqz v4, :cond_189

    if-eqz p6, :cond_165

    .line 1278
    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v4

    .line 1279
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_153

    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_10d

    goto :goto_153

    .line 1286
    :cond_10d
    iget v5, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_114

    return-void

    .line 1289
    :cond_114
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    sub-float/2addr v4, v3

    .line 1290
    iget v3, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    if-ge v3, v2, :cond_189

    .line 1291
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_131

    .line 1292
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    add-float/2addr v0, v4

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1293
    aget v0, p7, v10

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p7, v10

    goto :goto_140

    .line 1295
    :cond_131
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1296
    aget v2, p7, v10

    add-int/2addr v2, v0

    aput v2, p7, v10

    .line 1298
    :goto_140
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1299
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    invoke-virtual {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1300
    iget v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    add-int/2addr v0, v10

    iput v0, v8, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_189

    .line 1280
    :cond_153
    :goto_153
    iput-boolean v10, v8, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    if-eqz v13, :cond_161

    int-to-float v0, v9

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_161

    .line 1282
    iget-object v0, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0, v9}, Lmiuix/springback/view/SpringScroller;->setFirstStep(I)V

    .line 1284
    :cond_161
    invoke-direct {p0, v11}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    goto :goto_189

    .line 1303
    :cond_165
    iget-object v2, v8, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_189

    .line 1304
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1305
    invoke-direct {p0, v10}, Lmiuix/springback/view/SpringBackLayout;->dispatchScrollState(I)V

    .line 1306
    iget v2, v8, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    invoke-virtual {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainSpringBackDistance(FI)F

    move-result v2

    neg-float v2, v2

    invoke-direct {p0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->moveTarget(FI)V

    .line 1307
    aget v1, p7, v10

    add-int/2addr v1, v0

    aput v1, p7, v10

    :cond_189
    :goto_189
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1390
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 1391
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 10

    .line 1355
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_83

    .line 1356
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    move v0, v3

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    if-eqz v0, :cond_1a

    .line 1358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    :goto_18
    int-to-float v0, v0

    goto :goto_1f

    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    goto :goto_18

    :goto_1f
    const/4 v4, 0x0

    if-eqz p4, :cond_40

    cmpl-float p4, v0, v4

    if-nez p4, :cond_29

    .line 1361
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    goto :goto_3b

    .line 1363
    :cond_29
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalFlingUnconsumed:F

    .line 1365
    :goto_3b
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    .line 1366
    iput v2, p0, Lmiuix/springback/view/SpringBackLayout;->consumeNestFlingCounter:I

    goto :goto_78

    :cond_40
    cmpl-float p4, v0, v4

    if-nez p4, :cond_49

    .line 1369
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1370
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_76

    :cond_49
    cmpg-float p4, v0, v4

    if-gez p4, :cond_62

    .line 1372
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1373
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    goto :goto_76

    .line 1375
    :cond_62
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollTopUnconsumed:F

    .line 1376
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainMaxSpringBackDistance(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p4, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->obtainTouchDistance(FFI)F

    move-result p4

    iput p4, p0, Lmiuix/springback/view/SpringBackLayout;->mTotalScrollBottomUnconsumed:F

    .line 1378
    :goto_76
    iput-boolean v3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    .line 1380
    :goto_78
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 1381
    iput v4, p0, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 1382
    iput-boolean v2, p0, Lmiuix/springback/view/SpringBackLayout;->mScrollByFling:Z

    .line 1383
    iget-object p4, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {p4}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    .line 1385
    :cond_83
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/springback/view/SpringBackLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 13

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 351
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mOnScrollChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 352
    invoke-interface/range {v2 .. v7}, Lmiuix/core/view/ViewCompatOnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 1350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 9

    .line 1326
    iput p3, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_9

    move v2, p2

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move v1, p2

    .line 1329
    :goto_e
    iget v3, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    and-int/2addr v1, v3

    if-nez v1, :cond_14

    return v0

    .line 1332
    :cond_14
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v1, :cond_3a

    .line 1333
    invoke-virtual {p0, p1, p1, p3}, Lmiuix/springback/view/SpringBackLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1f

    return v0

    :cond_1f
    if-eqz v2, :cond_27

    .line 1336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    :goto_25
    int-to-float p1, p1

    goto :goto_2c

    :cond_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    goto :goto_25

    :goto_2c
    if-eqz p4, :cond_3a

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3a

    .line 1337
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    instance-of p1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_3a

    return v0

    .line 1341
    :cond_3a
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1521
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1522
    invoke-virtual {p0, p2}, Lmiuix/springback/view/SpringBackLayout;->stopNestedScroll(I)V

    .line 1523
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez p1, :cond_d

    return-void

    .line 1526
    :cond_d
    iget p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollAxes:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    move p1, v0

    goto :goto_17

    :cond_16
    move p1, p2

    :goto_17
    if-eqz p1, :cond_1a

    move v0, v1

    .line 1528
    :cond_1a
    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_42

    .line 1529
    iput-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz p1, :cond_28

    .line 1530
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    :goto_26
    int-to-float p1, p1

    goto :goto_2d

    :cond_28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    goto :goto_26

    .line 1531
    :goto_2d
    iget-boolean p2, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    const/4 v1, 0x0

    if-nez p2, :cond_3a

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_3a

    .line 1532
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->springBack(I)V

    goto :goto_49

    :cond_3a
    cmpl-float p1, p1, v1

    if-eqz p1, :cond_49

    .line 1536
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    goto :goto_49

    .line 1538
    :cond_42
    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-eqz p1, :cond_49

    .line 1539
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->stopNestedFlingScroll(I)V

    :cond_49
    :goto_49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedFlingInProgress:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_14

    goto :goto_44

    .line 679
    :cond_14
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    return v2

    .line 683
    :cond_1d
    iget-object v1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2c

    if-nez v0, :cond_2c

    .line 684
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringScroller:Lmiuix/springback/view/SpringScroller;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringScroller;->forceStop()V

    :cond_2c
    const/4 v0, 0x2

    .line 687
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 688
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onVerticalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_38
    const/4 v0, 0x1

    .line 689
    invoke-direct {p0, v0}, Lmiuix/springback/view/SpringBackLayout;->isTargetScrollOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 690
    invoke-direct {p0, p1}, Lmiuix/springback/view/SpringBackLayout;->onHorizontalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_44
    :goto_44
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 651
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-nez v0, :cond_d

    .line 652
    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    return-void
.end method

.method public requestDisallowParentInterceptTouchEvent(Z)V
    .registers 4

    .line 661
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 662
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_7
    if-eqz v0, :cond_18

    .line 664
    instance-of v1, v0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_13

    .line 665
    move-object v1, v0

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1, p1}, Lmiuix/springback/view/SpringBackLayout;->internalRequestDisallowInterceptTouchEvent(Z)V

    .line 667
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    :cond_18
    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    .line 331
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz v0, :cond_8

    .line 332
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_25

    .line 334
    :cond_8
    iget v0, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    if-ne v0, p1, :cond_10

    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    if-eq v1, p2, :cond_25

    .line 336
    :cond_10
    iget v1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    .line 337
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollX:I

    .line 338
    iput p2, p0, Lmiuix/springback/view/SpringBackLayout;->mFakeScrollY:I

    .line 339
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/springback/view/SpringBackLayout;->onScrollChanged(IIII)V

    .line 340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_22

    .line 341
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 343
    :cond_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_25
    :goto_25
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_16

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_16

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_16

    .line 219
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_16
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1511
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setScrollOrientation(I)V
    .registers 3

    .line 179
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mOriginScrollOrientation:I

    .line 180
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mHelper:Lmiuix/springback/view/SpringBackLayoutHelper;

    iput p1, v0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    return-void
.end method

.method public setSpringBackEnable(Z)V
    .registers 3

    .line 160
    iget-boolean v0, p0, Lmiuix/springback/view/SpringBackLayout;->mInGlobalRomMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 163
    :cond_5
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public setSpringBackEnableOnTriggerAttached(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    return-void
.end method

.method public setSpringBackMode(I)V
    .registers 2

    .line 184
    iput p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackMode:I

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    .line 236
    instance-of v0, p1, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_12

    .line 237
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 240
    :cond_12
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    iget-boolean p1, p0, Lmiuix/springback/view/SpringBackLayout;->mSpringBackEnable:Z

    if-eqz p1, :cond_24

    .line 241
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_24
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 1584
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 1558
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 1589
    iget-object v0, p0, Lmiuix/springback/view/SpringBackLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
