.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 62
    invoke-direct {p0, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-nez p1, :cond_11

    .line 74
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 75
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_1d

    .line 77
    :cond_11
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    .line 78
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    :goto_1d
    return-void
.end method

.method private gc()V
    .registers 9

    .line 231
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 233
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 234
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v0, :cond_21

    .line 237
    aget-object v6, v2, v4

    .line 239
    sget-object v7, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    .line 241
    aget v7, v1, v4

    aput v7, v1, v5

    .line 242
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 243
    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 250
    :cond_21
    iput-boolean v3, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 251
    iput v5, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 461
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_10

    .line 462
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    .line 466
    :cond_10
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    .line 467
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 470
    :cond_1c
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 471
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3e

    add-int/lit8 v1, v0, 0x1

    .line 472
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 474
    new-array v2, v1, [I

    .line 475
    new-array v1, v1, [Ljava/lang/Object;

    .line 478
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 482
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 485
    :cond_3e
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 486
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 487
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    .line 445
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 446
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    .line 449
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 452
    :cond_e
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 453
    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 89
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 90
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_14

    .line 120
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    sget-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    return-object p1

    :cond_14
    :goto_14
    return-object p2
.end method

.method public indexOfKey(I)I
    .registers 4

    .line 402
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 403
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 406
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public keyAt(I)I
    .registers 3

    .line 362
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 363
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 366
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_f

    .line 265
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_7e

    :cond_f
    not-int v0, v0

    .line 269
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_23

    .line 270
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 271
    aput-object p2, v2, v0

    return-void

    .line 275
    :cond_23
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_38

    .line 276
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 279
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    .line 282
    :cond_38
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5a

    add-int/lit8 v1, v1, 0x1

    .line 283
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 285
    new-array v2, v1, [I

    .line 286
    new-array v1, v1, [Ljava/lang/Object;

    .line 289
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 293
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 296
    :cond_5a
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_70

    .line 298
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_70
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 303
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 304
    iget p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    :goto_7e
    return-void
.end method

.method public size()I
    .registers 2

    .line 341
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 342
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 345
    :cond_7
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 499
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 500
    const-string v0, "{}"

    return-object v0

    .line 503
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 505
    :goto_18
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    .line 507
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 516
    :cond_39
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 v1, 0x7d

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
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

    .line 376
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 377
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 380
    :cond_7
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
