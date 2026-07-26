.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 304
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 312
    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 313
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_d

    .line 316
    monitor-exit v0

    goto :goto_0

    :catchall_b
    move-exception v1

    goto :goto_1b

    .line 320
    :cond_d
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v1, v2, :cond_16

    const/4 v1, 0x0

    .line 321
    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_b

    .line 327
    :try_start_17
    invoke-virtual {v1}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_0

    goto :goto_0

    .line 324
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_b

    :try_start_1c
    throw v1
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1d} :catch_0
.end method
