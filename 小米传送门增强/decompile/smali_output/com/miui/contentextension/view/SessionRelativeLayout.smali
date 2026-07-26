.class public Lcom/miui/contentextension/view/SessionRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SessionRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/miui/contentextension/view/SessionRelativeLayout;->mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;

    if-eqz v0, :cond_c

    .line 68
    invoke-interface {v0, p1}, Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 71
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/miui/contentextension/view/SessionRelativeLayout;->mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;

    if-eqz v0, :cond_c

    .line 50
    invoke-interface {v0, p1}, Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/miui/contentextension/view/SessionRelativeLayout;->mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;

    if-eqz v0, :cond_c

    .line 41
    invoke-interface {v0, p1}, Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/miui/contentextension/view/SessionRelativeLayout;->mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;

    if-eqz v0, :cond_c

    .line 59
    invoke-interface {v0, p1}, Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/miui/contentextension/view/SessionRelativeLayout;->mListener:Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;

    return-void
.end method
