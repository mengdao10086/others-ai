.class public interface abstract Lcom/miui/contentextension/view/SessionRelativeLayout$IEventListener;
.super Ljava/lang/Object;
.source "SessionRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/view/SessionRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEventListener"
.end annotation


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
