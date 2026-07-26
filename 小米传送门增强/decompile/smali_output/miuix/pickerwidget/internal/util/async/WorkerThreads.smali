.class public Lmiuix/pickerwidget/internal/util/async/WorkerThreads;
.super Ljava/lang/Object;
.source "WorkerThreads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;
    }
.end annotation


# static fields
.field private static final sWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized acquireWorker(Ljava/lang/String;)Landroid/os/Looper;
    .registers 4

    const-class v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    if-nez v2, :cond_18

    .line 42
    new-instance v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_16
    move-exception p0

    goto :goto_26

    .line 45
    :cond_18
    iget p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 47
    :goto_1e
    iget-object p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_16

    monitor-exit v0

    return-object p0

    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public static declared-synchronized releaseWorker(Ljava/lang/String;)V
    .registers 5

    const-class v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    if-eqz v2, :cond_20

    .line 53
    iget v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    if-nez v3, :cond_20

    .line 55
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 59
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw p0
.end method
