.class public final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,182:1\n55#2,13:183\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n141#1:183,13\n*E\n"
.end annotation


# instance fields
.field private savedContext:Lkotlin/coroutines/CoroutineContext;

.field private savedOldValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 116
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    :cond_c
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method protected afterResume(Ljava/lang/Object;)V
    .registers 7

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_f

    .line 135
    :cond_6
    iget-object v2, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 137
    iput-object v1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    .line 140
    :goto_f
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 55
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 56
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    sget-object v4, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v4, :cond_27

    .line 59
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v1

    .line 142
    :cond_27
    :try_start_27
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 143
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_3a

    if-eqz v1, :cond_36

    .line 66
    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 67
    :cond_36
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_39
    return-void

    :catchall_3a
    move-exception p1

    if-eqz v1, :cond_43

    .line 66
    invoke-virtual {v1}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 67
    :cond_43
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_46
    throw p1
.end method

.method public final clearThreadContext()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 129
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final saveThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedContext:Lkotlin/coroutines/CoroutineContext;

    .line 123
    iput-object p2, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->savedOldValue:Ljava/lang/Object;

    return-void
.end method
