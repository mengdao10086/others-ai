.class Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
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
    name = "SoftReferenceInstanceHolder"
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

.field private volatile mElements:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mIndex:I

.field private volatile mSize:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 179
    iput p2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 180
    new-array p1, p2, [Ljava/lang/ref/SoftReference;

    .line 182
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    const/4 p1, 0x0

    .line 183
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 219
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 220
    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    :cond_5
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 223
    aget-object v3, v1, v0

    if-eqz v3, :cond_5

    .line 224
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 225
    aput-object v2, v1, v0

    if-eqz v3, :cond_5

    .line 228
    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 229
    monitor-exit p0

    return-object v3

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 234
    :cond_1c
    monitor-exit p0

    return-object v2

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw v0
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

    .line 188
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 240
    iget-object v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 242
    iget v2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_29

    const/4 v2, 0x0

    move v4, v2

    :goto_c
    if-ge v4, v0, :cond_27

    .line 244
    aget-object v5, v1, v4

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_1e

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :catchall_1c
    move-exception p1

    goto :goto_35

    .line 245
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, v1, v4
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_1c

    .line 246
    monitor-exit p0

    return v3

    .line 249
    :cond_27
    monitor-exit p0

    return v2

    .line 252
    :cond_29
    :try_start_29
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    add-int/2addr v0, v3

    .line 253
    iput v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_1c

    .line 254
    monitor-exit p0

    return v3

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1c

    throw p1
.end method

.method public declared-synchronized resize(I)V
    .registers 5

    monitor-enter p0

    .line 198
    :try_start_1
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    add-int/2addr p1, v0

    if-gtz p1, :cond_1e

    .line 200
    # getter for: Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    .line 201
    :try_start_b
    # getter for: Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/core/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->getElementClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    .line 203
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    .line 202
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0

    :catchall_1c
    move-exception p1

    goto :goto_31

    .line 206
    :cond_1e
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 207
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 208
    iget v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 209
    array-length v2, v0

    if-le p1, v2, :cond_2f

    .line 210
    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    .line 212
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_1c

    .line 215
    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1c

    throw p1
.end method
