.class public Lcom/miui/contentextension/screenshot/DragSelectTouchListener;
.super Ljava/lang/Object;
.source "DragSelectTouchListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;,
        Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;
    }
.end annotation


# instance fields
.field private downX:F

.field private downY:F

.field private mAutoScrollDistance:I

.field private mBottomBoundFrom:I

.field private mBottomBoundTo:I

.field private mDebug:Z

.field private mEnd:I

.field private mInBottomSpot:Z

.field private mInTopSpot:Z

.field private mIsActive:Z

.field private mLastEnd:I

.field private mLastStart:I

.field private mLastX:F

.field private mLastY:F

.field private mMaxScrollDistance:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollAboveTopRegion:Z

.field private mScrollBelowTopRegion:Z

.field private mScrollDistance:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollSpeedFactor:F

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

.field private mStart:I

.field private mTopBoundFrom:I

.field private mTopBoundTo:I

.field private mTouchRegionBottomOffset:I

.field private mTouchRegionTopOffset:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollDistance(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollRunnable(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScroller(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Landroid/widget/OverScroller;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscrollBy(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->scrollBy(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;-><init>(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mAutoScrollDistance:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionTopOffset:I

    .line 47
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionBottomOffset:I

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollAboveTopRegion:Z

    .line 49
    iput-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollBelowTopRegion:Z

    .line 50
    iput-boolean v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mDebug:Z

    .line 57
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->reset()V

    return-void
.end method

.method private initScroller(Landroid/content/Context;)V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_10

    .line 233
    new-instance v0, Landroid/widget/OverScroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    :cond_10
    return-void
.end method

.method private notifySelectRangeChange()V
    .registers 7

    .line 347
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    if-nez v0, :cond_5

    return-void

    .line 350
    :cond_5
    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    iget v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    if-ne v2, v1, :cond_10

    goto/16 :goto_92

    .line 355
    :cond_10
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 356
    iget v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mStart:I

    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySelectRangeChange: mLastStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Taplus.DragSelectListener"

    invoke-static {v4, v3}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastStart:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_7f

    iget v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastEnd:I

    if-ne v5, v1, :cond_58

    goto :goto_7f

    :cond_58
    const/4 v1, 0x0

    if-le v0, v3, :cond_63

    .line 367
    iget-object v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v3, v5, v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_8e

    :cond_63
    if-ge v0, v3, :cond_6c

    .line 369
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    sub-int/2addr v3, v4

    invoke-interface {v1, v0, v3, v4}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_8e

    :cond_6c
    if-le v2, v5, :cond_75

    .line 371
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    add-int/2addr v5, v4

    invoke-interface {v1, v5, v2, v4}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_8e

    :cond_75
    if-ge v2, v5, :cond_8e

    .line 373
    iget-object v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, v5, v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_8e

    :cond_7f
    :goto_7f
    sub-int v1, v2, v0

    if-ne v1, v4, :cond_89

    .line 361
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v0, v4}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    goto :goto_8e

    .line 363
    :cond_89
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    invoke-interface {v1, v0, v2, v4}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;->onSelectChange(IIZ)V

    .line 377
    :cond_8e
    :goto_8e
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastStart:I

    .line 378
    iput v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastEnd:I

    :cond_92
    :goto_92
    return-void
.end method

.method private processAutoScroll(Landroid/view/MotionEvent;)V
    .registers 10

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 291
    iget-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mDebug:Z

    const-string v2, "Taplus.DragSelectListener"

    if-eqz v1, :cond_67

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | rv.height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTopBoundFrom => mTopBoundTo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundFrom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundTo:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | mBottomBoundFrom => mBottomBoundTo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundFrom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundTo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTouchRegionTopOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionTopOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | mTouchRegionBottomOffset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionBottomOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_67
    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundFrom:I

    const-string v3, " | mScrollDistance="

    const-string v4, "SCROLL - mScrollSpeedFactor="

    const/4 v5, 0x1

    if-lt v0, v1, :cond_c6

    iget v6, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundTo:I

    if-gt v0, v6, :cond_c6

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    .line 302
    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundTo:I

    int-to-float v1, p1

    iget v6, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundFrom:I

    int-to-float v7, v6

    sub-float/2addr v1, v7

    int-to-float v0, v0

    int-to-float v7, v6

    sub-float/2addr v0, v7

    sub-float/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v6

    sub-float/2addr p1, v0

    div-float/2addr v1, p1

    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollSpeedFactor:F

    .line 303
    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    .line 304
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mDebug:Z

    if-eqz p1, :cond_bb

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollSpeedFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_bb
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    if-nez p1, :cond_16a

    .line 307
    iput-boolean v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    .line 308
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->startAutoScroll()V

    goto/16 :goto_16a

    .line 310
    :cond_c6
    iget-boolean v6, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollAboveTopRegion:Z

    if-eqz v6, :cond_e9

    if-ge v0, v1, :cond_e9

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    .line 313
    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    .line 314
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    if-nez p1, :cond_16a

    .line 315
    iput-boolean v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    .line 316
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->startAutoScroll()V

    goto/16 :goto_16a

    .line 318
    :cond_e9
    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundFrom:I

    if-lt v0, v1, :cond_13b

    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundTo:I

    if-gt v0, v1, :cond_13b

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    int-to-float p1, v0

    .line 321
    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundFrom:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundTo:I

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollSpeedFactor:F

    .line 322
    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    .line 323
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mDebug:Z

    if-eqz p1, :cond_131

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollSpeedFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_131
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInBottomSpot:Z

    if-nez p1, :cond_16a

    .line 326
    iput-boolean v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInBottomSpot:Z

    .line 327
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->startAutoScroll()V

    goto :goto_16a

    .line 329
    :cond_13b
    iget-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollBelowTopRegion:Z

    if-eqz v1, :cond_15d

    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundTo:I

    if-le v0, v1, :cond_15d

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    .line 332
    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollDistance:I

    .line 333
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    if-nez p1, :cond_16a

    .line 334
    iput-boolean v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    .line 335
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->startAutoScroll()V

    goto :goto_16a

    :cond_15d
    const/4 p1, 0x0

    .line 338
    iput-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInBottomSpot:Z

    .line 339
    iput-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    const/4 p1, 0x1

    .line 340
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 341
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    .line 342
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->stopAutoScroll()V

    :cond_16a
    :goto_16a
    return-void
.end method

.method private reset()V
    .registers 3

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->setIsActive(Z)V

    const/4 v1, -0x1

    .line 383
    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mStart:I

    .line 384
    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    .line 385
    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastStart:I

    .line 386
    iput v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastEnd:I

    .line 387
    iput-boolean v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    .line 388
    iput-boolean v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInBottomSpot:Z

    const/4 v0, 0x1

    .line 389
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    .line 390
    iput v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    return-void
.end method

.method private scrollBy(I)V
    .registers 4

    if-lez p1, :cond_9

    .line 401
    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_10

    .line 403
    :cond_9
    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mMaxScrollDistance:I

    neg-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 405
    :goto_10
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 406
    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    const/4 v0, 0x1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4e

    iget p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4e

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scrollBy: mLastX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mLastY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.DragSelectListener"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastX:F

    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    :cond_4e
    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .registers 6

    .line 277
    const-string v0, "Taplus.DragSelectListener"

    const-string v1, "updateSelectedRange: "

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 280
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1d

    .line 281
    iget p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    if-eq p2, p1, :cond_1d

    .line 282
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    .line 283
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->notifySelectRangeChange()V

    :cond_1d
    return-void
.end method

.method private updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 4

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;FF)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_57

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    goto/16 :goto_84

    .line 195
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 197
    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->downX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_45

    iget v4, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->downX:F

    sub-float v4, v3, v4

    .line 198
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->downY:F

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    move v1, v2

    :cond_45
    iput-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrolling:Z

    if-eqz v1, :cond_84

    .line 201
    invoke-virtual {p1, v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_84

    .line 203
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->startDragSelection(I)V

    goto :goto_84

    .line 209
    :cond_57
    iput-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrolling:Z

    .line 210
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->reset()V

    goto :goto_84

    .line 184
    :cond_5d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->downX:F

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->downY:F

    .line 186
    iput-boolean v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrolling:Z

    .line 187
    iput-object p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 189
    iget p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionTopOffset:I

    iput p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundFrom:I

    .line 190
    iget v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mAutoScrollDistance:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTopBoundTo:I

    .line 191
    iget p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mTouchRegionBottomOffset:I

    add-int v2, p1, p2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundFrom:I

    add-int/2addr p1, p2

    .line 192
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mBottomBoundTo:I

    .line 214
    :cond_84
    :goto_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInterceptTouchEvent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", intercept = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrolling:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.DragSelectListener"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrolling:Z

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 6

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.DragSelectListener"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 p1, 0x3

    if-eq v0, p1, :cond_36

    const/4 p1, 0x6

    if-eq v0, p1, :cond_36

    goto :goto_4b

    .line 255
    :cond_27
    iget-boolean v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInTopSpot:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mInBottomSpot:Z

    if-nez v0, :cond_32

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->updateSelectedRange(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 258
    :cond_32
    invoke-direct {p0, p2}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->processAutoScroll(Landroid/view/MotionEvent;)V

    goto :goto_4b

    .line 263
    :cond_36
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    if-eqz p1, :cond_45

    instance-of p2, p1, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz p2, :cond_45

    .line 264
    check-cast p1, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;

    iget p2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    invoke-interface {p1, p2}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionFinished(I)V

    .line 266
    :cond_45
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->reset()V

    .line 267
    invoke-virtual {p0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->stopAutoScroll()V

    :goto_4b
    return-void
.end method

.method public setIsActive(Z)V
    .registers 2

    .line 413
    iput-boolean p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mIsActive:Z

    return-void
.end method

.method public startAutoScroll()V
    .registers 9

    .line 219
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 223
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->initScroller(Landroid/content/Context;)V

    .line 224
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 225
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 226
    iget-object v2, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    const/16 v6, 0x1388

    const v7, 0x186a0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 227
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public startDragSelection(I)V
    .registers 4

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->setIsActive(Z)V

    .line 161
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mStart:I

    .line 162
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mEnd:I

    .line 163
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastStart:I

    .line 164
    iput p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mLastEnd:I

    .line 165
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;

    if-eqz v1, :cond_19

    .line 166
    check-cast v0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;

    invoke-interface {v0, p1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;->onSelectionStarted(I)V

    :cond_19
    return-void
.end method

.method public stopAutoScroll()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 239
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_16
    return-void
.end method

.method public withSelectListener(Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;)Lcom/miui/contentextension/screenshot/DragSelectTouchListener;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->mSelectListener:Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnDragSelectListener;

    return-object p0
.end method
