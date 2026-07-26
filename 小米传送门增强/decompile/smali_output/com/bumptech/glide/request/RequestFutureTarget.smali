.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Ljava/lang/Exception;

.field private exceptionReceived:Z

.field private final height:I

.field private isCancelled:Z

.field private final mainHandler:Landroid/os/Handler;

.field private request:Lcom/bumptech/glide/request/Request;

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 10

    const/4 v4, 0x1

    .line 59
    sget-object v5, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    .line 64
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 65
    iput p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 66
    iput-boolean p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 67
    iput-object p5, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    if-eqz v0, :cond_b

    .line 169
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_74

    .line 172
    :cond_b
    :goto_b
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_6e

    .line 174
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-nez v0, :cond_66

    .line 176
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v0, :cond_1b

    .line 177
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_9

    monitor-exit p0

    return-object p1

    :cond_1b
    const-wide/16 v0, 0x0

    if-nez p1, :cond_25

    .line 181
    :try_start_1f
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    goto :goto_36

    .line 182
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_36

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 186
    :cond_36
    :goto_36
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_60

    .line 188
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    if-nez p1, :cond_58

    .line 190
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez p1, :cond_52

    .line 192
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz p1, :cond_4c

    .line 196
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_9

    monitor-exit p0

    return-object p1

    .line 193
    :cond_4c
    :try_start_4c
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 191
    :cond_52
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 189
    :cond_58
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 187
    :cond_60
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 175
    :cond_66
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 173
    :cond_6e
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 196
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_9

    throw p1
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .registers 5

    monitor-enter p0

    .line 72
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 73
    monitor-exit p0

    return v1

    .line 76
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    if-nez v0, :cond_1f

    .line 78
    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-eqz p1, :cond_1a

    .line 80
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->clear()V

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_21

    .line 82
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_18

    .line 84
    :cond_1f
    monitor-exit p0

    return v2

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_18

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    :try_start_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 108
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 4

    .line 116
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    if-eqz v0, :cond_a

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_11

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_c

    throw v0
.end method

.method public onDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public declared-synchronized onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    const/4 p2, 0x1

    .line 151
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exceptionReceived:Z

    .line 152
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Ljava/lang/Exception;

    .line 153
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 154
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 162
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 163
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 165
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 0
    return-void
.end method

.method public run()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    if-eqz v0, :cond_b

    .line 205
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->cancel(Z)Z

    :cond_b
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    return-void
.end method
