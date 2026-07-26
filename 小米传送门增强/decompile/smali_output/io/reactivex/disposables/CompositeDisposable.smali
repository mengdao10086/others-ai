.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    .line 99
    const-string v0, "disposable is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_26

    .line 101
    monitor-enter p0

    .line 102
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_22

    .line 103
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    if-nez v0, :cond_1c

    .line 105
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    .line 106
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_24

    .line 108
    :cond_1c
    :goto_1c
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_22
    monitor-exit p0

    goto :goto_26

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_1a

    throw p1

    .line 113
    :cond_26
    :goto_26
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 3

    .line 193
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 197
    :cond_5
    monitor-enter p0

    .line 198
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_e

    .line 199
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    goto :goto_18

    .line 202
    :cond_e
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v1, 0x0

    .line 203
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 204
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_c

    .line 206
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    return-void

    .line 204
    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_c

    throw v0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .registers 4

    .line 172
    const-string v0, "disposables is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 176
    :cond_b
    monitor-enter p0

    .line 177
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_14

    .line 178
    monitor-exit p0

    return v1

    :catchall_12
    move-exception p1

    goto :goto_24

    .line 181
    :cond_14
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    if-eqz v0, :cond_22

    .line 182
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_22

    .line 185
    :cond_1f
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_22
    :goto_22
    monitor-exit p0

    return v1

    .line 185
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_12

    throw p1
.end method

.method public dispose()V
    .registers 3

    .line 69
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 73
    :cond_5
    monitor-enter p0

    .line 74
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_e

    .line 75
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    goto :goto_1b

    :cond_e
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 80
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_c

    .line 82
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    return-void

    .line 80
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_c

    throw v0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 236
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object p1

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_2a

    aget-object v4, p1, v3

    .line 238
    instance-of v5, v4, Lio/reactivex/disposables/Disposable;

    if-eqz v5, :cond_27

    .line 240
    :try_start_13
    check-cast v4, Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_27

    :catchall_19
    move-exception v4

    .line 242
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v2, :cond_24

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_24
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2a
    if-eqz v2, :cond_44

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3e

    .line 252
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :cond_3e
    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {p1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_44
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
