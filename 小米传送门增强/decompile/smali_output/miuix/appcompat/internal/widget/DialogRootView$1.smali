.class Lmiuix/appcompat/internal/widget/DialogRootView$1;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/widget/DialogRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/widget/DialogRootView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/widget/DialogRootView;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    const/4 v1, 0x1

    # setter for: Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$002(Lmiuix/appcompat/internal/widget/DialogRootView;Z)Z

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/widget/DialogRootView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    .line 36
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    # getter for: Lmiuix/appcompat/internal/widget/DialogRootView;->mViewConfigChangedDispatched:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$100(Lmiuix/appcompat/internal/widget/DialogRootView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne v0, p1, :cond_2c

    .line 38
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_36

    .line 40
    :cond_2c
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v0, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;-><init>(Lmiuix/appcompat/internal/widget/DialogRootView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_36
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 0
    return-void
.end method
