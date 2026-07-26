.class public Landroidx/viewpager/widget/OriginalViewPager;
.super Landroid/view/ViewGroup;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;,
        Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;,
        Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;,
        Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/OriginalViewPager$SavedState;,
        Landroidx/viewpager/widget/OriginalViewPager$DecorView;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurIsRTL:Z

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10100b3

    .line 120
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->LAYOUT_ATTRS:[I

    .line 138
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 145
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;ILandroidx/viewpager/widget/OriginalViewPager$ItemInfo;)V
    .registers 14

    .line 1308
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1309
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_12

    .line 1310
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const/4 v1, 0x0

    if-eqz p3, :cond_af

    .line 1313
    iget v3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 1315
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6a

    .line 1318
    iget v4, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1320
    :goto_25
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_af

    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_af

    .line 1321
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1322
    :goto_39
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_52

    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_52

    add-int/lit8 p3, p3, 0x1

    .line 1324
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_39

    .line 1326
    :cond_52
    :goto_52
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_61

    .line 1329
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 1332
    :cond_61
    iput v4, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1333
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_6a
    if-le v3, v4, :cond_af

    .line 1336
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1338
    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1340
    :goto_78
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_af

    if-ltz v4, :cond_af

    .line 1341
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1342
    :goto_86
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_97

    if-lez v4, :cond_97

    add-int/lit8 v4, v4, -0x1

    .line 1344
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_86

    .line 1346
    :cond_97
    :goto_97
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_a6

    .line 1349
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_97

    .line 1352
    :cond_a6
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1353
    iput p3, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_78

    .line 1359
    :cond_af
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1360
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1361
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_bf

    move v6, v3

    goto :goto_c2

    :cond_bf
    const v6, -0x800001

    .line 1362
    :goto_c2
    iput v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_cf

    .line 1364
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_d2

    :cond_cf
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_d2
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    add-int/lit8 v4, p2, -0x1

    :goto_d6
    if-ltz v4, :cond_ff

    .line 1367
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1368
    :goto_e0
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v5, v8, :cond_f0

    .line 1369
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_e0

    .line 1371
    :cond_f0
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    .line 1372
    iput v3, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    if-nez v8, :cond_fa

    .line 1373
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    :cond_fa
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_d6

    .line 1375
    :cond_ff
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1376
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_10b
    if-ge p2, p3, :cond_138

    .line 1379
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1380
    :goto_115
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_125

    .line 1381
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_115

    :cond_125
    if-ne v5, v0, :cond_12d

    .line 1384
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 1386
    :cond_12d
    iput v3, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1387
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10b

    .line 1390
    :cond_138
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .registers 8

    .line 2008
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    :goto_a
    if-nez v0, :cond_39

    .line 2027
    iput-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    move v1, v3

    .line 2028
    :goto_f
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_29

    .line 2029
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2030
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_26

    .line 2032
    iput-boolean v3, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    move v0, v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_29
    if-eqz v0, :cond_38

    if-eqz p1, :cond_33

    .line 2037
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_38

    .line 2039
    :cond_33
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_38
    :goto_38
    return-void

    .line 2011
    :cond_39
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x0

    .line 2012
    throw p1
.end method

