.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "LifecycleController.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LifecycleController;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController$observer$1\n+ 2 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n1#1,70:1\n57#2,3:71\n*S KotlinDebug\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController$observer$1\n*L\n36#1:71,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $parentJob:Lkotlinx/coroutines/Job;

.field final synthetic this$0:Landroidx/lifecycle/LifecycleController;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleController;Lkotlinx/coroutines/Job;)V
    .registers 3

    .line 0
    iput-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->this$0:Landroidx/lifecycle/LifecycleController;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->$parentJob:Lkotlinx/coroutines/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_23

    .line 36
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->this$0:Landroidx/lifecycle/LifecycleController;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->$parentJob:Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Landroidx/lifecycle/LifecycleController;->finish()V

    goto :goto_4a

    .line 37
    :cond_23
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->this$0:Landroidx/lifecycle/LifecycleController;

    # getter for: Landroidx/lifecycle/LifecycleController;->minState:Landroidx/lifecycle/Lifecycle$State;
    invoke-static {p2}, Landroidx/lifecycle/LifecycleController;->access$getMinState$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_41

    .line 38
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->this$0:Landroidx/lifecycle/LifecycleController;

    # getter for: Landroidx/lifecycle/LifecycleController;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;
    invoke-static {p1}, Landroidx/lifecycle/LifecycleController;->access$getDispatchQueue$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/DispatchQueue;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/DispatchQueue;->pause()V

    goto :goto_4a

    .line 40
    :cond_41
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->this$0:Landroidx/lifecycle/LifecycleController;

    # getter for: Landroidx/lifecycle/LifecycleController;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;
    invoke-static {p1}, Landroidx/lifecycle/LifecycleController;->access$getDispatchQueue$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/DispatchQueue;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/DispatchQueue;->resume()V

    :goto_4a
    return-void
.end method
