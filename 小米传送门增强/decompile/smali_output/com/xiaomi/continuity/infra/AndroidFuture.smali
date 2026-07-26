.class public Lcom/xiaomi/continuity/infra/AndroidFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;,
        Lcom/xiaomi/continuity/infra/AndroidFuture$ThenApplyAsync;,
        Lcom/xiaomi/continuity/infra/AndroidFuture$ThenComposeAsync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidFuture"

.field private static sMainHandler:Landroid/os/Handler;


# instance fields
.field private mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$CdrvFdF8TFd_1iaRcHcyynXTgYQ(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OEDSqfI_piBHWRzUJKVwzCVIQqM(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->lambda$callListenerAsync$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/xiaomi/continuity/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public static callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TTT;-",
            "Ljava/lang/Throwable;",
            ">;TTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    :try_start_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_28

    :catchall_4
    move-exception v0

    if-nez p2, :cond_e

    const/4 p2, 0x0

    :try_start_8
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :catchall_c
    move-exception p0

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_c

    :goto_12
    sget-object p2, Lcom/xiaomi/continuity/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call whenComplete listener. res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method private callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_a

    invoke-static {p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_a
    new-instance v1, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_12
    return-void
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic lambda$callListenerAsync$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-static {p0, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    .line 0
    const-string v0, "Expected CancellationException"

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_20

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_12} :catch_14
    .catchall {:try_start_9 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    goto :goto_16

    :catch_14
    move-exception v0

    goto :goto_1c

    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1c
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_20
    return p1
.end method

.method public cancelTimeout()Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-object p0
.end method

.method public complete(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 4

    .line 0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a
    return v0
.end method

.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->cancelTimeout()Lcom/xiaomi/continuity/infra/AndroidFuture;

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    if-eqz v1, :cond_11

    invoke-direct {p0, v1, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_11
    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/continuity/infra/AndroidFuture;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-object p0
.end method

.method public bridge synthetic orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApply(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenApplyAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenApplyAsync;-><init>(Lcom/xiaomi/continuity/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TV;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCompose(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenComposeAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenComposeAsync;-><init>(Lcom/xiaomi/continuity/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public triggerTimeout()V
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->cancelTimeout()Lcom/xiaomi/continuity/infra/AndroidFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_11
    return-void
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/xiaomi/continuity/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/xiaomi/continuity/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-eq p2, v2, :cond_1e

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p1

    goto :goto_42

    :cond_1e
    iput-object p2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_23

    goto :goto_29

    :cond_23
    new-instance p2, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    move-object p1, p2

    :goto_29
    iput-object p1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    monitor-exit v0

    return-object p0

    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_1c

    const/4 p2, 0x0

    :try_start_2f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_33} :catch_39
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_3e

    :catchall_37
    move-exception v0

    goto :goto_3e

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_3e
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_1c

    throw p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method
