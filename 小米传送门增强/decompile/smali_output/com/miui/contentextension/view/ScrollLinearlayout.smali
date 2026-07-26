.class public Lcom/miui/contentextension/view/ScrollLinearlayout;
.super Landroid/widget/LinearLayout;
.source "ScrollLinearlayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;

.field private mRawX:F

.field private mRawY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawY:F

    goto :goto_7f

    :cond_14
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_37

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    sub-float/2addr v0, v2

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawY:F

    sub-float/2addr p1, v2

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_33

    move v3, v1

    :cond_33
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_7f

    :cond_37
    if-ne v0, v1, :cond_7f

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5c

    .line 39
    iget-object v0, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mListener:Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;

    if-eqz v0, :cond_5c

    .line 40
    invoke-interface {v0, v1}, Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;->onScroll(Z)V

    .line 42
    :cond_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mRawX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7f

    .line 43
    iget-object p1, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mListener:Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;

    if-eqz p1, :cond_7f

    .line 44
    invoke-interface {p1, v3}, Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;->onScroll(Z)V

    :cond_7f
    :goto_7f
    return v1
.end method

.method public setOnScrollListener(Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/miui/contentextension/view/ScrollLinearlayout;->mListener:Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;

    return-void
.end method
