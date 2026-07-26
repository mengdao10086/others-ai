.class public final Lkotlinx/coroutines/CommonPool;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "CommonPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/CommonPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,144:1\n56#1:146\n56#1:147\n56#1:148\n56#1:149\n56#1:152\n1#2:145\n1849#3,2:150\n*S KotlinDebug\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/CommonPool\n*L\n61#1:146\n65#1:147\n70#1:148\n85#1:149\n38#1:152\n127#1:150,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/CommonPool;

.field private static volatile pool:Ljava/util/concurrent/Executor;

.field private static final requestedParallelism:I

.field private static usePrivatePool:Z


# direct methods
.method public static synthetic $r8$lambda$cAxr8ZaXsk5tGCEJ7S7QOHBMJuc()V
    .registers 0

    .line 0
    invoke-static {}, Lkotlinx/coroutines/CommonPool;->isGoodCommonPool$lambda-9()V

    return-void
.end method

.method public static synthetic $r8$lambda$onubKuuswKYuMFVZsPEi1dTYsS0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lkotlinx/coroutines/CommonPool;->createPlainPool$lambda-12(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlinx/coroutines/CommonPool;

    invoke-direct {v0}, Lkotlinx/coroutines/CommonPool;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CommonPool;->INSTANCE:Lkotlinx/coroutines/CommonPool;

    .line 38
    :try_start_7
    const-string v0, "kotlinx.coroutines.default.parallelism"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    goto :goto_f

    :catchall_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_13

    const/4 v0, -0x1

    goto :goto_24

    .line 39
    :cond_13
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_27

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 37
    :goto_24
    sput v0, Lkotlinx/coroutines/CommonPool;->requestedParallelism:I

    return-void

    .line 41
    :cond_27
    const-string v1, "Expected positive number in kotlinx.coroutines.default.parallelism, but has "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    return-void
.end method

.method private final createPlainPool()Ljava/util/concurrent/ExecutorService;
    .registers 4

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 92
    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->getParallelism()I

    move-result v1

    new-instance v2, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static final createPlainPool$lambda-12(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "CommonPool-worker-"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final createPool()Ljava/util/concurrent/ExecutorService;
    .registers 5

    .line 59
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 61
    :try_start_c
    const-string v1, "java.util.concurrent.ForkJoinPool"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-object v1, v0

    :goto_14
    if-nez v1, :cond_1b

    .line 62
    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1b
    sget-boolean v2, Lkotlinx/coroutines/CommonPool;->usePrivatePool:Z

    if-nez v2, :cond_46

    sget v2, Lkotlinx/coroutines/CommonPool;->requestedParallelism:I

    if-gez v2, :cond_46

    .line 65
    :try_start_23
    const-string v2, "commonPool"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_34

    check-cast v2, Ljava/util/concurrent/ExecutorService;
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_34

    goto :goto_35

    :catchall_34
    :cond_34
    move-object v2, v0

    :goto_35
    if-nez v2, :cond_38

    goto :goto_46

    .line 66
    :cond_38
    sget-object v3, Lkotlinx/coroutines/CommonPool;->INSTANCE:Lkotlinx/coroutines/CommonPool;

    invoke-virtual {v3, v1, v2}, Lkotlinx/coroutines/CommonPool;->isGoodCommonPool$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_42

    :cond_41
    move-object v2, v0

    :goto_42
    if-nez v2, :cond_45

    goto :goto_46

    :cond_45
    return-object v2

    .line 70
    :cond_46
    :goto_46
    :try_start_46
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/CommonPool;->INSTANCE:Lkotlinx/coroutines/CommonPool;

    invoke-direct {v2}, Lkotlinx/coroutines/CommonPool;->getParallelism()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_69

    check-cast v1, Ljava/util/concurrent/ExecutorService;
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_69

    move-object v0, v1

    :catchall_69
    :cond_69
    if-nez v0, :cond_6f

    .line 73
    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_6f
    return-object v0
.end method

.method private final declared-synchronized getOrCreatePoolSync()Ljava/util/concurrent/Executor;
    .registers 2

    monitor-enter p0

    .line 99
    :try_start_1
    sget-object v0, Lkotlinx/coroutines/CommonPool;->pool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->createPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CommonPool;->pool:Ljava/util/concurrent/Executor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    :cond_e
    :goto_e
    monitor-exit p0

    return-object v0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw v0
.end method

.method private final getParallelism()I
    .registers 3

    .line 47
    sget v0, Lkotlinx/coroutines/CommonPool;->requestedParallelism:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_1f

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    goto :goto_23

    .line 47
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_23
    return v0
.end method

.method private static final isGoodCommonPool$lambda-9()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on CommonPool"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3

    .line 103
    :try_start_0
    sget-object p1, Lkotlinx/coroutines/CommonPool;->pool:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/CommonPool;->getOrCreatePoolSync()Ljava/util/concurrent/Executor;

    move-result-object p1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    .line 105
    :catch_f
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    .line 108
    sget-object p1, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    :goto_17
    return-void
.end method

.method public final isGoodCommonPool$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")Z"
        }
    .end annotation

    .line 84
    new-instance v0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    .line 85
    :try_start_9
    const-string v1, "getPoolSize"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1a

    check-cast p1, Ljava/lang/Integer;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    move-object v0, p1

    :catchall_1a
    :cond_1a
    const/4 p1, 0x0

    if-nez v0, :cond_1e

    return p1

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_26

    move p1, v0

    :cond_26
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 140
    const-string v0, "CommonPool"

    return-object v0
.end method
