.class public Lmiuix/animation/internal/PredictTask;
.super Ljava/lang/Object;
.source "PredictTask.java"


# static fields
.field static final sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lmiuix/animation/internal/PredictTask$1;

    invoke-direct {v0}, Lmiuix/animation/internal/PredictTask$1;-><init>()V

    sput-object v0, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J
    .registers 21

    .line 42
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 43
    sget-object v1, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)Z

    .line 44
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning!! predictDuration failed! info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " trace:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 46
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_44
    const-wide/32 v11, 0xfe502a

    long-to-double v1, v11

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double v13, v1, v3

    move-wide v8, v11

    .line 53
    :goto_50
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/AnimTask;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-wide v3, v8

    move-wide v5, v11

    move-wide v15, v8

    move-wide v8, v13

    .line 54
    invoke-static/range {v2 .. v10}, Lmiuix/animation/internal/AnimTaskStackRunner;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJIDZ)V

    move-wide v8, v15

    goto :goto_56

    :cond_6d
    move-wide v15, v8

    .line 56
    invoke-virtual {v0}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7c

    move-wide v1, v15

    add-long v8, v1, v11

    goto :goto_50

    :cond_7c
    move-wide v1, v15

    .line 63
    sget-object v0, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    long-to-double v0, v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static predictNextValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p3

    .line 69
    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v4

    .line 70
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    invoke-static {v5, v4}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    .line 71
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v5

    .line 72
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v16

    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, v6}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    .line 78
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiuix/animation/internal/TransitionInfo;

    .line 80
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 81
    iget-object v9, v8, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v8, v1}, Lmiuix/animation/internal/TransitionInfo;->containsPropertyInUpdateList(Lmiuix/animation/property/FloatProperty;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 83
    iget-object v6, v8, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-static {v6, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v6

    goto :goto_30

    :cond_51
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v6, :cond_cf

    .line 87
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object v7

    invoke-virtual {v7}, Lmiuix/animation/internal/FolmeEngine;->getAverageDeltaNanos()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    div-double v13, v7, v9

    .line 88
    iget v7, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v7}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v7

    if-eqz v7, :cond_aa

    iget-object v7, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    if-eqz v7, :cond_aa

    .line 89
    iget v7, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v7}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v7

    .line 90
    iget-object v8, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v8, v8, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-static {v8, v9}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v8

    if-eqz v8, :cond_85

    return-wide v0

    .line 94
    :cond_85
    iget-object v0, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v9, v0, v3

    aget-wide v11, v0, v2

    iget-object v0, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    float-to-double v4, v5

    const/4 v6, 0x2

    new-array v15, v6, [D

    aput-wide v0, v15, v3

    aput-wide v4, v15, v2

    move-object v6, v7

    move-wide/from16 v7, v16

    move-wide v0, v13

    invoke-interface/range {v6 .. v15}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v2

    add-double v16, v16, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v2

    mul-double v16, v16, v0

    add-double v0, v4, v16

    goto :goto_cf

    :cond_aa
    move-wide v0, v13

    .line 100
    check-cast v4, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 102
    invoke-static {v4}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v3, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v5, v3, Lmiuix/animation/internal/AnimInfo;->startTime:J

    sub-long/2addr v7, v5

    double-to-long v0, v0

    add-long/2addr v7, v0

    if-eqz v2, :cond_cd

    .line 104
    iget-wide v0, v4, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    cmp-long v4, v7, v0

    if-gez v4, :cond_cd

    long-to-float v3, v7

    long-to-float v0, v0

    div-float/2addr v3, v0

    .line 105
    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    float-to-double v0, v0

    goto :goto_cf

    .line 107
    :cond_cd
    iget-wide v0, v3, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    :cond_cf
    :goto_cf
    return-wide v0
.end method

.method public static predictNextVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p3

    .line 117
    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v4

    .line 118
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    invoke-static {v5, v4}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v5

    .line 120
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v7

    .line 121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, v6}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    .line 126
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiuix/animation/internal/TransitionInfo;

    .line 128
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 129
    iget-object v11, v10, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-virtual {v10, v1}, Lmiuix/animation/internal/TransitionInfo;->containsPropertyInUpdateList(Lmiuix/animation/property/FloatProperty;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 131
    invoke-static {v9, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v6

    goto :goto_30

    :cond_4f
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v6, :cond_9e

    .line 135
    iget v9, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v9}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v9

    if-eqz v9, :cond_9e

    iget-object v9, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    if-eqz v9, :cond_9e

    .line 136
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object v9

    invoke-virtual {v9}, Lmiuix/animation/internal/FolmeEngine;->getAverageDeltaNanos()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x41cdcd6500000000L    # 1.0E9

    div-double v13, v9, v11

    .line 137
    iget v9, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v9}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v9

    .line 138
    iget-object v10, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v10, v10, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-static {v10, v11}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v10

    if-eqz v10, :cond_83

    return-wide v0

    .line 141
    :cond_83
    iget-object v0, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    aget-wide v10, v0, v3

    aget-wide v0, v0, v2

    iget-object v4, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v4, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    float-to-double v4, v5

    const/4 v15, 0x2

    new-array v15, v15, [D

    const/4 v12, 0x0

    aput-wide v2, v15, v12

    const/4 v2, 0x1

    aput-wide v4, v15, v2

    move-object v6, v9

    move-wide v9, v10

    move-wide v11, v0

    invoke-interface/range {v6 .. v15}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v0

    :cond_9e
    return-wide v0
.end method
