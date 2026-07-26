.class Lmiuix/core/util/Pools$InstanceHolder;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiuix/core/util/Pools$IInstanceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/Pools$IInstanceHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    .line 127
    new-instance p1, Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getElementClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized resize(I)V
    .registers 4

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->getCapacity()I

    move-result v0

    add-int/2addr p1, v0

    if-gtz p1, :cond_22

    .line 144
    # getter for: Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_20

    .line 145
    :try_start_f
    # getter for: Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/core/util/Pools;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/core/util/Pools$InstanceHolder;->getElementClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1d

    .line 147
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    .line 146
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0

    :catchall_20
    move-exception p1

    goto :goto_32

    :cond_22
    if-lez p1, :cond_2a

    .line 151
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->increaseCapacity(I)V

    goto :goto_30

    .line 153
    :cond_2a
    iget-object v0, p0, Lmiuix/core/util/Pools$InstanceHolder;->mQueue:Lmiuix/core/util/concurrent/ConcurrentRingQueue;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->decreaseCapacity(I)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_20

    .line 155
    :goto_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_20

    throw p1
.end method