.method private determineTargetPage(IFII)I
    .registers 6

    .line 2445
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_16

    if-lez p3, :cond_13

    goto :goto_24

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    .line 2448
    :cond_16
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt p1, p3, :cond_1e

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_21

    :cond_1e
    const p3, 0x3f19999a    # 0.6f

    :goto_21
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2452
    :goto_24
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4f

    .line 2453
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2454
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2457
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4f
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    .line 1957
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1958
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1960
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1961
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 1962
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1f

    .line 1964
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1968
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1969
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_29
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    .line 1974
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1975
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1977
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1978
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 1979
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1f

    .line 1981
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1985
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1986
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_29
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    .line 1991
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1992
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1994
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1995
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 1996
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1f

    .line 1998
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2002
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 2003
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_29
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 2698
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2699
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2701
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 2702
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2703
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    if-nez p1, :cond_7

    .line 2899
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-nez p2, :cond_e

    const/4 p2, 0x0

    .line 2902
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2905
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2906
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2907
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2908
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2910
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2911
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    .line 2912
    check-cast p2, Landroid/view/ViewGroup;

    .line 2913
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2914
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2915
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2916
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2918
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_2a

    :cond_5b
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .registers 14

    .line 2402
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    .line 2403
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-lez v0, :cond_18

    .line 2404
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_19

    :cond_18
    move v3, v1

    :goto_19
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v0

    move v9, v5

    move-object v7, v6

    move v6, v4

    move v4, v1

    .line 2411
    :goto_22
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_75

    .line 2412
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    if-nez v9, :cond_4b

    .line 2414
    iget v11, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/2addr v6, v5

    if-eq v11, v6, :cond_4b

    .line 2416
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 2417
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2418
    iput v6, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2419
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    :cond_4b
    move-object v6, v10

    .line 2422
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2425
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_5a

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_59

    goto :goto_5a

    :cond_59
    return-object v7

    :cond_5a
    :goto_5a
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_74

    .line 2427
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_68

    goto :goto_74

    .line 2434
    :cond_68
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2436
    iget v7, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v9, v0

    move-object v12, v6

    move v6, v4

    move v4, v7

    move-object v7, v12

    goto :goto_22

    :cond_74
    :goto_74
    return-object v6

    :cond_75
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 2

    .line 1530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1531
    const-class v0, Landroidx/viewpager/widget/OriginalViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    .line 2045
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2684
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2685
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2689
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2690
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2691
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_24

    .line 2692
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 9

    .line 1849
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 1850
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_10

    return v2

    .line 1855
    :cond_10
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1856
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1857
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_1b

    return v2

    .line 1858
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1863
    :cond_21
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    if-nez v0, :cond_28

    return v2

    .line 1867
    :cond_28
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v3

    .line 1868
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1870
    iget v6, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1871
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1875
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 1876
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1877
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_4c

    const/4 p1, 0x1

    return p1

    .line 1878
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDrag(F)Z
    .registers 11

    .line 2351
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2352
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2356
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2358
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 2359
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 2363
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2364
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2365
    iget v6, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_36

    .line 2367
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_37

    :cond_36
    move v3, v7

    .line 2369
    :goto_37
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_47

    .line 2371
    iget v2, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_48

    :cond_47
    move v5, v7

    :goto_48
    cmpg-float v6, p1, v1

    if-gez v6, :cond_5d

    if-eqz v3, :cond_5b

    sub-float p1, v1, p1

    .line 2377
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_5b
    move p1, v1

    goto :goto_70

    :cond_5d
    cmpl-float v1, p1, v2

    if-lez v1, :cond_70

    if-eqz v5, :cond_6f

    sub-float/2addr p1, v2

    .line 2384
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_6f
    move p1, v2

    .line 2390
    :cond_70
    :goto_70
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2391
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2392
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 5

    if-lez p2, :cond_d

    .line 1687
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    .line 1688
    throw p1

    .line 1701
    :cond_d
    :goto_d
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 1702
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    .line 1704
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3d

    const/4 p2, 0x0

    .line 1706
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 1707
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3d
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 3

    const/4 v0, 0x0

    .line 562
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 563
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 565
    iget-boolean v1, v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1a

    .line 566
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 2342
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2344
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    const/4 v0, -0x1

    .line 2333
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2334
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->endDrag()V

    .line 2335
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2336
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2337
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    .line 683
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 686
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 687
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 688
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 687
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    if-eqz p2, :cond_29

    .line 691
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_37

    .line 693
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    goto :goto_37

    :cond_29
    if-eqz p4, :cond_2e

    .line 697
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 699
    :cond_2e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 700
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 701
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    .line 2708
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2709
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1292
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2d

    .line 1293
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_13

    .line 1296
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1298
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_26

    .line 1300
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1301
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1303
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2944
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2946
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x0

    .line 2949
    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2950
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2951
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2952
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2953
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2c

    .line 2954
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_39

    .line 2965
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_54

    .line 2968
    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_40

    return-void

    :cond_40
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_51

    .line 2972
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_51

    return-void

    .line 2976
    :cond_51
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    return-void
.end method

