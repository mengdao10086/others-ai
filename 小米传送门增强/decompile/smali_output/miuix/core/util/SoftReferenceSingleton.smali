.class public abstract Lmiuix/core/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "SoftReferenceSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method protected createInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 36
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 42
    :cond_c
    invoke-virtual {p0, v0}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_10
    move-exception v0

    goto :goto_1f

    .line 39
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lmiuix/core/util/SoftReferenceSingleton;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 44
    :goto_1d
    monitor-exit p0

    return-object v0

    .line 45
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_10

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 59
    :cond_c
    invoke-virtual {p0, v0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_10
    move-exception p1

    goto :goto_1f

    .line 56
    :cond_12
    :goto_12
    invoke-virtual {p0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->createInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 61
    :goto_1d
    monitor-exit p0

    return-object v0

    .line 62
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_10

    throw p1
.end method

.method protected updateInstance(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method
