.class final Lorg/greenrobot/eventbus/PendingPostQueue;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private head:Lorg/greenrobot/eventbus/PendingPost;

.field private tail:Lorg/greenrobot/eventbus/PendingPost;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueue(Lorg/greenrobot/eventbus/PendingPost;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_23

    .line 27
    :try_start_3
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    if-eqz v0, :cond_e

    .line 28
    iput-object p1, v0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    .line 29
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    goto :goto_16

    :catchall_c
    move-exception p1

    goto :goto_2b

    .line 30
    :cond_e
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-nez v0, :cond_1b

    .line 31
    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;

    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    .line 35
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_c

    .line 36
    monitor-exit p0

    return-void

    .line 33
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be enqueued"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_c

    throw p1
.end method

.method declared-synchronized poll()Lorg/greenrobot/eventbus/PendingPost;
    .registers 3

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-eqz v0, :cond_11

    .line 41
    iget-object v1, v0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    iput-object v1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->tail:Lorg/greenrobot/eventbus/PendingPost;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 46
    :cond_11
    :goto_11
    monitor-exit p0

    return-object v0

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method declared-synchronized poll(I)Lorg/greenrobot/eventbus/PendingPost;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/PendingPostQueue;->head:Lorg/greenrobot/eventbus/PendingPost;

    if-nez v0, :cond_c

    int-to-long v0, p1

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_c

    :catchall_a
    move-exception p1

    goto :goto_12

    .line 53
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/PendingPostQueue;->poll()Lorg/greenrobot/eventbus/PendingPost;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a

    monitor-exit p0

    return-object p1

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_a

    throw p1
.end method
