.class public Lcom/miui/contentextension/utils/ExtensionThreadPool;
.super Ljava/lang/Object;
.source "ExtensionThreadPool.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sManager:Lcom/miui/contentextension/utils/ExtensionThreadPool;

.field private static taskList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mainHandler:Landroid/os/Handler;

.field private pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetidAtomicInteger()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->CPU_COUNT:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 19
    sput v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->CORE_POOL_SIZE:I

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->taskList:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->mainHandler:Landroid/os/Handler;

    .line 27
    sget v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->CORE_POOL_SIZE:I

    new-instance v1, Lcom/miui/contentextension/utils/ExtensionThreadPool$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/utils/ExtensionThreadPool$1;-><init>(Lcom/miui/contentextension/utils/ExtensionThreadPool;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;
    .registers 2

    const-class v0, Lcom/miui/contentextension/utils/ExtensionThreadPool;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/utils/ExtensionThreadPool;->sManager:Lcom/miui/contentextension/utils/ExtensionThreadPool;

    if-nez v1, :cond_11

    .line 36
    new-instance v1, Lcom/miui/contentextension/utils/ExtensionThreadPool;

    invoke-direct {v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;-><init>()V

    sput-object v1, Lcom/miui/contentextension/utils/ExtensionThreadPool;->sManager:Lcom/miui/contentextension/utils/ExtensionThreadPool;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 38
    :cond_11
    :goto_11
    sget-object v1, Lcom/miui/contentextension/utils/ExtensionThreadPool;->sManager:Lcom/miui/contentextension/utils/ExtensionThreadPool;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public runInBackgroud(Ljava/lang/Runnable;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/miui/contentextension/utils/ExtensionThreadPool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
