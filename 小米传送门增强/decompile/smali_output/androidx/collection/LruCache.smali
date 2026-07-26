.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    .line 55
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    return-void

    .line 53
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 261
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final evictAll()V
    .registers 2

    const/4 v0, -0x1

    .line 281
    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_56

    .line 88
    monitor-enter p0

    .line 89
    :try_start_3
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 91
    iget p1, p0, Landroidx/collection/LruCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 92
    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception p1

    goto :goto_54

    .line 94
    :cond_15
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LruCache;->missCount:I

    .line 95
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_13

    .line 104
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_24
    monitor-enter p0

    .line 110
    :try_start_25
    iget v1, p0, Landroidx/collection/LruCache;->createCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->createCount:I

    .line 111
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 115
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :catchall_39
    move-exception p1

    goto :goto_52

    .line 117
    :cond_3b
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    .line 119
    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_39

    if-eqz v1, :cond_4c

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 125
    :cond_4c
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v0

    .line 119
    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_39

    throw p1

    .line 95
    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_13

    throw p1

    .line 84
    :cond_56
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_37

    if-eqz p2, :cond_37

    .line 143
    monitor-enter p0

    .line 144
    :try_start_5
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LruCache;->putCount:I

    .line 145
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/LruCache;->size:I

    .line 146
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 148
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    goto :goto_28

    :catchall_26
    move-exception p1

    goto :goto_35

    .line 150
    :cond_28
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_26

    if-eqz v0, :cond_2f

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, v1, p1, v0, p2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_2f
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v0

    .line 150
    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_26

    throw p1

    .line 139
    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 348
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I

    iget v1, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/2addr v1, v0

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x64

    .line 349
    div-int/2addr v0, v1

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_33

    :cond_e
    const/4 v0, 0x0

    .line 350
    :goto_f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    iget v3, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroidx/collection/LruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroidx/collection/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 350
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_c

    throw v0
.end method

.method public trimToSize(I)V
    .registers 6

    .line 171
    :goto_0
    monitor-enter p0

    .line 172
    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-ltz v0, :cond_55

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-nez v0, :cond_55

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_74

    .line 177
    :cond_14
    :goto_14
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-le v0, p1, :cond_53

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_53

    .line 181
    :cond_21
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, v1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    .line 186
    iget v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    .line 187
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_12

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_53
    :goto_53
    :try_start_53
    monitor-exit p0

    return-void

    .line 173
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_12

    throw p1
.end method
