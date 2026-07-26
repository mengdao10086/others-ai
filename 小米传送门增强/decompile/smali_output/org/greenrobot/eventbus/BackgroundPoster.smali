.class final Lorg/greenrobot/eventbus/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private volatile executorRunning:Z

.field private final queue:Lorg/greenrobot/eventbus/PendingPostQueue;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 34
    new-instance p1, Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/PendingPostQueue;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 3

    .line 38
    invoke-static {p1, p2}, Lorg/greenrobot/eventbus/PendingPost;->obtainPendingPost(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;

    move-result-object p1

    .line 39
    monitor-enter p0

    .line 40
    :try_start_5
    iget-object p2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/PendingPostQueue;->enqueue(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 41
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 43
    iget-object p1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_1f

    .line 45
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1b

    throw p1
.end method

.method public run()V
    .registers 7

    :goto_0
    const/4 v0, 0x0

    .line 53
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll(I)Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v1

    if-nez v1, :cond_24

    .line 55
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_22
    .catchall {:try_start_1 .. :try_end_c} :catchall_20

    .line 57
    :try_start_c
    iget-object v1, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->queue:Lorg/greenrobot/eventbus/PendingPostQueue;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll()Lorg/greenrobot/eventbus/PendingPost;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 59
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 60
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1a

    .line 70
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    return-void

    :catchall_1a
    move-exception v1

    goto :goto_1e

    .line 62
    :cond_1c
    :try_start_1c
    monitor-exit p0

    goto :goto_24

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1a

    :try_start_1f
    throw v1

    :catchall_20
    move-exception v1

    goto :goto_51

    :catch_22
    move-exception v1

    goto :goto_2a

    .line 64
    :cond_24
    :goto_24
    iget-object v2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_29} :catch_22
    .catchall {:try_start_1f .. :try_end_29} :catchall_20

    goto :goto_0

    .line 67
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v2}, Lorg/greenrobot/eventbus/EventBus;->getLogger()Lorg/greenrobot/eventbus/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was interruppted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_20

    .line 70
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    return-void

    :goto_51
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/BackgroundPoster;->executorRunning:Z

    .line 71
    throw v1
.end method
