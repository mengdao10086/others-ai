.class public Lmiuix/animation/physics/SpringOperator;
.super Ljava/lang/Object;
.source "SpringOperator.java"

# interfaces
.implements Lmiuix/animation/physics/PhysicsOperator;


# instance fields
.field params:[D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V
    .registers 29

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz p9, :cond_8

    move-wide v3, v1

    goto :goto_a

    .line 44
    :cond_8
    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    :goto_a
    if-eqz p9, :cond_f

    .line 45
    iget-wide v5, v0, Lmiuix/animation/internal/AnimData;->progress:D

    goto :goto_11

    :cond_f
    iget-wide v5, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 46
    :goto_11
    iget-wide v7, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    sub-double/2addr v5, v3

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    mul-double v11, p3, v9

    mul-double v11, v11, p7

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v15, p1, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-ltz v15, :cond_4f

    cmpg-double v15, p1, v1

    if-gez v15, :cond_4f

    mul-double v1, p3, v16

    mul-double/2addr v1, v5

    add-double/2addr v7, v1

    div-double v7, v7, p5

    mul-double v1, p5, p7

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v15, v5, v13

    mul-double v17, v7, v1

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    mul-double/2addr v9, v15

    mul-double v9, v9, p3

    mul-double/2addr v7, v13

    mul-double/2addr v5, v1

    sub-double/2addr v7, v5

    mul-double v7, v7, p5

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    .line 56
    iput-wide v9, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    :goto_4d
    move-wide v13, v15

    goto :goto_8a

    :cond_4f
    cmpl-double v1, p1, v1

    if-nez v1, :cond_64

    mul-double v1, p3, v16

    mul-double/2addr v1, v5

    add-double/2addr v7, v1

    mul-double v1, v7, p7

    add-double/2addr v5, v1

    mul-double v13, v5, v11

    mul-double/2addr v9, v13

    mul-double v9, v9, p3

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    .line 61
    iput-wide v9, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    goto :goto_8a

    :cond_64
    if-lez v1, :cond_8a

    mul-double v1, p3, v16

    mul-double/2addr v1, v5

    add-double/2addr v7, v1

    div-double v7, v7, p5

    mul-double v1, p5, p7

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v13

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v1

    mul-double v15, v5, v13

    mul-double v17, v7, v1

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    mul-double/2addr v9, v15

    mul-double v9, v9, p3

    mul-double/2addr v7, v13

    mul-double/2addr v5, v1

    add-double/2addr v7, v5

    mul-double v7, v7, p5

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    .line 68
    iput-wide v9, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    goto :goto_4d

    :cond_8a
    :goto_8a
    if-eqz p9, :cond_90

    add-double/2addr v13, v3

    .line 72
    iput-wide v13, v0, Lmiuix/animation/internal/AnimData;->progress:D

    goto :goto_93

    :cond_90
    add-double/2addr v13, v3

    .line 74
    iput-wide v13, v0, Lmiuix/animation/internal/AnimData;->value:D

    :goto_93
    return-void
.end method


# virtual methods
.method public getParameters([D[D)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 25
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 26
    aget-wide v6, v0, v5

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v8, v6

    .line 28
    array-length v6, v0

    const/4 v7, 0x2

    const/4 v12, 0x3

    if-lt v6, v12, :cond_18

    aget-wide v13, v0, v7

    goto :goto_1a

    :cond_18
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_1a
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 29
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v15, v13

    aput-wide v15, v1, v2

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    mul-double/2addr v10, v13

    .line 30
    aput-wide v10, v1, v5

    .line 31
    array-length v0, v1

    if-lt v0, v12, :cond_4f

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3b

    mul-double/2addr v3, v3

    sub-double/2addr v3, v5

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    aput-wide v8, v1, v7

    goto :goto_4f

    :cond_3b
    const-wide/16 v10, 0x0

    cmpl-double v0, v3, v10

    if-ltz v0, :cond_4f

    cmpg-double v0, v3, v5

    if-gez v0, :cond_4f

    mul-double/2addr v3, v3

    sub-double v10, v5, v3

    .line 36
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    aput-wide v8, v1, v7

    :cond_4f
    :goto_4f
    return-void
.end method

.method public varargs updateVelocity(DDDD[D)D
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 82
    aget-wide v0, p9, v0

    const/4 v2, 0x1

    .line 83
    aget-wide v2, p9, v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 84
    invoke-static {p5, p6, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p5

    mul-double/2addr p5, p7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p5

    mul-double/2addr p1, v4

    sub-double/2addr v0, v2

    mul-double/2addr p3, v0

    mul-double/2addr p3, p7

    double-to-float p3, p3

    float-to-double p3, p3

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public varargs updateVelocity(DF[F)D
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    iget-object v0, p0, Lmiuix/animation/physics/SpringOperator;->params:[D

    if-nez v0, :cond_5

    return-wide p1

    .line 16
    :cond_5
    array-length v0, p4

    new-array v10, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 17
    :goto_a
    array-length v2, p4

    if-ge v1, v2, :cond_15

    .line 18
    aget v2, p4, v1

    float-to-double v2, v2

    aput-wide v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 20
    :cond_15
    iget-object p4, p0, Lmiuix/animation/physics/SpringOperator;->params:[D

    aget-wide v4, p4, v0

    const/4 v0, 0x1

    aget-wide v6, p4, v0

    float-to-double v8, p3

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v10}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    move-result-wide p1

    return-wide p1
.end method
