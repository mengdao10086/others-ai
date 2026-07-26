.class Lmiuix/animation/ViewTarget$3;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method constructor <init>(Lmiuix/animation/ViewTarget;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lmiuix/animation/ViewTarget$3;->this$0:Lmiuix/animation/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 102
    iget-object v0, p0, Lmiuix/animation/ViewTarget$3;->this$0:Lmiuix/animation/ViewTarget;

    # getter for: Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$200(Lmiuix/animation/ViewTarget;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_17

    .line 104
    iget-object v1, p0, Lmiuix/animation/ViewTarget$3;->this$0:Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    # invokes: Lmiuix/animation/ViewTarget;->registerLifecycle(Landroid/content/Context;)Z
    invoke-static {v1, v0}, Lmiuix/animation/ViewTarget;->access$300(Lmiuix/animation/ViewTarget;Landroid/content/Context;)Z

    .line 106
    :cond_17
    iget-object v0, p0, Lmiuix/animation/ViewTarget$3;->this$0:Lmiuix/animation/ViewTarget;

    const/4 v1, 0x0

    # setter for: Lmiuix/animation/ViewTarget;->mRegisterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lmiuix/animation/ViewTarget;->access$402(Lmiuix/animation/ViewTarget;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
