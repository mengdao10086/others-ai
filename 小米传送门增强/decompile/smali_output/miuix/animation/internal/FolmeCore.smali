.class public Lmiuix/animation/internal/FolmeCore;
.super Ljava/lang/Object;
.source "FolmeCore.java"


# static fields
.field private static final LONGEST_DURATION_NANOS:J = 0x2540be400L

.field public static final NANOS_TO_MS:J = 0xf4240L

.field public static final NANOS_TO_S:J = 0x3b9aca00L

.field static final mCheckerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/physics/EquilibriumChecker;",
            ">;"
        }
    .end annotation
.end field

.field static final sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

.field static sFloatEvaluator:Landroid/animation/FloatEvaluator;

.field static final sFriction:Lmiuix/animation/physics/FrictionOperator;

.field static sIntEvaluator:Landroid/animation/IntEvaluator;

.field static final sSpring:Lmiuix/animation/physics/SpringOperator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lmiuix/animation/physics/SpringOperator;

    invoke-direct {v0}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->sSpring:Lmiuix/animation/physics/SpringOperator;

    .line 33
    new-instance v0, Lmiuix/animation/physics/AccelerateOperator;

    invoke-direct {v0}, Lmiuix/animation/physics/AccelerateOperator;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    .line 34
    new-instance v0, Lmiuix/animation/physics/FrictionOperator;

    invoke-direct {v0}, Lmiuix/animation/physics/FrictionOperator;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    .line 35
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->sIntEvaluator:Landroid/animation/IntEvaluator;

    .line 36
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->sFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/animation/internal/FolmeCore;->mCheckerLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnimationFrame(Lmiuix/animation/IAnimTarget;ZLmiuix/animation/internal/AnimData;JDI)V
    .registers 16

    .line 43
    iget-wide v3, p2, Lmiuix/animation/internal/AnimData;->startTime:J

    sub-long v3, p3, v3

    .line 44
    iget-object v0, p2, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    move-wide v5, p5

    move v7, p7

    .line 45
    invoke-static/range {v0 .. v7}, Lmiuix/animation/internal/FolmeCore;->updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;ZJDI)V

    goto :goto_3e

    .line 46
    :cond_17
    iget-object v0, p2, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsMotionStyle(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 47
    invoke-static {p2, v3, v4}, Lmiuix/animation/internal/FolmeCore;->updatePhysicsMotionAnim(Lmiuix/animation/internal/AnimData;J)V

    goto :goto_3e

    .line 48
    :cond_25
    iget-object v0, p2, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    instance-of v5, v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    if-eqz v5, :cond_33

    const-wide/32 v5, 0xf4240

    .line 49
    div-long/2addr v3, v5

    invoke-static {p2, p1, v3, v4}, Lmiuix/animation/internal/FolmeCore;->updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;ZJ)V

    goto :goto_3e

    .line 50
    :cond_33
    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isDurationMotionStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 51
    invoke-static {p2, p1, v3, v4}, Lmiuix/animation/internal/FolmeCore;->updateDurationMotionAnim(Lmiuix/animation/internal/AnimData;ZJ)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private static doArgbPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V
    .registers 21

    move-object/from16 v10, p0

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 250
    iget-wide v1, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 251
    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x0

    if-eqz v0, :cond_1f

    .line 252
    instance-of v3, v0, Lmiuix/animation/physics/SpringOperator;

    if-eqz v3, :cond_24

    iget-wide v4, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 253
    invoke-static {v4, v5}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_1f
    move-wide v11, v7

    const-wide/16 v4, 0x0

    goto/16 :goto_94

    :cond_24
    if-eqz v3, :cond_5b

    .line 258
    iget v0, v10, Lmiuix/animation/internal/AnimData;->frameCount:I

    if-ne v0, v12, :cond_44

    .line 259
    iget-wide v13, v10, Lmiuix/animation/internal/AnimData;->progress:D

    .line 260
    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-wide v1, v0, v15

    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v3, v0, v12

    aget-wide v5, v0, v11

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    invoke-static/range {v0 .. v9}, Lmiuix/animation/physics/SpringOperator;->updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V

    .line 265
    iput-wide v13, v10, Lmiuix/animation/internal/AnimData;->progress:D

    .line 267
    :cond_44
    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-wide v1, v0, v15

    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v3, v0, v12

    aget-wide v5, v0, v11

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    invoke-static/range {v0 .. v9}, Lmiuix/animation/physics/SpringOperator;->updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V

    goto :goto_98

    .line 273
    :cond_5b
    iget-object v3, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v3, v3, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v4, v3, v15

    aget-wide v16, v3, v12

    iget-wide v13, v10, Lmiuix/animation/internal/AnimData;->progress:D

    new-array v9, v11, [D

    aput-wide v7, v9, v15

    aput-wide v13, v9, v12

    move-wide v3, v4

    move-wide/from16 v5, v16

    move-wide v11, v7

    move-wide/from16 v7, p1

    invoke-interface/range {v0 .. v9}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v0

    .line 278
    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->progress:D

    iget-wide v4, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    add-double/2addr v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    mul-double v4, v4, p1

    add-double/2addr v2, v4

    iput-wide v2, v10, Lmiuix/animation/internal/AnimData;->progress:D

    cmpl-double v4, v2, v11

    if-lez v4, :cond_89

    .line 281
    iput-wide v11, v10, Lmiuix/animation/internal/AnimData;->progress:D

    goto :goto_91

    :cond_89
    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_91

    .line 283
    iput-wide v4, v10, Lmiuix/animation/internal/AnimData;->progress:D

    .line 285
    :cond_91
    :goto_91
    iput-wide v0, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    goto :goto_98

    .line 254
    :goto_94
    iput-wide v11, v10, Lmiuix/animation/internal/AnimData;->value:D

    .line 255
    iput-wide v4, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 288
    :goto_98
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-wide v1, v10, Lmiuix/animation/internal/AnimData;->progress:D

    double-to-float v1, v1

    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v2, v2

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 290
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogFrameEnable()Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 291
    :cond_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doArgbPhysics p=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_f3
    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    iput-wide v0, v10, Lmiuix/animation/internal/AnimData;->value:D

    return-void
.end method

.method private static doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V
    .registers 37

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 189
    iget-wide v7, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 190
    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 191
    instance-of v1, v0, Lmiuix/animation/physics/SpringOperator;

    if-eqz v1, :cond_20

    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 192
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_170

    .line 196
    :cond_20
    const-string v9, " data.velocity "

    const-string v5, " data.targetValue "

    const-string v6, " delta "

    const-string v3, " data.ease.parameters "

    const-string v4, "doPhysicsCalculation data.value isInfinite! startVelocity "

    const-string v2, "miuix_anim"

    if-eqz v1, :cond_d4

    .line 197
    iget v0, v10, Lmiuix/animation/internal/AnimData;->frameCount:I

    if-ne v0, v14, :cond_64

    .line 198
    iget-wide v0, v10, Lmiuix/animation/internal/AnimData;->value:D

    .line 199
    iget-object v13, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v13, v13, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-wide v17, v13, v15

    iget-object v13, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v13, v13, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v19, v13, v14

    const/16 v16, 0x2

    aget-wide v21, v13, v16

    const/4 v13, 0x0

    move-wide v14, v0

    move-object/from16 v0, p0

    move-object/from16 v23, v2

    move-wide/from16 v1, v17

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v3, v19

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-wide/from16 v5, v21

    move-wide v11, v7

    move-wide/from16 v7, p1

    move-object/from16 v28, v9

    move v9, v13

    invoke-static/range {v0 .. v9}, Lmiuix/animation/physics/SpringOperator;->updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V

    .line 204
    iput-wide v14, v10, Lmiuix/animation/internal/AnimData;->value:D

    goto :goto_71

    :cond_64
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-wide v11, v7

    move-object/from16 v28, v9

    .line 206
    :goto_71
    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget-object v0, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    invoke-static/range {v0 .. v9}, Lmiuix/animation/physics/SpringOperator;->updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V

    .line 211
    iget-wide v0, v10, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v11, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v9, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v7, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v23

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    :cond_d4
    move-object v13, v4

    move-wide v14, v11

    move-object v11, v3

    move-object v12, v6

    move-wide/from16 v32, v7

    move-object v8, v2

    move-object v7, v9

    move-object v9, v5

    move-wide/from16 v5, v32

    .line 220
    iget-object v1, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/16 v17, 0x1

    aget-wide v18, v1, v17

    move-wide/from16 v20, v3

    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    move-object/from16 v28, v7

    move-object/from16 v23, v8

    iget-wide v7, v10, Lmiuix/animation/internal/AnimData;->value:D

    const/4 v1, 0x2

    new-array v4, v1, [D

    const/4 v1, 0x0

    aput-wide v2, v4, v1

    aput-wide v7, v4, v17

    move-wide v1, v5

    move-object/from16 v16, v4

    move-wide/from16 v3, v20

    move-wide v7, v5

    move-wide/from16 v5, v18

    move-object/from16 v24, v11

    move-object/from16 v27, v12

    move-object/from16 v30, v23

    move-object/from16 v29, v28

    move-wide v11, v7

    move-wide/from16 v7, p1

    move-object/from16 v31, v9

    move-object/from16 v9, v16

    invoke-interface/range {v0 .. v9}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v0

    .line 225
    iget-wide v2, v10, Lmiuix/animation/internal/AnimData;->value:D

    iget-wide v4, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    add-double/2addr v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    mul-double/2addr v4, v14

    add-double/2addr v2, v4

    iput-wide v2, v10, Lmiuix/animation/internal/AnimData;->value:D

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " velocity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v3, v3, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_16d
    iput-wide v0, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    goto :goto_178

    .line 193
    :cond_170
    :goto_170
    iget-wide v0, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide v0, v10, Lmiuix/animation/internal/AnimData;->value:D

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, v10, Lmiuix/animation/internal/AnimData;->velocity:D

    :cond_178
    :goto_178
    return-void
.end method

.method private static evaluateValue(Lmiuix/animation/internal/AnimData;F)D
    .registers 6

    .line 82
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Lmiuix/animation/internal/FolmeCore;->getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;

    move-result-object v0

    .line 83
    instance-of v1, v0, Landroid/animation/IntEvaluator;

    if-eqz v1, :cond_23

    .line 84
    check-cast v0, Landroid/animation/IntEvaluator;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v1, v1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int p0, v2

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 84
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 89
    :cond_23
    check-cast v0, Landroid/animation/FloatEvaluator;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-float v1, v1

    .line 90
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-float p0, v2

    .line 91
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 89
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;
    .registers 1

    .line 97
    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p0, :cond_7

    .line 98
    sget-object p0, Lmiuix/animation/internal/FolmeCore;->sIntEvaluator:Landroid/animation/IntEvaluator;

    return-object p0

    .line 100
    :cond_7
    sget-object p0, Lmiuix/animation/internal/FolmeCore;->sFloatEvaluator:Landroid/animation/FloatEvaluator;

    return-object p0
.end method

.method public static getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;
    .registers 2

    const/4 v0, -0x4

    if-eq p0, v0, :cond_11

    const/4 v0, -0x3

    if-eq p0, v0, :cond_e

    const/4 v0, -0x2

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_b
    sget-object p0, Lmiuix/animation/internal/FolmeCore;->sSpring:Lmiuix/animation/physics/SpringOperator;

    return-object p0

    .line 326
    :cond_e
    sget-object p0, Lmiuix/animation/internal/FolmeCore;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    return-object p0

    .line 328
    :cond_11
    sget-object p0, Lmiuix/animation/internal/FolmeCore;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    return-object p0
.end method

.method public static getVelocityThreshold()F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-static {}, Lmiuix/animation/FolmeFactory;->getEngine()Lmiuix/animation/internal/FolmeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/internal/FolmeEngine;->getObjPool()Lmiuix/animation/utils/ObjectPool;

    move-result-object v0

    sget-object v1, Lmiuix/animation/internal/FolmeCore;->mCheckerLocal:Ljava/lang/ThreadLocal;

    const-class v2, Lmiuix/animation/physics/EquilibriumChecker;

    invoke-static {v0, v1, v2}, Lmiuix/animation/utils/CommonUtils;->getLocal(Lmiuix/animation/utils/ObjectPool;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/physics/EquilibriumChecker;

    if-eqz v0, :cond_19

    .line 338
    invoke-virtual {v0}, Lmiuix/animation/physics/EquilibriumChecker;->getVelocityThreshold()F

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method static isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z
    .registers 15

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 308
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/physics/EquilibriumChecker;->isAtEquilibrium(IDD)Z

    move-result p0

    xor-int/lit8 p2, p0, 0x1

    if-nez p0, :cond_3e

    const-wide p3, 0x2540be400L

    cmp-long p0, p7, p3

    if-lez p0, :cond_3e

    .line 311
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3e

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "animation for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " stopped for running time too long, totalTime_nanos = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    return p2
.end method

.method private static isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z
    .registers 2

    .line 344
    iget-object p0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static regulateProgress(F)F
    .registers 3

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_d

    return v0

    :cond_d
    return p0
.end method

.method private static setFinishValue(Lmiuix/animation/internal/AnimData;)V
    .registers 3

    .line 181
    invoke-static {p0}, Lmiuix/animation/internal/FolmeCore;->isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 184
    :cond_7
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    return-void
.end method

.method private static updateDurationMotionAnim(Lmiuix/animation/internal/AnimData;ZJ)V
    .registers 14

    .line 134
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    check-cast v0, Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;

    long-to-double v1, p2

    .line 137
    iget-object v3, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    .line 138
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->getDurationMotion(Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;)Lmiuix/animation/motion/Motion;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v1, v4

    if-lez v4, :cond_30

    .line 140
    invoke-interface {v3}, Lmiuix/animation/motion/Motion;->stopPosition()D

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 141
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 142
    invoke-interface {v3}, Lmiuix/animation/motion/Motion;->stopSpeed()D

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    const/4 p1, 0x3

    .line 143
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    goto :goto_6d

    .line 145
    :cond_30
    invoke-interface {v3}, Lmiuix/animation/motion/Motion;->solve()Lmiuix/animation/function/Differentiable;

    move-result-object v3

    .line 146
    invoke-interface {v3, v1, v2}, Lmiuix/animation/function/Differentiable;->apply(D)D

    move-result-wide v4

    iput-wide v4, p0, Lmiuix/animation/internal/AnimData;->progress:D

    if-eqz p1, :cond_5a

    .line 148
    sget-object p1, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    double-to-float v4, v4

    iget-wide v5, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v5, v5

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lmiuix/animation/internal/AnimData;->value:D

    goto :goto_63

    .line 152
    :cond_5a
    iget-wide v6, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iget-wide v8, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    sub-double/2addr v8, v6

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 154
    :goto_63
    invoke-interface {v3}, Lmiuix/animation/function/Differentiable;->derivative()Lmiuix/animation/function/Function;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lmiuix/animation/function/Function;->apply(D)D

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 156
    :goto_6d
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDurationMotionAnim data.value isInfinite!  data.ease "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " totalTimeNanos "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " data.progress "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuix_anim"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return-void
.end method

.method private static updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;ZJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    check-cast v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 58
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 59
    iget-wide v2, v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    cmp-long v4, p2, v2

    if-gez v4, :cond_19

    long-to-float v4, p2

    long-to-float v2, v2

    div-float/2addr v4, v2

    .line 60
    invoke-interface {v1, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    goto :goto_21

    :cond_19
    const/4 v2, 0x3

    .line 62
    invoke-virtual {p0, v2}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 63
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    :goto_21
    if-eqz p1, :cond_43

    .line 66
    sget-object p1, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    double-to-float v2, v2

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v3, v3

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    goto :goto_4c

    .line 70
    :cond_43
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    double-to-float p1, v2

    invoke-static {p0, p1}, Lmiuix/animation/internal/FolmeCore;->evaluateValue(Lmiuix/animation/internal/AnimData;F)D

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 72
    :goto_4c
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInterpolatorAnim data.value isInfinite!  data.ease "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " totalTime_ms "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " interpolator "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " data.progress "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuix_anim"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return-void
.end method

.method private static updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;ZJDI)V
    .registers 24

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    .line 108
    invoke-static {}, Lmiuix/animation/FolmeFactory;->getEngine()Lmiuix/animation/internal/FolmeEngine;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/animation/internal/FolmeEngine;->getObjPool()Lmiuix/animation/utils/ObjectPool;

    move-result-object v3

    sget-object v4, Lmiuix/animation/internal/FolmeCore;->mCheckerLocal:Ljava/lang/ThreadLocal;

    const-class v5, Lmiuix/animation/physics/EquilibriumChecker;

    .line 107
    invoke-static {v3, v4, v5}, Lmiuix/animation/utils/CommonUtils;->getLocal(Lmiuix/animation/utils/ObjectPool;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/physics/EquilibriumChecker;

    .line 110
    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Lmiuix/animation/property/FloatProperty;->getMinVisibleChange()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_31

    .line 111
    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v5

    invoke-virtual {v4, v5}, Lmiuix/animation/property/FloatProperty;->setMinVisibleChange(F)V

    .line 113
    :cond_31
    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    iget-wide v5, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/physics/EquilibriumChecker;->init(Lmiuix/animation/property/FloatProperty;D)V

    const/4 v13, 0x0

    move/from16 v14, p7

    move v15, v13

    :goto_3c
    if-ge v15, v14, :cond_72

    if-eqz p2, :cond_44

    .line 116
    invoke-static {v0, v1, v2}, Lmiuix/animation/internal/FolmeCore;->doArgbPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V

    goto :goto_47

    .line 118
    :cond_44
    invoke-static {v0, v1, v2}, Lmiuix/animation/internal/FolmeCore;->doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V

    .line 121
    :goto_47
    iget-object v5, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v6, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget-wide v7, v0, Lmiuix/animation/internal/AnimData;->value:D

    iget-wide v9, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    move-object v4, v3

    move-wide/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lmiuix/animation/internal/FolmeCore;->isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z

    move-result v4

    if-nez v4, :cond_6f

    const/4 v1, 0x3

    .line 123
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 124
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 125
    const-string v1, "----- updatePhysicsAnim data.setOp(AnimTask.OP_END)"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_6b
    invoke-static/range {p1 .. p1}, Lmiuix/animation/internal/FolmeCore;->setFinishValue(Lmiuix/animation/internal/AnimData;)V

    goto :goto_72

    :cond_6f
    add-int/lit8 v15, v15, 0x1

    goto :goto_3c

    :cond_72
    :goto_72
    return-void
.end method

.method private static updatePhysicsMotionAnim(Lmiuix/animation/internal/AnimData;J)V
    .registers 9

    .line 165
    iget-object p1, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    check-cast p1, Lmiuix/animation/utils/EaseManager$PhysicsMotionEaseStyle;

    .line 166
    iget-object p1, p1, Lmiuix/animation/utils/EaseManager$PhysicsMotionEaseStyle;->motion:Lmiuix/animation/motion/Motion;

    .line 167
    invoke-interface {p1}, Lmiuix/animation/motion/Motion;->finishTime()D

    move-result-wide v0

    .line 168
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->duration:D

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p2

    if-eqz p2, :cond_30

    cmpl-double p2, v2, v0

    if-ltz p2, :cond_30

    .line 170
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    sub-double/2addr v0, v2

    invoke-interface {p1}, Lmiuix/animation/motion/Motion;->stopPosition()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 171
    invoke-interface {p1}, Lmiuix/animation/motion/Motion;->stopSpeed()D

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    const/4 p1, 0x3

    .line 172
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    goto :goto_4d

    .line 174
    :cond_30
    invoke-interface {p1}, Lmiuix/animation/motion/Motion;->solve()Lmiuix/animation/function/Differentiable;

    move-result-object p1

    .line 175
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    iget-wide v4, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    sub-double/2addr v0, v4

    invoke-interface {p1, v2, v3}, Lmiuix/animation/function/Differentiable;->apply(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 176
    invoke-interface {p1}, Lmiuix/animation/function/Differentiable;->derivative()Lmiuix/animation/function/Function;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/function/Function;->apply(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    :goto_4d
    return-void
.end method
