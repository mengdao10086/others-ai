.class abstract Landroidx/recyclerview/widget/RemixRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;
    }
.end annotation


# instance fields
.field private final mMaxFlingVelocity:I

.field private mMouseEvent:Z

.field private mMouseEventTime:J

.field private mScrollPointerId:I

.field private mSpringEnabled:Z

.field private final mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 49
    sget v0, Lmiuix/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    .line 34
    new-array p2, p2, [Lmiuix/animation/utils/VelocityMonitor;

    iput-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEvent:Z

    const-wide/16 p2, 0x0

    .line 41
    iput-wide p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEventTime:J

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RemixRecyclerView;)Z
    .registers 1

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/RemixRecyclerView;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)I
    .registers 1

    .line 30
    iget p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method private checkVelocityMonitor(I)V
    .registers 4

    .line 138
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object v1, v0, p1

    if-nez v1, :cond_d

    .line 139
    new-instance v1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    aput-object v1, v0, p1

    :cond_d
    return-void
.end method

.method private resetVelocity(Landroid/view/MotionEvent;I)V
    .registers 3

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    .line 114
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->checkVelocityMonitor(I)V

    .line 115
    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    return-void
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .registers 6

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    goto :goto_37

    .line 100
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    .line 101
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->resetVelocity(Landroid/view/MotionEvent;I)V

    .line 102
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    goto :goto_37

    .line 105
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v2, v0, :cond_37

    .line 106
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 95
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    .line 96
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->resetVelocity(Landroid/view/MotionEvent;I)V

    .line 97
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    :cond_37
    :goto_37
    return-void
.end method

.method private updateVelocity(Landroid/view/MotionEvent;I)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    .line 120
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/RemixRecyclerView;->checkVelocityMonitor(I)V

    .line 121
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2a

    .line 122
    iget-object v4, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object v3, v4, v3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    float-to-double p1, p1

    new-array v2, v2, [D

    aput-wide v4, v2, v1

    aput-wide p1, v2, v0

    invoke-virtual {v3, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    goto :goto_41

    .line 124
    :cond_2a
    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object p2, p2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v5, p1

    new-array p1, v2, [D

    aput-wide v3, p1, v1

    aput-wide v5, p1, v0

    invoke-virtual {p2, p1}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    :goto_41
    return-void
.end method


# virtual methods
.method public getSpringEnabled()Z
    .registers 5

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 81
    :goto_12
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEvent:Z

    if-eqz v3, :cond_1c

    if-eqz v0, :cond_1d

    :cond_1c
    move v1, v2

    :cond_1d
    return v1
.end method

.method protected getVelocityFromMonitor(I)F
    .registers 4

    .line 129
    iget v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_7
    rem-int/lit8 v0, v0, 0x5

    .line 133
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->checkVelocityMonitor(I)V

    .line 134
    iget-object v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p1

    return p1
.end method

.method protected isOverScrolling()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/16 v0, 0x2002

    .line 60
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEvent:Z

    if-eqz v0, :cond_10

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEventTime:J

    .line 64
    :cond_10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 87
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/16 v0, 0x2002

    .line 145
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEvent:Z

    if-eqz v0, :cond_10

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mMouseEventTime:J

    .line 149
    :cond_10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 150
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverScrollMode(I)V
    .registers 3

    .line 69
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    :cond_9
    return-void
.end method

.method public setSpringEnabled(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return-void
.end method
