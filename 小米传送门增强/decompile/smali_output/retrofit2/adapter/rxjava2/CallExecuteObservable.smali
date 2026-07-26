.class final Lretrofit2/adapter/rxjava2/CallExecuteObservable;
.super Lio/reactivex/Observable;
.source "CallExecuteObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 31
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->originalCall:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->originalCall:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 38
    new-instance v1, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;-><init>(Lretrofit2/Call;)V

    .line 39
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 40
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    :cond_15
    const/4 v2, 0x0

    .line 46
    :try_start_16
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_26

    .line 48
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_26

    :catchall_24
    move-exception v0

    goto :goto_32

    .line 50
    :cond_26
    :goto_26
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->isDisposed()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_24

    if-nez v0, :cond_55

    .line 52
    :try_start_2c
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_55

    :catchall_30
    move-exception v0

    const/4 v2, 0x1

    .line 55
    :goto_32
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_3b

    .line 57
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_55

    .line 58
    :cond_3b
    invoke-virtual {v1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_55

    .line 60
    :try_start_41
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_55

    :catchall_45
    move-exception p1

    .line 62
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    return-void
.end method