.method addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .registers 5

    .line 1018
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    .line 1019
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 1020
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1021
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_28

    .line 1022
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_22

    goto :goto_28

    .line 1025
    :cond_22
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1023
    :cond_28
    :goto_28
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2989
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2990
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2991
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2992
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 2993
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20

    .line 2994
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1504
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1505
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1507
    :cond_a
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1509
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/OriginalViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 1510
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v2, :cond_2b

    if-nez v1, :cond_23

    const/4 v1, 0x1

    .line 1514
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1515
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_2e

    .line 1512
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1517
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 6

    .line 2832
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_9

    :goto_7
    move-object v0, v1

    goto :goto_63

    :cond_9
    if-eqz v0, :cond_63

    .line 2837
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    if-ne v2, p0, :cond_16

    goto :goto_63

    .line 2838
    :cond_16
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_f

    .line 2846
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2847
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2f
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_48

    .line 2850
    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2f

    .line 2852
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2852
    const-string v2, "ViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2860
    :cond_63
    :goto_63
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    const/16 v3, 0x11

    if-eqz v1, :cond_b3

    if-eq v1, v0, :cond_b3

    if-ne p1, v3, :cond_93

    .line 2866
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2867
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_8e

    if-lt v2, v3, :cond_8e

    .line 2869
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v0

    goto :goto_ca

    .line 2871
    :cond_8e
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_ca

    :cond_93
    if-ne p1, v2, :cond_bf

    .line 2876
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2877
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_ae

    if-gt v2, v3, :cond_ae

    .line 2879
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v0

    goto :goto_ca

    .line 2881
    :cond_ae
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_ca

    :cond_b3
    if-eq p1, v3, :cond_c6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b9

    goto :goto_c6

    :cond_b9
    if-eq p1, v2, :cond_c1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_bf

    goto :goto_c1

    :cond_bf
    const/4 v0, 0x0

    goto :goto_ca

    .line 2889
    :cond_c1
    :goto_c1
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v0

    goto :goto_ca

    .line 2886
    :cond_c6
    :goto_c6
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v0

    :goto_ca
    if-eqz v0, :cond_d3

    .line 2892
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d3
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    .line 2758
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_51

    .line 2759
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2760
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2761
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2762
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_51

    .line 2767
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2768
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4e

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4e

    add-int v8, p5, v4

    .line 2769
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4e

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4e

    .line 2770
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v10, v6, v9

    .line 2771
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    .line 2770
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4e

    return v2

    :cond_4e
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_51
    if-eqz p2, :cond_5c

    move v1, p3

    neg-int v1, v1

    .line 2777
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    .line 2731
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2735
    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    .line 2736
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1a

    int-to-float p1, v0

    .line 2738
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_19

    move v1, v3

    :cond_19
    return v1

    :cond_1a
    if-lez p1, :cond_24

    int-to-float p1, v0

    .line 2740
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_24

    move v1, v3

    :cond_24
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 3068
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public computeScroll()V
    .registers 2

    const/4 v0, 0x1

    .line 1825
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    const/4 v0, 0x0

    .line 1826
    throw v0
.end method

