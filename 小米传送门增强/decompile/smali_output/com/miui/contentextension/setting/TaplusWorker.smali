.class public Lcom/miui/contentextension/setting/TaplusWorker;
.super Ljava/lang/Object;
.source "TaplusWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/TaplusWorker$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mMainHandler:Landroid/os/Handler;

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "taplus_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/setting/TaplusWorker-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/setting/TaplusWorker;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/contentextension/setting/TaplusWorker;
    .registers 2

    const-class v0, Lcom/miui/contentextension/setting/TaplusWorker;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/setting/TaplusWorker$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/setting/TaplusWorker;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postToMain(Ljava/lang/Runnable;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postToWorker(Ljava/lang/Runnable;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/miui/contentextension/setting/TaplusWorker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
