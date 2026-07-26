.class public final Lio/reactivex/internal/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/ExceptionHelper$Termination;
    }
.end annotation


# static fields
.field public static final TERMINATED:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lio/reactivex/internal/util/ExceptionHelper$Termination;

    invoke-direct {v0}, Lio/reactivex/internal/util/ExceptionHelper$Termination;-><init>()V

    sput-object v0, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    return-void
.end method

.method public static addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 59
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    if-nez v0, :cond_10

    move-object v1, p1

    goto :goto_19

    .line 67
    :cond_10
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, p1}, [Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 70
    :goto_19
    invoke-static {p0, v0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 78
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_11

    .line 79
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :cond_11
    return-object v0
.end method

.method public static wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    .line 40
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_11

    .line 43
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b

    .line 44
    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    .line 46
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 41
    :cond_11
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method
