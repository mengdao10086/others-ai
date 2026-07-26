.class final synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,682:1\n13#2:683\n1290#3,2:684\n1290#3,2:686\n1290#3,2:688\n1290#3,2:690\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n491#1:683\n518#1:684,2\n532#1:686,2\n626#1:688,2\n650#1:690,2\n*E\n"
.end annotation


# direct methods
.method public static final cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    .line 561
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :goto_e
    return-void
.end method

.method public static synthetic cancel$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 560
    :cond_5
    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    .registers 2

    .line 601
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    :goto_e
    return-void
.end method

.method public static final ensureActive(Lkotlinx/coroutines/Job;)V
    .registers 2

    .line 583
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method
