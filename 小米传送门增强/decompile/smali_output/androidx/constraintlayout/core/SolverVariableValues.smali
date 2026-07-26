.class public Landroidx/constraintlayout/core/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static epsilon:F = 0.001f


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field mCount:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->NONE:I

    const/16 v1, 0x10

    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    .line 33
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    .line 34
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    .line 36
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    .line 37
    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    .line 38
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    .line 39
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 48
    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->clear()V

    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 6

    .line 216
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr p1, v0

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 219
    aput p2, v0, p1

    goto :goto_19

    .line 224
    :cond_f
    :goto_f
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_17

    move v1, v0

    goto :goto_f

    .line 227
    :cond_17
    aput p2, p1, v1

    .line 232
    :goto_19
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aput v2, p1, p2

    return-void
.end method

.method private addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .registers 6

    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    iget v1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v1, v0, p1

    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aput p3, v0, p1

    .line 291
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 292
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aput v0, p3, p1

    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 294
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 295
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    return-void
.end method

.method private findEmptySlot()I
    .registers 4

    const/4 v0, 0x0

    .line 299
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_10

    .line 300
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return v2
.end method

.method private increaseSize()V
    .registers 5

    .line 199
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    .line 201
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    .line 202
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    .line 203
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    .line 204
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    .line 205
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    :goto_2e
    if-ge v1, v0, :cond_3c

    .line 206
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 209
    :cond_3c
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .registers 7

    .line 308
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->findEmptySlot()I

    move-result v0

    .line 309
    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_17

    .line 311
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aput p1, v1, v0

    .line 312
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 313
    aput v0, v1, p1

    goto :goto_2c

    .line 315
    :cond_17
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aput p3, p1, v0

    .line 316
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    if-lez p1, :cond_28

    .line 317
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    aput v1, p1, v0

    .line 318
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    goto :goto_2c

    .line 320
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aput p3, p1, v0

    .line 323
    :goto_2c
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget p1, p1, v0

    if-eq p1, p3, :cond_36

    .line 324
    iget-object p3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aput v0, p3, p1

    .line 326
    :cond_36
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    return-void
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    .line 260
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int v0, p1, v0

    .line 261
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    aget v2, v1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    return-void

    .line 270
    :cond_e
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_1d

    .line 271
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aget v4, p1, v2

    aput v4, v1, v0

    .line 272
    aput v3, p1, v2

    goto :goto_39

    .line 274
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aget v1, v0, v2

    if-eq v1, v3, :cond_2b

    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v4, v4, v1

    if-eq v4, p1, :cond_2b

    move v2, v1

    goto :goto_1d

    :cond_2b
    if-eq v1, v3, :cond_39

    .line 278
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_39

    .line 279
    aget p1, v0, v1

    aput p1, v0, v2

    .line 280
    aput v3, v0, v1

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .registers 8

    .line 410
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c

    return-void

    .line 413
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_2f

    .line 417
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 418
    sget p2, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v3, p2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2f

    cmpg-float p2, v2, p2

    if-gez p2, :cond_2f

    const/4 p2, 0x0

    .line 419
    aput p2, v1, v0

    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    :cond_2f
    :goto_2f
    return-void
.end method

.method public clear()V
    .registers 6

    .line 180
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_14

    .line 182
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    move v0, v1

    .line 187
    :goto_15
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_25

    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aput v3, v2, v0

    .line 189
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    move v0, v1

    .line 191
    :goto_26
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    if-ge v0, v2, :cond_31

    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 194
    :cond_31
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 195
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 3

    .line 94
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public divideByAmount(F)V
    .registers 7

    .line 481
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 482
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    .line 484
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 485
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    return-void
.end method

.method public get(Landroidx/constraintlayout/core/SolverVariable;)F
    .registers 3

    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget p1, v0, p1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentSize()I
    .registers 2

    .line 54
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 8

    .line 59
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 63
    :cond_6
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_25

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1b

    if-eq v2, v4, :cond_1b

    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    .line 68
    :cond_1b
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_25
    :goto_25
    return-object v1
.end method

.method public getVariableValue(I)F
    .registers 6

    .line 78
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 79
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    if-ne v2, p1, :cond_e

    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget p1, p1, v1

    return p1

    .line 84
    :cond_e
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .registers 5

    .line 99
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v1, -0x1

    if-eqz v0, :cond_33

    if-nez p1, :cond_8

    goto :goto_33

    .line 102
    :cond_8
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 103
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int v0, p1, v0

    .line 104
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_15

    return v1

    .line 108
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1c

    return v0

    .line 111
    :cond_1c
    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    aget v0, v2, v0

    if-eq v0, v1, :cond_29

    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_29

    goto :goto_1c

    :cond_29
    if-ne v0, v1, :cond_2c

    return v1

    .line 117
    :cond_2c
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_33

    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public invert()V
    .registers 7

    .line 468
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 469
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1b

    .line 471
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    aput v4, v3, v1

    .line 472
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1b
    :goto_1b
    return-void
.end method

.method public put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 10

    .line 334
    sget v0, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_10

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    .line 335
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    return-void

    .line 338
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 339
    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 340
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 341
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    goto :goto_58

    .line 343
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    .line 345
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aput p2, p1, v0

    goto :goto_58

    .line 347
    :cond_2a
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    if-lt v0, v2, :cond_34

    .line 348
    invoke-direct {p0}, Landroidx/constraintlayout/core/SolverVariableValues;->increaseSize()V

    .line 350
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 352
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v4, v3

    :goto_39
    if-ge v1, v0, :cond_55

    .line 354
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v5, v6, :cond_48

    .line 355
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aput p2, p1, v2

    return-void

    :cond_48
    if-ge v5, v6, :cond_4b

    move v4, v2

    .line 361
    :cond_4b
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v2, v5, v2

    if-ne v2, v3, :cond_52

    goto :goto_55

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 366
    :cond_55
    :goto_55
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    :goto_58
    return-void
.end method

.method public remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .registers 10

    .line 381
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 385
    :cond_9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 386
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget v2, v2, v0

    .line 387
    iget v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    if-ne v3, v0, :cond_1a

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v3, v3, v0

    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 390
    :cond_1a
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aput v1, v3, v0

    .line 391
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_2a

    .line 392
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v6, v5, v0

    aput v6, v5, v4

    .line 394
    :cond_2a
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v4, v4, v0

    if-eq v4, v1, :cond_34

    .line 395
    aget v0, v3, v0

    aput v0, v3, v4

    .line 397
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 398
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    if-eqz p2, :cond_47

    .line 400
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_47
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_e6

    .line 151
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    if-nez v3, :cond_22

    goto/16 :goto_e2

    .line 155
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[p: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7e

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    iget-object v8, p0, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    .line 161
    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", n: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_c2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    .line 167
    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 171
    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .registers 10

    .line 427
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v0

    .line 428
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 439
    iget-object p1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    check-cast p1, Landroidx/constraintlayout/core/SolverVariableValues;

    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/core/SolverVariableValues;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_31

    .line 455
    iget-object v4, p1, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2e

    .line 456
    iget-object v5, p1, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    aget v5, v5, v3

    .line 457
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v6, v4

    mul-float/2addr v5, v0

    .line 458
    invoke-virtual {p0, v4, v5, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_31
    return v0
.end method
