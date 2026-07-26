.class public abstract Lcom/miui/contentextension/text/floatview/BaseFloatView;
.super Ljava/lang/Object;
.source "BaseFloatView.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsFinishing:Z

.field protected mIsShowing:Z

.field protected mMainView:Landroid/view/View;

.field protected mService:Lcom/miui/contentextension/services/TextContentExtensionService;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    .line 18
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    .line 21
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    .line 22
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    .line 23
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 24
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    return-void
.end method


# virtual methods
.method protected addToWindow()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 42
    iget-boolean v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    if-eqz v1, :cond_10

    .line 43
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    .line 45
    :cond_10
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public isEventInFloatSubView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    if-nez p1, :cond_6

    goto :goto_33

    :cond_6
    const/4 v1, 0x2

    .line 114
    new-array v1, v1, [I

    .line 115
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 116
    new-instance v2, Landroid/graphics/RectF;

    aget v0, v1, v0

    int-to-float v3, v0

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    aget v1, v1, v4

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    invoke-direct {v2, v3, v5, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v2, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1

    :cond_33
    :goto_33
    return v0
.end method

.method public isEventInFloatView(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 96
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    if-nez p1, :cond_8

    goto :goto_39

    :cond_8
    const/4 v2, 0x2

    .line 99
    new-array v2, v2, [I

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    aget v1, v2, v1

    int-to-float v3, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    aget v2, v2, v4

    iget-object v4, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1

    :cond_39
    :goto_39
    return v1
.end method

.method public onDestroy()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p0}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->removeFromWindow()V

    :cond_7
    return-void
.end method

.method protected removeFromWindow()V
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 53
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    :cond_10
    return-void
.end method

.method public updateViewLayout()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsShowing:Z

    if-eqz v0, :cond_15

    .line 75
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method
