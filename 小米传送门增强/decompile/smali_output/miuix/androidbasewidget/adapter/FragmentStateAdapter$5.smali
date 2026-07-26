.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 574
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_12

    .line 575
    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_12
    return-void
.end method