.method convertPositionForRTL(IIZZ)I
    .registers 5

    .line 0
    if-ne p3, p4, :cond_3

    return p2

    :cond_3
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method dataSetChanged()V
    .registers 11

    .line 1033
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1034
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 1035
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 1036
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    .line 1037
    :goto_22
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    move v5, v4

    move v6, v5

    .line 1040
    :goto_26
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7e

    .line 1041
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1042
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    goto :goto_7c

    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_70

    .line 1049
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_54

    .line 1053
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v6, v3

    .line 1057
    :cond_54
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1060
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v1, v7, :cond_6e

    add-int/lit8 v2, v0, -0x1

    .line 1062
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_6e
    :goto_6e
    move v1, v3

    goto :goto_7c

    .line 1068
    :cond_70
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_7c

    .line 1069
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v9, v1, :cond_79

    move v2, v8

    .line 1074
    :cond_79
    iput v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/2addr v5, v3

    goto :goto_26

    :cond_7e
    if-eqz v6, :cond_85

    .line 1080
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1083
    :cond_85
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_af

    .line 1087
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_93
    if-ge v1, v0, :cond_a9

    .line 1089
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1090
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1091
    iget-boolean v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_a6

    const/4 v6, 0x0

    .line 1092
    iput v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 1096
    :cond_a9
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    .line 1097
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_af
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2783
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 3036
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 3037
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3041
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_36

    .line 3043
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3044
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    .line 3045
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 3046
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_33

    .line 3047
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 2465
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 2469
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_18

    .line 2471
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_18

    goto :goto_24

    .line 2495
    :cond_18
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2496
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a6

    .line 2472
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_63

    .line 2473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2474
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2475
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    .line 2477
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    .line 2478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2479
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2480
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 2481
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2483
    :cond_63
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 2484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2485
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 2486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2488
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2490
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2491
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2492
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a6
    :goto_a6
    if-eqz v1, :cond_ab

    .line 2501
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_ab
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 922
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 923
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 924
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 2796
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_53

    .line 2797
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_41

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_18

    goto :goto_53

    .line 2813
    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2814
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_54

    :cond_23
    const/4 v0, 0x1

    .line 2815
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 2816
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_54

    .line 2806
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2807
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result p1

    goto :goto_54

    :cond_3a
    const/16 p1, 0x42

    .line 2809
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_54

    .line 2799
    :cond_41
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2800
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result p1

    goto :goto_54

    :cond_4c
    const/16 p1, 0x11

    .line 2802
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_54

    :cond_53
    :goto_53
    const/4 p1, 0x0

    :goto_54
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 3058
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 3073
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 3063
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .registers 2

    .line 579
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    .line 809
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 810
    :cond_9
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 811
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 634
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 835
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 891
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .registers 3

    .line 1555
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_13

    if-eqz v0, :cond_11

    .line 1556
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_11

    .line 1559
    :cond_d
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    :goto_11
    const/4 p1, 0x0

    return-object p1

    .line 1561
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .registers 6

    const/4 v0, 0x0

    .line 1544
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1545
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1546
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .registers 5

    const/4 v0, 0x0

    .line 1565
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1566
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1567
    iget v2, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method isRTL()Z
    .registers 3

    .line 1466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1576
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1577
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 482
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 487
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 2507
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2510
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    if-lez v1, :cond_a8

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a8

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a8

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_a8

    .line 2511
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 2512
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 2514
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2516
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2517
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2518
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2519
    iget v9, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2520
    iget-object v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    :goto_45
    if-ge v9, v10, :cond_a8

    .line 2522
    :goto_47
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_58

    if-ge v6, v8, :cond_58

    .line 2523
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_47

    :cond_58
    if-ne v9, v11, :cond_64

    .line 2528
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_6f

    .line 2531
    :cond_64
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 2536
    :goto_6f
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_97

    .line 2537
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    iget v15, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    .line 2538
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 2537
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2539
    iget-object v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9b

    :cond_97
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_9b
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_a3

    goto :goto_a8

    :cond_a3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_45

    :cond_a8
    :goto_a8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2065
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v8, 0x0

    if-eq v0, v1, :cond_e9

    const/4 v9, 0x1

    if-ne v0, v9, :cond_12

    goto/16 :goto_e9

    :cond_12
    if-eqz v0, :cond_1e

    .line 2078
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_19

    return v9

    .line 2082
    :cond_19
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1e

    return v8

    :cond_1e
    if-eqz v0, :cond_cd

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    goto/16 :goto_bb

    .line 2187
    :cond_28
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_bb

    .line 2099
    :cond_2d
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    goto/16 :goto_bb

    .line 2105
    :cond_34
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_bb

    .line 2107
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_42

    goto/16 :goto_bb

    .line 2111
    :cond_42
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2112
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2113
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2114
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2115
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_7a

    .line 2118
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7a

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 2119
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2121
    iput v10, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2122
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2123
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2126
    :cond_7a
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_a7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_a7

    .line 2128
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2129
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2130
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    if-lez v14, :cond_99

    .line 2132
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_9f

    :cond_99
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_9f
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2133
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2134
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_ae

    :cond_a7
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_ae

    .line 2141
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2143
    :cond_ae
    :goto_ae
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_bb

    .line 2145
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 2146
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2191
    :cond_bb
    :goto_bb
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c5

    .line 2192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2194
    :cond_c5
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2200
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    return v0

    .line 2157
    :cond_cd
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2158
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2159
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2160
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2162
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    const/4 v0, 0x0

    .line 2163
    throw v0

    .line 2071
    :cond_e9
    :goto_e9
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 1720
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 1721
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_20
    const/16 v12, 0x8

    if-ge v10, v1, :cond_b8

    .line 1728
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1729
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b4

    .line 1730
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1733
    iget-boolean v14, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_b4

    .line 1734
    iget v12, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_61

    const/4 v15, 0x3

    if-eq v14, v15, :cond_5b

    const/4 v15, 0x5

    if-eq v14, v15, :cond_49

    move v14, v4

    goto :goto_6e

    :cond_49
    sub-int v14, v2, v6

    .line 1749
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1750
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    :goto_55
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    goto :goto_6e

    .line 1742
    :cond_5b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_6e

    .line 1745
    :cond_61
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_55

    :goto_6e
    const/16 v15, 0x10

    if-eq v12, v15, :cond_94

    const/16 v15, 0x30

    if-eq v12, v15, :cond_8e

    const/16 v15, 0x50

    if-eq v12, v15, :cond_7c

    move v12, v5

    goto :goto_a1

    :cond_7c
    sub-int v12, v3, v7

    .line 1766
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1767
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    :goto_88
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_a1

    .line 1759
    :cond_8e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_a1

    .line 1762
    :cond_94
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_88

    :goto_a1
    add-int/2addr v4, v8

    .line 1772
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1773
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1771
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_b4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    :cond_b8
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_bb
    if-ge v6, v1, :cond_108

    .line 1782
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1783
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_105

    .line 1784
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1786
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_105

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_105

    int-to-float v13, v2

    .line 1787
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1790
    iget-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_f8

    const/4 v14, 0x0

    .line 1793
    iput-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1794
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1797
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1800
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1808
    :cond_f8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1809
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1807
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_105
    add-int/lit8 v6, v6, 0x1

    goto :goto_bb

    .line 1813
    :cond_108
    iput v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    .line 1814
    iput v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 1815
    iput v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 1817
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_11a

    .line 1818
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    goto :goto_11b

    :cond_11a
    const/4 v2, 0x0

    .line 1820
    :goto_11b
    iput-boolean v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    .line 1587
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 1588
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 1587
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 1591
    div-int/lit8 p2, p1, 0xa

    .line 1592
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 1595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_37
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_af

    .line 1605
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1606
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_ac

    .line 1607
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v3, :cond_ac

    .line 1608
    iget-boolean v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_ac

    .line 1609
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_65

    const/16 v9, 0x50

    if-ne v7, v9, :cond_63

    goto :goto_65

    :cond_63
    move v7, v0

    goto :goto_66

    :cond_65
    :goto_65
    move v7, v4

    :goto_66
    const/4 v9, 0x3

    if-eq v8, v9, :cond_6e

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6d

    goto :goto_6e

    :cond_6d
    move v4, v0

    :cond_6e
    :goto_6e
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_75

    move v9, v8

    move v8, v5

    goto :goto_7a

    :cond_75
    if-eqz v4, :cond_79

    move v9, v5

    goto :goto_7a

    :cond_79
    move v9, v8

    .line 1624
    :goto_7a
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_86

    if-eq v10, v11, :cond_84

    :goto_82
    move v8, v5

    goto :goto_87

    :cond_84
    move v10, p1

    goto :goto_82

    :cond_86
    move v10, p1

    .line 1630
    :goto_87
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_90

    if-eq v3, v11, :cond_8e

    goto :goto_92

    :cond_8e
    move v3, p2

    goto :goto_92

    :cond_90
    move v3, p2

    move v5, v9

    .line 1636
    :goto_92
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1637
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1638
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a5

    .line 1641
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_ac

    :cond_a5
    if-eqz v4, :cond_ac

    .line 1643
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_ac
    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1649
    :cond_af
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildWidthMeasureSpec:I

    .line 1650
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 1653
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1654
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 1655
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1658
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_c6
    if-ge v0, p2, :cond_ef

    .line 1660
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_ec

    .line 1666
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v2, :cond_de

    .line 1667
    iget-boolean v4, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_ec

    :cond_de
    int-to-float v4, p1

    .line 1668
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1670
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_ef
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 15

    .line 1899
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_6b

    .line 1900
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 1902
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 1903
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1904
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_6b

    .line 1906
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1907
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1908
    iget-boolean v9, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_2b

    goto :goto_68

    .line 1910
    :cond_2b
    iget v8, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_4f

    const/4 v9, 0x3

    if-eq v8, v9, :cond_49

    const/4 v9, 0x5

    if-eq v8, v9, :cond_39

    move v8, v2

    goto :goto_5c

    :cond_39
    sub-int v8, v4, v3

    .line 1925
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1926
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    :goto_45
    move v10, v8

    move v8, v2

    move v2, v10

    goto :goto_5c

    .line 1918
    :cond_49
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_5c

    .line 1921
    :cond_4f
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_45

    :goto_5c
    add-int/2addr v2, v0

    .line 1931
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_67

    .line 1933
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_67
    move v2, v8

    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1938
    :cond_6b
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1953
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 3009
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_12

    :cond_e
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_12
    if-eq v0, v1, :cond_33

    .line 3020
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3021
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 3022
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 3023
    iget v6, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_31

    .line 3024
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v3

    :cond_31
    add-int/2addr v0, v4

    goto :goto_12

    :cond_33
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    .line 1481
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1486
    :cond_8
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 1487
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1489
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 1490
    iget-object v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v4, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1491
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1492
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    if-lez p1, :cond_2c

    move p1, v2

    goto :goto_2d

    :cond_2c
    move p1, v1

    :goto_2d
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v4

    invoke-virtual {p0, v0, v3, p1, v4}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    move-result p1

    .line 1491
    invoke-virtual {p0, p1, v1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4c

    .line 1495
    :cond_39
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 1496
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    if-lez v0, :cond_42

    move v1, v2

    :cond_42
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 1497
    iget-object v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1498
    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_4c
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1455
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1456
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1457
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 1458
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v0

    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    .line 1459
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1d

    .line 1460
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_1d
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1678
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_a

    .line 1682
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 2205
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2212
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 2218
    :cond_14
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_13f

    .line 2223
    :cond_20
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2a

    .line 2224
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2226
    :cond_2a
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_13d

    if-eq v0, v1, :cond_eb

    const/4 v3, 0x2

    if-eq v0, v3, :cond_79

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_58

    const/4 v3, 0x6

    if-eq v0, v3, :cond_47

    goto/16 :goto_137

    .line 2321
    :cond_47
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2322
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    goto/16 :goto_137

    .line 2314
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2316
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2317
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    goto/16 :goto_137

    .line 2308
    :cond_6a
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_137

    .line 2309
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    .line 2310
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_137

    .line 2244
    :cond_79
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_d8

    .line 2245
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8c

    .line 2249
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_137

    .line 2252
    :cond_8c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2253
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2254
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2255
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2259
    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d8

    .line 2261
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2262
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2263
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c1

    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_c5

    .line 2264
    :cond_c1
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_c5
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2265
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2266
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 2267
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 2270
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 2272
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2277
    :cond_d8
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_137

    .line 2279
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2281
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    move-result v2

    goto :goto_137

    .line 2285
    :cond_eb
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_137

    .line 2286
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2287
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2288
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2289
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2290
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v2

    .line 2291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 2292
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    .line 2293
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2294
    iget v6, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2295
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2297
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2298
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2299
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2300
    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2302
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    .line 2304
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    :cond_137
    :goto_137
    if-eqz v2, :cond_13c

    .line 2326
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_13c
    return v1

    :cond_13d
    const/4 p1, 0x0

    .line 2233
    throw p1

    :cond_13f
    :goto_13f
    return v2
.end method

.method pageLeft()Z
    .registers 3

    .line 2924
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lez v0, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2925
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .registers 4

    .line 2932
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_15

    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    .line 2933
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .registers 2

    .line 1102
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1107
    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v2, v1, :cond_f

    .line 1108
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    .line 1109
    iput v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 1112
    :goto_10
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_18

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1121
    :cond_18
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_20

    .line 1123
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1130
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_27

    return-void

    .line 1134
    :cond_27
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1136
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 1137
    iget v4, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1138
    iget-object v6, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1139
    iget v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1141
    iget v7, v0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_20f

    move v7, v5

    .line 1159
    :goto_4a
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_66

    .line 1160
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1161
    iget v9, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt v9, v10, :cond_63

    if-ne v9, v10, :cond_66

    goto :goto_67

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_66
    const/4 v8, 0x0

    :goto_67
    if-nez v8, :cond_71

    if-lez v6, :cond_71

    .line 1168
    iget v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v8

    :cond_71
    const/4 v9, 0x0

    if-eqz v8, :cond_19c

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_81

    .line 1177
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    .line 1178
    :goto_82
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8c

    move v14, v9

    goto :goto_98

    .line 1180
    :cond_8c
    iget v14, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 1181
    :goto_98
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    move v15, v9

    :goto_9d
    if-ltz v3, :cond_fe

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_ce

    if-ge v3, v4, :cond_ce

    if-nez v11, :cond_a8

    goto :goto_fe

    .line 1186
    :cond_a8
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_fa

    iget-boolean v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_fa

    .line 1187
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1188
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v11, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_cb

    .line 1195
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_cc

    :cond_cb
    const/4 v5, 0x0

    :goto_cc
    move-object v11, v5

    goto :goto_fa

    :cond_ce
    if-eqz v11, :cond_e4

    .line 1197
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_e4

    .line 1198
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_cb

    .line 1200
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_cc

    :cond_e4
    add-int/lit8 v5, v10, 0x1

    .line 1202
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v5

    .line 1203
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_cb

    .line 1205
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_cc

    :cond_fa
    :goto_fa
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_9d

    .line 1209
    :cond_fe
    :goto_fe
    iget v3, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_190

    .line 1212
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_117

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_118

    :cond_117
    const/4 v5, 0x0

    :goto_118
    if-gtz v12, :cond_11c

    move v10, v9

    goto :goto_124

    .line 1214
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 1215
    :goto_124
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    :goto_126
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_190

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_15a

    if-le v11, v1, :cond_15a

    if-nez v5, :cond_133

    goto :goto_190

    .line 1220
    :cond_133
    iget v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_18f

    iget-boolean v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_18f

    .line 1221
    iget-object v12, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1222
    iget-object v12, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1227
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_158

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_18f

    :cond_158
    const/4 v5, 0x0

    goto :goto_18f

    :cond_15a
    if-eqz v5, :cond_176

    .line 1229
    iget v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_176

    .line 1230
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1232
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_158

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_18f

    .line 1234
    :cond_176
    invoke-virtual {v0, v11, v4}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1236
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1237
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_158

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    :cond_18f
    :goto_18f
    goto :goto_126

    .line 1242
    :cond_190
    :goto_190
    invoke-direct {v0, v8, v7, v2}, Landroidx/viewpager/widget/OriginalViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;ILandroidx/viewpager/widget/OriginalViewPager$ItemInfo;)V

    .line 1244
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iget-object v3, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1254
    :cond_19c
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a6
    if-ge v2, v1, :cond_1cf

    .line 1260
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1261
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1262
    iput v2, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    .line 1263
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_1cc

    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1cc

    .line 1265
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1cc

    .line 1267
    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 1268
    iget v3, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iput v3, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->position:I

    :cond_1cc
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a6

    .line 1272
    :cond_1cf
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 1275
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e3

    .line 1276
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v3

    goto :goto_1e4

    :cond_1e3
    const/4 v3, 0x0

    :goto_1e4
    if-eqz v3, :cond_1ec

    .line 1277
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v1, v2, :cond_20e

    :cond_1ec
    const/4 v5, 0x0

    .line 1278
    :goto_1ed
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_20e

    .line 1279
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20b

    .line 1281
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20b

    const/4 v2, 0x2

    .line 1282
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_20b

    goto :goto_20e

    :cond_20b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ed

    :cond_20e
    :goto_20e
    return-void

    .line 1144
    :cond_20f
    :try_start_20f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_21b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20f .. :try_end_21b} :catch_21c

    goto :goto_224

    .line 1146
    :catch_21c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :goto_224
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1536
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1537
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1539
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 10

    .line 509
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 510
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 511
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 512
    :goto_f
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 513
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 514
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v3, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 516
    :cond_2b
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 517
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->removeNonDecorViews()V

    .line 519
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 520
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 523
    :cond_3d
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 524
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 525
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_99

    .line 528
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    if-nez v3, :cond_50

    .line 529
    new-instance v3, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 531
    :cond_50
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 532
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 533
    iget-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 534
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 535
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 536
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_90

    .line 537
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 538
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 539
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    iget-boolean v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v7

    invoke-virtual {p0, v3, v5, v6, v7}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    move-result v3

    .line 538
    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 541
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 542
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 543
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_99

    :cond_90
    if-nez v3, :cond_96

    .line 545
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    goto :goto_99

    .line 547
    :cond_96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 552
    :cond_99
    :goto_99
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_bc

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bc

    .line 553
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_a9
    if-ge v2, v1, :cond_bc

    .line 556
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;

    move-object v4, p0

    check-cast v4, Lmiuix/viewpager/widget/ViewPager;

    invoke-interface {v3, v4, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiuix/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_bc
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 619
    iget-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 629
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 630
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    .line 642
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_6e

    :cond_c
    if-nez p3, :cond_1e

    .line 646
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1e

    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1e

    .line 647
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1e
    const/4 p3, 0x1

    if-gez p1, :cond_23

    move p1, v1

    goto :goto_32

    .line 653
    :cond_23
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_32

    .line 654
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 656
    :cond_32
    :goto_32
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 657
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_3d

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_53

    :cond_3d
    move v0, v1

    .line 661
    :goto_3e
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 662
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    iput-boolean p3, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 665
    :cond_53
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_58

    move v1, p3

    .line 667
    :cond_58
    iget-boolean p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_67

    .line 670
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eqz v1, :cond_63

    .line 672
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 674
    :cond_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6d

    .line 676
    :cond_67
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    .line 677
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    :goto_6d
    return-void

    .line 643
    :cond_6e
    :goto_6e
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x2

    if-ge p1, v0, :cond_22

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 861
    :cond_22
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2b

    .line 862
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 863
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    :cond_2b
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    .line 876
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 877
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    .line 879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 880
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    .line 882
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    .line 912
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 900
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 902
    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 903
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    .line 491
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 495
    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 500
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 6

    .line 957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_b

    .line 959
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 974
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    .line 976
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    sub-int/2addr p1, p3

    sub-int/2addr p2, v1

    if-nez p1, :cond_23

    if-nez p2, :cond_23

    .line 980
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 981
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 982
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    return-void

    :cond_23
    const/4 p1, 0x1

    .line 986
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 987
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 1008
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 1014
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 917
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
