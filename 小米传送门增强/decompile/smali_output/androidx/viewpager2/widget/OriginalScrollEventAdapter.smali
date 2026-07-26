.class final Landroidx/viewpager2/widget/OriginalScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "OriginalScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;
    }
.end annotation


# instance fields
.field private mAdapterState:I

.field private mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

.field private mDataSetChangeHappened:Z

.field private mDispatchSelected:Z

.field private mDragStartPosition:I

.field private mFakeDragging:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollHappened:Z

.field private mScrollState:I

.field private mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

.field private mTarget:I

.field private final mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 63
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 66
    new-instance p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    invoke-direct {p1}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    .line 67
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->resetState()V

    return-void
.end method

.method private dispatchScrolled(IFI)V
    .registers 5

    .line 422
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_7

    .line 423
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_7
    return-void
.end method

.method private dispatchSelected(I)V
    .registers 3

    .line 416
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_7
    return-void
.end method

.method private dispatchStateChanged(I)V
    .registers 4

    .line 401
    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    if-nez v0, :cond_a

    return-void

    .line 405
    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    if-ne v0, p1, :cond_f

    return-void

    .line 409
    :cond_f
    iput p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    .line 410
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_18

    .line 411
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_18
    return-void
.end method

.method private getPosition()I
    .registers 2

    .line 428
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method private isInAnyDraggingState()Z
    .registers 4

    .line 377
    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method private resetState()V
    .registers 3

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    .line 72
    iput v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    .line 73
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->reset()V

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    .line 75
    iput v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    .line 76
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDispatchSelected:Z

    .line 77
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollHappened:Z

    .line 78
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mFakeDragging:Z

    .line 79
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void
.end method

.method private startDrag(Z)V
    .registers 4

    .line 272
    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mFakeDragging:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_8

    :cond_7
    move p1, v0

    .line 273
    :goto_8
    iput p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    .line 274
    iget p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    .line 277
    iput p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    .line 279
    iput v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    goto :goto_1e

    .line 280
    :cond_14
    iget p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    if-ne p1, v1, :cond_1e

    .line 282
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->getPosition()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    .line 284
    :cond_1e
    :goto_1e
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    return-void
.end method

.method private updateScrollEventValues()V
    .registers 9

    .line 208
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    .line 210
    iget-object v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 212
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    .line 215
    :cond_11
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 217
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    .line 221
    :cond_1d
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    .line 222
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    .line 223
    iget-object v4, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    .line 224
    iget-object v5, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v5

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 227
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4b

    .line 228
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 229
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    .line 230
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    .line 231
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 232
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 235
    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 238
    iget-object v3, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    if-nez v3, :cond_76

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 244
    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_74

    neg-int v1, v1

    :cond_74
    move v6, v5

    goto :goto_82

    .line 249
    :cond_76
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_82
    neg-int v1, v1

    .line 252
    iput v1, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-gez v1, :cond_b4

    .line 256
    new-instance v1, Landroidx/viewpager2/widget/OriginalAnimateLayoutChangeDetector;

    iget-object v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/OriginalAnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalAnimateLayoutChangeDetector;->mayHaveInterferingAnimations()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_9c
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 265
    const-string v3, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b4
    if-nez v6, :cond_b8

    const/4 v1, 0x0

    goto :goto_bb

    :cond_b8
    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    .line 268
    :goto_bb
    iput v1, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffset:F

    return-void
.end method


# virtual methods
.method getRelativeScrollPosition()D
    .registers 6

    .line 392
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->updateScrollEventValues()V

    .line 393
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget v1, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    int-to-double v1, v1

    iget v0, v0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffset:F

    float-to-double v3, v0

    add-double/2addr v1, v3

    return-wide v1
.end method

.method getScrollState()I
    .registers 2

    .line 345
    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    return v0
.end method

.method isFakeDragging()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mFakeDragging:Z

    return v0
.end method

.method isIdle()Z
    .registers 2

    .line 352
    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method notifyDataSetChangeHappened()V
    .registers 2

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void
.end method

