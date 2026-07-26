.class Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;
.super Lcom/xiaomi/continuity/infra/AndroidFuture;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThenCombine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/continuity/infra/AndroidFuture<",
        "TV;>;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCombineResults:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field private volatile mResultT:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile mSourceU:Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JhVaHfSL545zCHKAY67wIk106z8(Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CompletionStage;

    iput-object p2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/util/function/BiFunction;

    iput-object p3, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_6
    iget-object p2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    if-eqz p2, :cond_17

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    new-instance p2, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_27

    :cond_17
    :try_start_17
    iget-object p2, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_27
    return-void
.end method

.method public bridge synthetic orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/continuity/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method
