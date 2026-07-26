.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private idleCallback:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 40
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 51
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    return-void
.end method

.method private findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 148
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 149
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 151
    :cond_1d
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 152
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 228
    monitor-enter p0

    .line 229
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 230
    iget-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    .line 231
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    .line 233
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_15

    .line 236
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void

    :catchall_16
    move-exception p1

    goto :goto_20

    .line 229
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 231
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_16

    throw p1
.end method

.method private promoteAndExecute()Z
    .registers 7

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    monitor-enter p0

    .line 188
    :try_start_6
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 191
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    iget v4, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v3, v4, :cond_23

    goto :goto_45

    .line 192
    :cond_23
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-lt v3, v4, :cond_30

    goto :goto_c

    .line 194
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 195
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_43
    move-exception v0

    goto :goto_67

    .line 199
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    move v1, v2

    .line 200
    :goto_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_43

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_54
    if-ge v2, v3, :cond_66

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/RealCall$AsyncCall;

    .line 204
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_66
    return v1

    .line 200
    :goto_67
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_43

    throw v0
.end method


# virtual methods
.method enqueue(Lokhttp3/RealCall$AsyncCall;)V
    .registers 3

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_1e

    .line 140
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/Dispatcher;->findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 141
    invoke-virtual {p1, v0}, Lokhttp3/RealCall$AsyncCall;->reuseCallsPerHostFrom(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 143
    :cond_1e
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1c

    .line 144
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    return-void

    .line 143
    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1c

    throw p1
.end method

.method declared-synchronized executed(Lokhttp3/RealCall;)V
    .registers 3

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 213
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_24

    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v2, 0x0

    .line 66
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_28

    .line 68
    :cond_24
    :goto_24
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_22

    monitor-exit p0

    return-object v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    throw v0
.end method

.method finished(Lokhttp3/RealCall$AsyncCall;)V
    .registers 3

    .line 217
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 218
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method finished(Lokhttp3/RealCall;)V
    .registers 3

    .line 223
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method
