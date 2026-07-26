.class public Lmiuix/core/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mAdditional:I

.field private final mAllowExtendCapacity:Z

.field private final mAutoReleaseCapacity:Z

.field private mCapacity:I

.field private volatile mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(IZZ)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 46
    iput-boolean p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 47
    iput-boolean p3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 48
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 52
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 53
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    :goto_26
    if-ge p3, p1, :cond_33

    .line 55
    new-instance v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v1, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 p3, p3, 0x1

    move-object p2, v1

    goto :goto_26

    .line 58
    :cond_33
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    return-void
.end method


# virtual methods
.method public decreaseCapacity(I)V
    .registers 5

    .line 218
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v0, :cond_2b

    if-gtz p1, :cond_7

    goto :goto_2b

    .line 222
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_27

    .line 226
    :cond_1a
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 227
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 229
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 223
    :cond_27
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :cond_2b
    :goto_2b
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_30

    .line 102
    :cond_13
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 103
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_19
    if-nez v4, :cond_26

    if-eq v0, v1, :cond_26

    .line 104
    iget-object v4, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 105
    iput-object v3, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 103
    iget-object v0, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_19

    :cond_26
    if-eqz v4, :cond_2a

    .line 108
    iput-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 110
    :cond_2a
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v4

    .line 98
    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public getCapacity()I
    .registers 3

    .line 187
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    if-lez v0, :cond_7

    add-int/2addr v1, v0

    :cond_7
    return v1
.end method

.method public increaseCapacity(I)V
    .registers 5

    .line 197
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v0, :cond_2c

    if-gtz p1, :cond_7

    goto :goto_2c

    .line 201
    :cond_7
    :goto_7
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_28

    :cond_1a
    neg-int v0, p1

    .line 205
    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 206
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 208
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 202
    :cond_28
    :goto_28
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    :cond_2c
    :goto_2c
    return-void
.end method

.method public put(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 67
    :cond_4
    :goto_4
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_59

    .line 72
    :cond_16
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 73
    iget-object v2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 74
    iget v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 75
    iget-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v5, 0x1

    if-eq v4, v1, :cond_37

    .line 76
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 77
    iget-object p1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq p1, v1, :cond_32

    iget-boolean v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v1, :cond_32

    if-lez v3, :cond_32

    .line 78
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    sub-int/2addr v3, v5

    .line 79
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 81
    :cond_32
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_53

    .line 83
    :cond_37
    iget-boolean v4, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v4, :cond_40

    if-gez v3, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v0

    goto :goto_53

    .line 84
    :cond_40
    :goto_40
    new-instance v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 85
    iput-object v1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 86
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/2addr v3, v5

    .line 87
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 88
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 91
    :goto_53
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v5

    .line 68
    :cond_59
    :goto_59
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4
.end method
