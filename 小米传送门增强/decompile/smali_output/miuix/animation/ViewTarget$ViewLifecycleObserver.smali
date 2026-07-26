.class public Lmiuix/animation/ViewTarget$ViewLifecycleObserver;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewLifecycleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method protected constructor <init>(Lmiuix/animation/ViewTarget;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDestroy()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 369
    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->cleanSelf()V
    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$800(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method onResume()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 357
    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->awakeSelf()V
    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$600(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method onStop()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 362
    invoke-static {}, Lmiuix/animation/Folme;->enableSleep()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 363
    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->sleepSelf()V
    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$700(Lmiuix/animation/ViewTarget;)V

    :cond_b
    return-void
.end method
