.class public Landroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/KeyEventDispatcher$Component;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 64
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_4
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