.method notifyProgrammaticScroll(IZ)V
    .registers 5

    const/4 v0, 0x2

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_6

    :cond_5
    const/4 p2, 0x3

    .line 297
    :goto_6
    iput p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    const/4 p2, 0x0

    .line 300
    iput-boolean p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mFakeDragging:Z

    .line 301
    iget v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    if-eq v1, p1, :cond_10

    const/4 p2, 0x1

    .line 302
    :cond_10
    iput p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    .line 303
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    if-eqz p2, :cond_1a

    .line 305
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchSelected(I)V

    :cond_1a
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 89
    iget p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    iget p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    if-eq p1, v1, :cond_10

    :cond_a
    if-ne p2, v1, :cond_10

    .line 92
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->startDrag(Z)V

    return-void

    .line 98
    :cond_10
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_23

    if-ne p2, v2, :cond_23

    .line 100
    iget-boolean p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollHappened:Z

    if-eqz p1, :cond_22

    .line 101
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    .line 103
    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDispatchSelected:Z

    :cond_22
    return-void

    .line 109
    :cond_23
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_53

    if-nez p2, :cond_53

    .line 111
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->updateScrollEventValues()V

    .line 112
    iget-boolean p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollHappened:Z

    if-nez p1, :cond_3e

    .line 117
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, v1, :cond_4d

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, v3, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchScrolled(IFI)V

    goto :goto_4d

    .line 121
    :cond_3e
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget v3, p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez v3, :cond_53

    .line 129
    iget v3, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    iget p1, p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq v3, p1, :cond_4d

    .line 130
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchSelected(I)V

    .line 136
    :cond_4d
    :goto_4d
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    .line 137
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->resetState()V

    .line 141
    :cond_53
    iget p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    if-ne p1, v2, :cond_78

    if-nez p2, :cond_78

    iget-boolean p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDataSetChangeHappened:Z

    if-eqz p1, :cond_78

    .line 143
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->updateScrollEventValues()V

    .line 144
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p2, p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_78

    .line 145
    iget p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    iget p1, p1, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p2, p1, :cond_72

    if-ne p1, v1, :cond_6f

    move p1, v0

    .line 146
    :cond_6f
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchSelected(I)V

    .line 149
    :cond_72
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    .line 150
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->resetState()V

    :cond_78
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollHappened:Z

    .line 162
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->updateScrollEventValues()V

    .line 164
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDispatchSelected:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 166
    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDispatchSelected:Z

    if-gtz p3, :cond_1f

    if-nez p3, :cond_29

    if-gez p2, :cond_16

    move p2, p1

    goto :goto_17

    :cond_16
    move p2, v2

    .line 167
    :goto_17
    iget-object p3, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p3}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result p3

    if-ne p2, p3, :cond_29

    .line 171
    :cond_1f
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-eqz p3, :cond_29

    .line 172
    iget p2, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    add-int/2addr p2, p1

    goto :goto_2d

    :cond_29
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    :goto_2d
    iput p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    .line 173
    iget p3, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mDragStartPosition:I

    if-eq p3, p2, :cond_45

    .line 174
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_45

    .line 176
    :cond_37
    iget p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mAdapterState:I

    if-nez p2, :cond_45

    .line 179
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p2, v1, :cond_42

    move p2, v2

    .line 181
    :cond_42
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchSelected(I)V

    .line 185
    :cond_45
    :goto_45
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p3, v1, :cond_4c

    move p3, v2

    :cond_4c
    iget v0, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffset:F

    iget p2, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    invoke-direct {p0, p3, v0, p2}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchScrolled(IFI)V

    .line 190
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;

    iget p3, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget v0, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mTarget:I

    if-eq p3, v0, :cond_5d

    if-ne v0, v1, :cond_6b

    :cond_5d
    iget p2, p2, Landroidx/viewpager2/widget/OriginalScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_6b

    iget p2, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mScrollState:I

    if-eq p2, p1, :cond_6b

    .line 198
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->dispatchStateChanged(I)V

    .line 199
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->resetState()V

    :cond_6b
    return-void
.end method

.method setOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;)V
    .registers 2

    .line 341
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    return-void
.end method
