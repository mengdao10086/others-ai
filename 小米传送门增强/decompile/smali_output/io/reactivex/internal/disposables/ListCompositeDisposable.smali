.class public final Lio/reactivex/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    .line 77
    const-string v0, "d is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_26

    .line 79
    monitor-enter p0

    .line 80
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_22

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 84
    iput-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_24

    .line 86
    :cond_1c
    :goto_1c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_22
    monitor-exit p0

    goto :goto_26

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_1a

    throw p1

    .line 91
    :cond_26
    :goto_26
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .registers 4

    .line 130
    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 134
    :cond_b
    monitor-enter p0

    .line 135
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_14

    .line 136
    monitor-exit p0

    return v1

    :catchall_12
    move-exception p1

    goto :goto_24

    .line 139
    :cond_14
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_22

    .line 143
    :cond_1f
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 141
    :cond_22
    :goto_22
    monitor-exit p0

    return v1

    .line 143
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_12

    throw p1
.end method

.method public dispose()V
    .registers 3

    .line 54
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 58
    :cond_5
    monitor-enter p0

    .line 59
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_e

    .line 60
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    goto :goto_1b

    :cond_e
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 65
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_c

    .line 67
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    .line 65
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_c

    throw v0
.end method

.method dispose(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 171
    :try_start_14
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_8

    :catchall_18
    move-exception v1

    .line 173
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v0, :cond_23

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_27
    if-eqz v0, :cond_42

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3c

    const/4 p1, 0x0

    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 184
    :cond_3c
    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_42
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
