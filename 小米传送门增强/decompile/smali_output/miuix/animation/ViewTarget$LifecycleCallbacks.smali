.class public Lmiuix/animation/ViewTarget$LifecycleCallbacks;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LifecycleCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method protected constructor <init>(Lmiuix/animation/ViewTarget;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 411
    iget-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->cleanSelf()V
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->access$800(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 388
    iget-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->awakeSelf()V
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->access$600(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 399
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {}, Lmiuix/animation/Folme;->enableSleep()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 400
    iget-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    # invokes: Lmiuix/animation/ViewTarget;->sleepSelf()V
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->access$700(Lmiuix/animation/ViewTarget;)V

    :cond_11
    return-void
.end method
