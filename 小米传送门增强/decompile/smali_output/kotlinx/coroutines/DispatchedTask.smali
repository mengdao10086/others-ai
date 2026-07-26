.class public abstract Lkotlinx/coroutines/DispatchedTask;
.super Lkotlinx/coroutines/scheduling/Task;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/Task;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,221:1\n1#2:222\n55#3,10:223\n66#3,2:237\n219#4:233\n220#4:236\n57#5,2:234\n75#6:239\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n88#1:223,10\n88#1:237,2\n101#1:233\n101#1:236\n101#1:234,2\n140#1:239\n*E\n"
.end annotation


# instance fields
.field public resumeMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/Task;-><init>()V

    .line 51
    iput p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    return-void
.end method


# virtual methods
.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .line 79
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    iget-object v1, p1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :goto_e
    return-object v1
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 0
    return-object p1
.end method

.method public final handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 75
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_c
    if-nez p1, :cond_f

    move-object p1, p2

    .line 144
    :cond_f
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final run()V
    .registers 11

    .line 83
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 86
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 87
    iget-object v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 88
    iget-object v1, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 55
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 56
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_21

    .line 59
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v1

    goto/16 :goto_b2

    :cond_21
    move-object v4, v5

    .line 89
    :goto_22
    :try_start_22
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->takeState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v7

    .line 91
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_43

    .line 97
    iget v9, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v9}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v9

    if-eqz v9, :cond_43

    sget-object v9, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v6, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/Job;

    goto :goto_44

    :catchall_41
    move-exception v2

    goto :goto_a6

    :cond_43
    move-object v6, v5

    :goto_44
    if-eqz v6, :cond_61

    .line 98
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v9

    if-nez v9, :cond_61

    .line 99
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 100
    invoke-virtual {p0, v7, v6}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_61
    if-eqz v8, :cond_71

    .line 104
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7c

    .line 106
    :cond_71
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/DispatchedTask;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 109
    :goto_7c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7e
    .catchall {:try_start_22 .. :try_end_7e} :catchall_41

    if-eqz v4, :cond_86

    .line 66
    :try_start_80
    invoke-virtual {v4}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 67
    :cond_86
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_1e

    .line 114
    :cond_89
    :try_start_89
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_93

    goto :goto_9e

    :catchall_93
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_9e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_d0

    :goto_a6
    if-eqz v4, :cond_ae

    .line 66
    :try_start_a8
    invoke-virtual {v4}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 67
    :cond_ae
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_b1
    throw v2
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_1e

    .line 114
    :goto_b2
    :try_start_b2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_be

    goto :goto_c9

    :catchall_be
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_c9
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_d0
    return-void
.end method

.method public abstract takeState$kotlinx_coroutines_core()Ljava/lang/Object;
.end method
