.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArraySet$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static sBaseCache:[Ljava/lang/Object;

.field private static final sBaseCacheLock:Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;

.field private static final sTwiceBaseCacheLock:Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 288
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 289
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_11

    .line 291
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    :goto_11
    const/4 p1, 0x0

    .line 293
    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    return-void
.end method

.method private allocArrays(I)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_55

    .line 174
    sget-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_a
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_29

    if-eqz v4, :cond_51

    .line 178
    :try_start_e
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 179
    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 180
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    if-eqz v5, :cond_2b

    .line 182
    aput-object v1, v4, v2

    aput-object v1, v4, v3

    .line 183
    sget v5, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_27} :catch_2b
    .catchall {:try_start_e .. :try_end_27} :catchall_29

    .line 188
    :try_start_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    goto :goto_53

    .line 194
    :catch_2b
    :cond_2b
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sput-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 197
    sput v3, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 199
    :cond_51
    monitor-exit v0

    goto :goto_a6

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_29

    throw p1

    :cond_55
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a6

    .line 201
    sget-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_5b
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_7a

    if-eqz v4, :cond_a2

    .line 205
    :try_start_5f
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 206
    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 207
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    if-eqz v5, :cond_7c

    .line 209
    aput-object v1, v4, v2

    aput-object v1, v4, v3

    .line 210
    sget v5, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroidx/collection/ArraySet;->sBaseCacheSize:I
    :try_end_78
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_78} :catch_7c
    .catchall {:try_start_5f .. :try_end_78} :catchall_7a

    .line 215
    :try_start_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p1

    goto :goto_a4

    .line 221
    :catch_7c
    :cond_7c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sput-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 224
    sput v3, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 226
    :cond_a2
    monitor-exit v0

    goto :goto_a6

    :goto_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_78 .. :try_end_a5} :catchall_7a

    throw p1

    .line 229
    :cond_a6
    :goto_a6
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 230
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private binarySearch(I)I
    .registers 4

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 91
    :catch_9
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 239
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2d

    .line 240
    sget-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_e
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    .line 242
    sget-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 243
    aput-object p0, p1, v6

    sub-int/2addr p2, v6

    :goto_19
    if-lt p2, v3, :cond_22

    .line 245
    aput-object v2, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    :catchall_20
    move-exception p0

    goto :goto_2b

    .line 247
    :cond_22
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 248
    sget p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 254
    :cond_29
    monitor-exit v0

    goto :goto_53

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_20

    throw p0

    .line 255
    :cond_2d
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    .line 256
    sget-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_34
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    if-ge v1, v5, :cond_4f

    .line 258
    sget-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 259
    aput-object p0, p1, v6

    sub-int/2addr p2, v6

    :goto_3f
    if-lt p2, v3, :cond_48

    .line 261
    aput-object v2, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_3f

    :catchall_46
    move-exception p0

    goto :goto_51

    .line 263
    :cond_48
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 264
    sget p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 270
    :cond_4f
    monitor-exit v0

    goto :goto_53

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_46

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    .line 96
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 103
    :cond_6
    invoke-direct {p0, p2}, Landroidx/collection/ArraySet;->binarySearch(I)I

    move-result v1

    if-gez v1, :cond_d

    return v1

    .line 111
    :cond_d
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v2, v1, 0x1

    :goto_1a
    if-ge v2, v0, :cond_30

    .line 117
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_30

    .line 118
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_30
    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_48

    .line 122
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_48

    .line 123
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    return v1

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_48
    not-int p1, v2

    return p1
.end method

