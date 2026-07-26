.class public final Landroidx/lifecycle/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"


# instance fields
.field private finished:Z

.field private isDraining:Z

.field private paused:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    return-void
.end method

.method public static final synthetic access$enqueue(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final enqueue(Ljava/lang/Runnable;)V
    .registers 3

    .line 109
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 112
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 109
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot enqueue any more runnables"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final canRun()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final dispatchAndEnqueue(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_23

    .line 102
    :cond_1f
    invoke-direct {p0, p2}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 100
    :cond_23
    :goto_23
    new-instance v1, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;

    invoke-direct {v1, p0, p2}, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;-><init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_2b
    return-void
.end method

.method public final drainQueue()V
    .registers 3

    .line 65
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    :try_start_7
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    .line 71
    :goto_9
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 72
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_29

    .line 75
    :cond_18
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_23

    goto :goto_9

    :cond_23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_9

    :catchall_27
    move-exception v0

    goto :goto_2c

    .line 78
    :cond_29
    :goto_29
    iput-boolean v1, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    return-void

    :goto_2c
    iput-boolean v1, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    throw v0
.end method

.method public final finish()V
    .registers 2

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    .line 60
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    return-void
.end method

.method public final resume()V
    .registers 3

    .line 47
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    if-nez v0, :cond_5

    return-void

    .line 50
    :cond_5
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    .line 54
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 50
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot resume a finished dispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
