.class public abstract Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lkotlinx/coroutines/internal/ThreadSafeHeapNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/EventLoopImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelayedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        ">;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,529:1\n64#2:530\n65#2,7:532\n20#3:531\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n433#1:530\n433#1:532,7\n433#1:531\n*E\n"
.end annotation


# instance fields
.field private _heap:Ljava/lang/Object;

.field private index:I

.field public nanoTime:J


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 401
    check-cast p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .registers 6

    .line 420
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    iget-wide v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_12

    :cond_d
    if-gez p1, :cond_11

    const/4 p1, -0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public final declared-synchronized dispose()V
    .registers 3

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    .line 476
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    if-ne v0, v1, :cond_b

    monitor-exit p0

    return-void

    .line 478
    :cond_b
    :try_start_b
    instance-of v1, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    if-eqz v1, :cond_14

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    goto :goto_15

    :catchall_12
    move-exception v0

    goto :goto_23

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->remove(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z

    .line 479
    :goto_1b
    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_12

    .line 480
    monitor-exit p0

    return-void

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_12

    throw v0
.end method

.method public getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 417
    iget v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return v0
.end method

.method public final declared-synchronized scheduleTask(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I
    .registers 12

    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-ne v0, v1, :cond_c

    monitor-exit p0

    const/4 p1, 0x2

    return p1

    .line 20
    :cond_c
    :try_start_c
    monitor-enter p3
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_1d

    .line 65
    :try_start_d
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 434
    # invokes: Lkotlinx/coroutines/EventLoopImplBase;->isCompleted()Z
    invoke-static {p4}, Lkotlinx/coroutines/EventLoopImplBase;->access$isCompleted(Lkotlinx/coroutines/EventLoopImplBase;)Z

    move-result p4
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_26

    if-eqz p4, :cond_1f

    :try_start_19
    monitor-exit p3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1d
    move-exception p1

    goto :goto_50

    :cond_1f
    const-wide/16 v1, 0x0

    if-nez v0, :cond_28

    .line 447
    :try_start_23
    iput-wide p1, p3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    goto :goto_3c

    :catchall_26
    move-exception p1

    goto :goto_4e

    .line 454
    :cond_28
    iget-wide v3, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_31

    goto :goto_32

    :cond_31
    move-wide p1, v3

    .line 458
    :goto_32
    iget-wide v3, p3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_3c

    iput-wide p1, p3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    .line 467
    :cond_3c
    :goto_3c
    iget-wide p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    iget-wide v3, p3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v1

    if-gez p1, :cond_47

    iput-wide v3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 66
    :cond_47
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_26

    .line 65
    :try_start_4a
    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_1d

    .line 470
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 65
    :goto_4e
    :try_start_4e
    monitor-exit p3

    throw p1

    :goto_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_1d

    throw p1
.end method

.method public setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/EventLoop_commonKt;->DISPOSED_TASK:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/EventLoop_commonKt;->access$getDISPOSED_TASK$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    .line 414
    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->_heap:Ljava/lang/Object;

    return-void

    .line 413
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(I)V
    .registers 2

    .line 417
    iput p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return-void
.end method

.method public final timeToExecute(J)Z
    .registers 5

    .line 428
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