.method private indexOfNull()I
    .registers 5

    .line 134
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, v1}, Landroidx/collection/ArraySet;->binarySearch(I)I

    move-result v1

    if-gez v1, :cond_e

    return v1

    .line 149
    :cond_e
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v1, 0x1

    :goto_17
    if-ge v2, v0, :cond_29

    .line 155
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_29

    .line 156
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    add-int/lit8 v1, v1, -0x1

    :goto_2b
    if-ltz v1, :cond_3d

    .line 160
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_3d

    .line 161
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_3a

    return v1

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_3d
    not-int v0, v2

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 416
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 421
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v2

    move v3, v1

    goto :goto_16

    .line 423
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 424
    invoke-direct {p0, p1, v2}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_16
    if-ltz v2, :cond_19

    return v1

    :cond_19
    not-int v2, v2

    .line 431
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v4

    if-lt v0, v5, :cond_4e

    const/16 v5, 0x8

    if-lt v0, v5, :cond_27

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_2c

    :cond_27
    const/4 v6, 0x4

    if-lt v0, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v5, v6

    .line 438
    :goto_2c
    iget-object v6, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 439
    invoke-direct {p0, v5}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 441
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ne v0, v5, :cond_48

    .line 445
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v7, v5

    if-lez v7, :cond_44

    .line 447
    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :cond_44
    invoke-static {v4, v6, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_4e

    .line 442
    :cond_48
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_4e
    :goto_4e
    if-ge v2, v0, :cond_5e

    .line 459
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_5e
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v4, v0

    if-ge v2, v4, :cond_72

    .line 467
    aput v3, v0, v2

    .line 468
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 469
    iput v1, p0, Landroidx/collection/ArraySet;->mSize:I

    return p1

    .line 464
    :cond_72
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 752
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 754
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 755
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 5

    .line 333
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v0, :cond_16

    .line 334
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 335
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 337
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 338
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 339
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 340
    invoke-static {v1, v2, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 342
    :cond_16
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v0, :cond_1b

    return-void

    .line 343
    :cond_1b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 376
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 738
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 739
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public ensureCapacity(I)V
    .registers 7

    .line 352
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 353
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v2, v1

    if-ge v2, p1, :cond_22

    .line 355
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 356
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 357
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lez p1, :cond_1d

    .line 358
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_1d
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v2, p1}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 363
    :cond_22
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ne p1, v0, :cond_27

    return-void

    .line 364
    :cond_27
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 636
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 637
    check-cast p1, Ljava/util/Set;

    .line 638
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    .line 643
    :goto_17
    :try_start_17
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v3, :cond_29

    .line 644
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 645
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    return v0

    :catch_2a
    :cond_2a
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 664
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 666
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_e

    .line 667
    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    .line 386
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 404
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 711
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 504
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 506
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 768
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 769
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 519
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 520
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v1, p1

    const/4 v3, 0x1

    if-gt v0, v3, :cond_d

    .line 524
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    goto :goto_5b

    :cond_d
    add-int/lit8 v3, v0, -0x1

    .line 527
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v4

    const/16 v6, 0x8

    if-le v5, v6, :cond_42

    array-length v5, v4

    div-int/lit8 v5, v5, 0x3

    if-ge v0, v5, :cond_42

    if-le v0, v6, :cond_21

    shr-int/lit8 v5, v0, 0x1

    add-int v6, v0, v5

    .line 537
    :cond_21
    invoke-direct {p0, v6}, Landroidx/collection/ArraySet;->allocArrays(I)V

    if-lez p1, :cond_31

    .line 541
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_31
    if-ge p1, v3, :cond_55

    add-int/lit8 v5, p1, 0x1

    .line 549
    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    sub-int v7, v3, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_55

    :cond_42
    if-ge p1, v3, :cond_50

    add-int/lit8 v1, p1, 0x1

    sub-int v5, v3, p1

    .line 558
    invoke-static {v4, v1, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v4, v1, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_50
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, p1, v3

    .line 563
    :cond_55
    :goto_55
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ne v0, p1, :cond_5c

    .line 566
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    :goto_5b
    return-object v2

    .line 564
    :cond_5c
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 783
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ltz v0, :cond_18

    .line 784
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 785
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public size()I
    .registers 2

    .line 596
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .line 602
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 603
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 610
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v0, v1, :cond_15

    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 615
    :cond_15
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v0, v1, :cond_25

    const/4 v0, 0x0

    .line 617
    aput-object v0, p1, v1

    :cond_25
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 681
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 682
    const-string v0, "{}"

    return-object v0

    .line 685
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 687
    :goto_18
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v2, :cond_35

    if-lez v1, :cond_23

    .line 689
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 695
    :cond_2d
    const-string v2, "(this Set)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    const/16 v1, 0x7d

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
