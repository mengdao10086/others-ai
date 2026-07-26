.class Lmiuix/animation/internal/AnimTaskStackRunner;
.super Ljava/lang/Object;
.source "AnimTaskStackRunner.java"


# static fields
.field static INIT_RESULT_CODE_FAILED:I = 0x1

.field static INIT_RESULT_CODE_SUCCESS:I = 0x0

.field static INIT_RESULT_CODE_VALUE_INVALID:I = 0x2

.field private static final SECTION_TAG:Ljava/lang/String; = "Folme.TaskRunner_doFrame"

.field static final animDataLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/internal/AnimData;",
            ">;"
        }
    .end annotation
.end field

.field static final tempTaskUpdateList:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 31
    new-instance v0, Lmiuix/animation/internal/AnimTaskStackRunner$1;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimTaskStackRunner$1;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTaskStackRunner;->tempTaskUpdateList:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJIDZ)V
    .registers 39

    move-object/from16 v0, p0

    .line 44
    iget-object v1, v0, Lmiuix/animation/internal/AnimTask;->scheduler:Lmiuix/animation/internal/AnimScheduler;

    if-eqz v1, :cond_17

    .line 47
    iget-object v2, v1, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    .line 48
    invoke-virtual {v2}, Lmiuix/animation/internal/FolmeEngine;->getObjPool()Lmiuix/animation/utils/ObjectPool;

    move-result-object v2

    sget-object v3, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    const-class v4, Lmiuix/animation/internal/AnimData;

    .line 47
    invoke-static {v2, v3, v4}, Lmiuix/animation/utils/CommonUtils;->getLocal(Lmiuix/animation/utils/ObjectPool;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/AnimData;

    goto :goto_2a

    .line 51
    :cond_17
    sget-object v2, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/AnimData;

    if-nez v3, :cond_29

    .line 53
    new-instance v3, Lmiuix/animation/internal/AnimData;

    invoke-direct {v3}, Lmiuix/animation/internal/AnimData;-><init>()V

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_29
    move-object v2, v3

    .line 57
    :goto_2a
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogFrameEnable()Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    :goto_3a
    iput-boolean v3, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v3, :cond_5a

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folme.TaskRunner_doFrame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    :cond_5a
    sget-object v3, Lmiuix/animation/internal/AnimTaskStackRunner;->tempTaskUpdateList:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    const-string v13, "miuix_anim"

    if-eqz v4, :cond_6d

    .line 64
    const-string v4, "\u2193---- TaskRunner.run start"

    invoke-static {v13, v4}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    if-eqz v0, :cond_3d0

    .line 71
    invoke-virtual {v0}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lmiuix/animation/internal/AnimTask;

    add-int/lit8 v16, v4, 0x1

    .line 74
    :try_start_79
    iget-object v12, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 75
    iget-object v9, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 76
    iget-object v10, v9, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 77
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->prepareOnFrameStart()V

    .line 78
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isNeedSetup()Z

    move-result v17

    .line 79
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v4

    .line 80
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 81
    iget-object v5, v9, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget v5, v0, Lmiuix/animation/internal/AnimTask;->startPos:I

    add-int v8, v5, v4

    move v7, v5

    const/16 v18, 0x0

    :goto_99
    if-ge v7, v8, :cond_399

    .line 85
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    if-nez v6, :cond_b9

    move-object/from16 v28, v1

    move-object/from16 v21, v3

    move/from16 v25, v7

    move/from16 v23, v8

    move-object v4, v9

    move-object v15, v10

    move-object/from16 v27, v11

    move-object v1, v12

    move-object v5, v13

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v3, v0

    goto/16 :goto_381

    .line 89
    :cond_b9
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_bb} :catch_392

    const-string v5, ", "

    const-string v15, " update.op="

    const-string v14, ", p=\'%s\'"

    if-eqz v4, :cond_119

    .line 90
    :try_start_c3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c8} :catch_115

    move-object/from16 v21, v3

    :try_start_ca
    const-string v3, "------ data-start: info.id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startImmediately="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-boolean v3, v3, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 92
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v13, v3}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11b

    :catch_109
    move-exception v0

    :goto_10a
    move-object/from16 v28, v1

    :goto_10c
    move-object/from16 v27, v11

    move-object v5, v13

    :goto_10f
    const/16 v19, 0x0

    const/16 v20, 0x1

    goto/16 :goto_3a4

    :catch_115
    move-exception v0

    move-object/from16 v21, v3

    goto :goto_10a

    :cond_119
    move-object/from16 v21, v3

    .line 95
    :goto_11b
    iget-object v3, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v4, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v3

    .line 97
    iget-object v4, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v6, v4, v3}, Lmiuix/animation/internal/AnimData;->from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_12c} :catch_109

    if-eqz v17, :cond_178

    .line 99
    :try_start_12e
    iget-object v4, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_130} :catch_170

    move-object/from16 v22, v13

    :try_start_132
    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_134} :catch_168

    move-object/from16 v23, v4

    move-object v4, v12

    move-object/from16 p0, v0

    move-object v0, v5

    move-object v5, v2

    move-object/from16 v24, v0

    move-object v0, v6

    move-object v6, v10

    move/from16 v25, v7

    move-object/from16 v7, v23

    move/from16 v23, v8

    move-object v8, v3

    move-object v3, v9

    move-object/from16 v26, v15

    move-object v15, v10

    move-wide/from16 v9, p1

    move-object/from16 v28, v1

    move-object/from16 v27, v11

    move-object v1, v12

    move-wide/from16 v11, p3

    move-object/from16 v29, v22

    :try_start_155
    invoke-static/range {v4 .. v13}, Lmiuix/animation/internal/AnimTaskStackRunner;->setup(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJLjava/lang/Object;)V

    .line 101
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v4, :cond_15f

    .line 102
    invoke-static {v2, v15, v3, v1}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetupLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimStats;)V

    :cond_15f
    move-object v13, v3

    :cond_160
    move-object/from16 v12, v29

    goto/16 :goto_1dc

    :catch_164
    move-exception v0

    :goto_165
    move-object/from16 v5, v29

    goto :goto_10f

    :catch_168
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v11

    move-object/from16 v29, v22

    goto :goto_165

    :catch_170
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v11

    move-object/from16 v29, v13

    goto :goto_165

    :cond_178
    move-object/from16 p0, v0

    move-object/from16 v28, v1

    move-object/from16 v24, v5

    move-object v0, v6

    move/from16 v25, v7

    move/from16 v23, v8

    move-object/from16 v27, v11

    move-object v1, v12

    move-object/from16 v29, v13

    move-object/from16 v26, v15

    move-object v13, v9

    move-object v15, v10

    .line 104
    iget-byte v4, v2, Lmiuix/animation/internal/AnimData;->op:B
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_18e} :catch_164

    const/4 v5, 0x6

    if-ne v4, v5, :cond_160

    .line 105
    :try_start_191
    iget-object v7, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-object v8, v3

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lmiuix/animation/internal/AnimTaskStackRunner;->reuse(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJ)V

    .line 107
    iget-boolean v3, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v3, :cond_160

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++ data.reuse info.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 109
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1ce} :catch_1d8

    move-object/from16 v12, v29

    .line 108
    :try_start_1d0
    invoke-static {v12, v3}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dc

    :catch_1d4
    move-exception v0

    :goto_1d5
    move-object v5, v12

    goto/16 :goto_10f

    :catch_1d8
    move-exception v0

    move-object/from16 v12, v29

    goto :goto_1d5

    .line 112
    :goto_1dc
    iget-byte v3, v2, Lmiuix/animation/internal/AnimData;->op:B
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1de} :catch_1d4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_241

    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object v11, v13

    .line 113
    :try_start_1e9
    invoke-static/range {v4 .. v11}, Lmiuix/animation/internal/AnimTaskStackRunner;->start(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJLmiuix/animation/internal/TransitionInfo;)V

    .line 115
    iget-object v3, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget v4, v2, Lmiuix/animation/internal/AnimData;->tintMode:I

    iput v4, v3, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 116
    iget-object v3, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1f6} :catch_238

    if-ne v3, v5, :cond_1fb

    .line 117
    :try_start_1f8
    invoke-static {v15, v4}, Lmiuix/animation/styles/ForegroundColorStyle;->start(Lmiuix/animation/IAnimTarget;I)V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fb} :catch_1d4

    .line 120
    :cond_1fb
    :try_start_1fb
    iget-byte v3, v2, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_23e

    .line 121
    iget-boolean v3, v13, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_202} :catch_238

    if-nez v3, :cond_210

    if-eqz v28, :cond_210

    move-object/from16 v3, v28

    .line 125
    :try_start_208
    invoke-virtual {v3, v13}, Lmiuix/animation/internal/AnimScheduler;->executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20b} :catch_20c

    goto :goto_212

    :catch_20c
    move-exception v0

    move-object/from16 v28, v3

    goto :goto_1d5

    :cond_210
    move-object/from16 v3, v28

    .line 128
    :goto_212
    :try_start_212
    iget v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v4, :cond_235

    iget-object v4, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v5, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 129
    iget v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_222} :catch_231

    const/16 v20, 0x1

    add-int/lit8 v4, v4, -0x1

    :try_start_226
    iput v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I

    goto :goto_245

    :catch_229
    move-exception v0

    :goto_22a
    move-object/from16 v28, v3

    :goto_22c
    move-object v5, v12

    const/16 v19, 0x0

    goto/16 :goto_3a4

    :catch_231
    move-exception v0

    const/16 v20, 0x1

    goto :goto_22a

    :cond_235
    :goto_235
    const/16 v20, 0x1

    goto :goto_245

    :catch_238
    move-exception v0

    move-object/from16 v3, v28

    const/16 v20, 0x1

    goto :goto_22c

    :cond_23e
    move-object/from16 v3, v28

    goto :goto_235

    :cond_241
    move/from16 v20, v4

    move-object/from16 v3, v28

    .line 133
    :goto_245
    iget-byte v4, v2, Lmiuix/animation/internal/AnimData;->op:B
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_247} :catch_229

    const/4 v5, 0x2

    if-ne v4, v5, :cond_30d

    .line 137
    :try_start_24a
    iget-boolean v4, v13, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_24c} :catch_305

    if-nez v4, :cond_253

    if-eqz v3, :cond_253

    .line 141
    :try_start_250
    invoke-virtual {v3, v13}, Lmiuix/animation/internal/AnimScheduler;->executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_253} :catch_229

    .line 144
    :cond_253
    :try_start_253
    iget-wide v4, v2, Lmiuix/animation/internal/AnimData;->velocity:D
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_255} :catch_305

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_26d

    :try_start_25b
    iget-object v4, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-boolean v4, v4, Lmiuix/animation/base/AnimConfig;->startImmediately:Z
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_25f} :catch_26f

    if-eqz v4, :cond_26d

    const/4 v11, 0x0

    .line 145
    :try_start_262
    iput-boolean v11, v2, Lmiuix/animation/internal/AnimData;->justStart:Z
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_264} :catch_265

    goto :goto_272

    :catch_265
    move-exception v0

    :goto_266
    move-object/from16 v28, v3

    move/from16 v19, v11

    move-object v5, v12

    goto/16 :goto_3a4

    :cond_26d
    const/4 v11, 0x0

    goto :goto_272

    :catch_26f
    move-exception v0

    const/4 v11, 0x0

    goto :goto_266

    .line 147
    :goto_272
    :try_start_272
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_274} :catch_2fd

    if-eqz v4, :cond_28c

    .line 148
    :try_start_276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++ data.update start data.justStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lmiuix/animation/internal/AnimData;->justStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_28c} :catch_265

    :cond_28c
    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v28, v3

    move/from16 v19, v11

    move-object v3, v12

    move-wide/from16 v11, p6

    move-object/from16 v22, v13

    move/from16 v13, p5

    move-object/from16 v29, v3

    move-object v3, v14

    move-object/from16 v14, v22

    .line 153
    :try_start_2a3
    invoke-static/range {v4 .. v14}, Lmiuix/animation/internal/AnimTaskStackRunner;->update(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJDILmiuix/animation/internal/TransitionInfo;)V

    .line 155
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->justEnd:Z

    if-eqz v4, :cond_2cc

    move-object/from16 v4, v22

    .line 156
    iget-object v5, v4, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v6, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result v5

    if-eqz v5, :cond_2c2

    .line 157
    iget v5, v1, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    goto :goto_2c2

    :catch_2bd
    move-exception v0

    :goto_2be
    move-object/from16 v5, v29

    goto/16 :goto_3a4

    .line 159
    :cond_2c2
    :goto_2c2
    iget-object v5, v2, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v6, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne v5, v6, :cond_2ce

    .line 160
    invoke-static {v15, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_2ce

    :cond_2cc
    move-object/from16 v4, v22

    .line 163
    :cond_2ce
    :goto_2ce
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v5

    if-eqz v5, :cond_315

    .line 164
    const-string v5, "folme_design"

    const-string v6, "update anim:{name:\"%s\", %s:%.10f, %s }"

    iget-object v7, v4, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 165
    invoke-virtual {v7}, Lmiuix/animation/controller/AnimState;->getAlias()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 166
    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v2, Lmiuix/animation/internal/AnimData;->value:D

    .line 167
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v2, Lmiuix/animation/internal/AnimData;->value:D

    double-to-int v10, v10

    .line 168
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 164
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_315

    :catch_2fd
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v19, v11

    move-object/from16 v29, v12

    goto :goto_2be

    :catch_305
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v29, v12

    const/16 v19, 0x0

    goto :goto_2be

    :cond_30d
    move-object/from16 v28, v3

    move-object/from16 v29, v12

    move-object v4, v13

    move-object v3, v14

    const/16 v19, 0x0

    .line 174
    :cond_315
    :goto_315
    invoke-virtual {v2, v0}, Lmiuix/animation/internal/AnimData;->to(Lmiuix/animation/listener/UpdateInfo;)V

    .line 175
    iget-boolean v5, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v5, :cond_35c

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------ data-end: info.id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 177
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_354} :catch_2bd

    move-object/from16 v5, v29

    .line 176
    :try_start_356
    invoke-static {v5, v3}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35e

    :catch_35a
    move-exception v0

    goto :goto_3a4

    :cond_35c
    move-object/from16 v5, v29

    :goto_35e
    if-eqz p8, :cond_37f

    .line 180
    iget-wide v6, v2, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v6, v7}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 182
    instance-of v3, v15, Lmiuix/animation/ValueTarget;

    if-eqz v3, :cond_375

    move-object/from16 v3, p0

    iget-boolean v6, v3, Lmiuix/animation/internal/AnimTask;->runInMainThread:Z

    if-nez v6, :cond_377

    move/from16 v14, v20

    goto :goto_379

    :cond_375
    move-object/from16 v3, p0

    :cond_377
    move/from16 v14, v18

    .line 187
    :goto_379
    invoke-virtual {v0, v15, v14}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;Z)V
    :try_end_37c
    .catch Ljava/lang/Exception; {:try_start_356 .. :try_end_37c} :catch_35a

    move/from16 v18, v14

    goto :goto_381

    :cond_37f
    move-object/from16 v3, p0

    :goto_381
    add-int/lit8 v7, v25, 0x1

    move-object v12, v1

    move-object v0, v3

    move-object v9, v4

    move-object v13, v5

    move-object v10, v15

    move-object/from16 v3, v21

    move/from16 v8, v23

    move-object/from16 v11, v27

    move-object/from16 v1, v28

    goto/16 :goto_99

    :catch_392
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v21, v3

    goto/16 :goto_10c

    :cond_399
    move-object/from16 v28, v1

    move-object/from16 v21, v3

    move-object v5, v13

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v3, v11

    goto :goto_3c6

    .line 191
    :goto_3a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- AnimTaskStackRunner.doAnimationFrame task:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v5, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c6
    move-object v0, v3

    move-object v13, v5

    move/from16 v4, v16

    move-object/from16 v3, v21

    move-object/from16 v1, v28

    goto/16 :goto_6e

    :cond_3d0
    move-object v5, v13

    .line 196
    iget-boolean v0, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_3ec

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2191---- TaskRunner.run finish taskCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3ec
    return-void
.end method

.method private static finishProperty(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;)V
    .registers 3

    const/4 v0, 0x5

    .line 405
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 406
    iget p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    return-void
.end method

.method private static initTask(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJ)I
    .registers 7

    .line 370
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v0, v0, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-eqz v0, :cond_17

    .line 371
    invoke-static {p0, p1}, Lmiuix/animation/styles/ForegroundColorStyle;->isValid(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 372
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 373
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 374
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    return p0

    .line 377
    :cond_17
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setValues(Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 378
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    return p0

    .line 380
    :cond_20
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->isValueInvalid(Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 381
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 382
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 383
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_VALUE_INVALID:I

    return p0

    :cond_30
    sub-long/2addr p2, p4

    .line 385
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    const/4 p0, 0x0

    .line 386
    iput p0, p1, Lmiuix/animation/internal/AnimData;->frameCount:I

    const/4 p0, 0x2

    .line 387
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 388
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_SUCCESS:I

    return p0
.end method

.method private static isValueInvalid(Lmiuix/animation/internal/AnimData;)Z
    .registers 5

    .line 410
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_19

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 411
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4030aaaaa0000000L    # 16.66666603088379

    cmpg-double p0, v0, v2

    if-gez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private static printDelayTaskLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;J)V
    .registers 12

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 417
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "p=\'%s\'"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delay="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "totalT_ms="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p1, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 415
    const-string p1, "miuix_anim"

    const-string p2, "++++++ data.start:check delay"

    invoke-static {p1, p2, p0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetValueFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V
    .registers 10

    .line 426
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 428
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "p=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start-v="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "target-v= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 426
    const-string p1, "miuix_anim"

    const-string v0, "++++++ data.start:setValueFailed, break"

    invoke-static {p1, v0, p0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetupInUpdateLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V
    .registers 15

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++ data.setup when op is update and no delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 490
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "p=\'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ease="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "progress="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "velocity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delay="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "op="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 488
    const-string p1, "miuix_anim"

    invoke-static {p1, v0, p0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetupLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimStats;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++ data.setup: info.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 472
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "p=\'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start-v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target-v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animStats="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ease="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "op="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v5 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 469
    const-string v1, "miuix_anim"

    invoke-static {v1, v2, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printStartFinishLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V
    .registers 16

    .line 452
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 454
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "p=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start-v="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "target-v="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ease="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "velocity="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "target="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 452
    const-string p1, "miuix_anim"

    const-string p2, "++++++ data.start:finish"

    invoke-static {p1, p2, p0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printUpdateAnimLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;D)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------ data.update: info.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 511
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "p=\'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 512
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "op="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lmiuix/animation/internal/AnimData;->frameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start-v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target-v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value_hex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->value:D

    double-to-int v3, v3

    .line 518
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delta_s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->frameInterval:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "justEnd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init-t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start-t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->startTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v5 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    .line 508
    const-string v1, "miuix_anim"

    invoke-static {v1, v2, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printValueInvalidFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V
    .registers 11

    .line 438
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 441
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "p=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start-v="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "target-v="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "velocity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 438
    const-string p1, "miuix_anim"

    const-string v0, "++++++ data.start:valueInvalidFailedLog, start-v equal target-v, so break"

    invoke-static {p1, v0, p0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static reuse(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJ)V
    .registers 12

    .line 247
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 248
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 249
    iget-object v2, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {p2, v2, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_12
    sub-long/2addr p5, p7

    .line 251
    iput-wide p5, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    const/4 p2, 0x1

    .line 252
    invoke-virtual {p1, p2}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 253
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    if-lez p5, :cond_20

    sub-int/2addr p5, p2

    .line 254
    iput p5, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 256
    :cond_20
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-lez p5, :cond_31

    iget-object p5, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p3, p5}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p5

    if-eqz p5, :cond_31

    .line 257
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    sub-int/2addr p5, p2

    iput p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    .line 259
    :cond_31
    invoke-static {p3, p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result p0

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_3f

    float-to-double p2, p0

    .line 261
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    :cond_3f
    return-void
.end method

.method private static setStartData(Lmiuix/animation/internal/AnimData;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 356
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 357
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimData;->reset()V

    return-void
.end method

.method private static setValues(Lmiuix/animation/internal/AnimData;)Z
    .registers 5

    .line 392
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 393
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 394
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_15
    return v1

    .line 397
    :cond_16
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 398
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    return v1

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static setup(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJLjava/lang/Object;)V
    .registers 24

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 208
    iget-wide v3, v1, Lmiuix/animation/internal/AnimData;->startValue:D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_21

    const-wide v5, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_21

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v5, v3, v5

    if-nez v5, :cond_29

    .line 211
    :cond_21
    iget-object v5, v1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v2, v5, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v3

    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_29
    sub-long v3, p5, p7

    .line 213
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 215
    iget v5, v0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    .line 216
    iget-byte v5, v1, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v7, 0x2

    const-string v8, "miuix_anim"

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-ne v5, v7, :cond_6c

    iget-wide v10, v1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_46

    goto :goto_6c

    .line 227
    :cond_46
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 228
    iput-wide v12, v1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 229
    invoke-static/range {p3 .. p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result v3

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_55

    float-to-double v3, v3

    .line 231
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 234
    :cond_55
    iget v3, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    sub-int/2addr v3, v6

    iput v3, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    .line 235
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setStartData(Lmiuix/animation/internal/AnimData;)V

    .line 236
    iget-boolean v0, v1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_83

    .line 237
    const-string v0, "++++++ data.setup path1"

    invoke-static {v8, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p9

    .line 238
    invoke-static {p1, v2, v0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetupInUpdateLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V

    goto :goto_83

    .line 217
    :cond_6c
    :goto_6c
    invoke-virtual {p1, v6}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 218
    invoke-static/range {p3 .. p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result v0

    cmpl-float v2, v0, v9

    if-eqz v2, :cond_7a

    float-to-double v2, v0

    .line 220
    iput-wide v2, v1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 222
    :cond_7a
    iget-boolean v0, v1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_83

    .line 223
    const-string v0, "++++++ data.setup path0"

    invoke-static {v8, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method static start(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJLmiuix/animation/internal/TransitionInfo;)V
    .registers 16

    .line 270
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_64

    .line 271
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_11

    .line 272
    iget-object v0, p7, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {p1, v0, p3, p4}, Lmiuix/animation/internal/AnimTaskStackRunner;->printDelayTaskLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;J)V

    .line 274
    :cond_11
    iget-wide v0, p7, Lmiuix/animation/internal/TransitionInfo;->currentTime:J

    iget-wide v2, p7, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v4, p1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    return-void

    .line 277
    :cond_21
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {p2, v0, v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_32

    .line 280
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 282
    :cond_32
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_64

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p7, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 285
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "p=\'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 283
    const-string v1, "miuix_anim"

    const-string v2, "+++++ data.delay-start: time\'s up"

    invoke-static {v1, v2, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_64
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    move-object v0, p2

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 293
    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimTaskStackRunner;->initTask(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJ)I

    move-result p3

    .line 294
    sget p4, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_SUCCESS:I

    if-eq p3, p4, :cond_91

    .line 296
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->finishProperty(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;)V

    .line 297
    iget-boolean p0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz p0, :cond_90

    .line 298
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    if-ne p3, p0, :cond_87

    .line 299
    iget-object p0, p7, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {p1, p0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetValueFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V

    goto :goto_90

    .line 300
    :cond_87
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_VALUE_INVALID:I

    if-ne p3, p0, :cond_90

    .line 301
    iget-object p0, p7, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {p1, p0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printValueInvalidFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V

    :cond_90
    :goto_90
    return-void

    .line 306
    :cond_91
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setStartData(Lmiuix/animation/internal/AnimData;)V

    .line 307
    iget-boolean p0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz p0, :cond_9d

    .line 308
    iget-object p0, p7, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {p1, p2, p0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printStartFinishLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V

    :cond_9d
    return-void
.end method

.method private static update(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJDILmiuix/animation/internal/TransitionInfo;)V
    .registers 25

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p10

    .line 319
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v11, 0x1

    if-nez v1, :cond_13

    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    if-eqz v1, :cond_13

    move-wide v12, v3

    goto :goto_1a

    .line 322
    :cond_13
    iget v1, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    add-int/2addr v1, v11

    iput v1, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    move-wide/from16 v12, p7

    .line 324
    :goto_1a
    iget v1, v0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 325
    iput-wide v12, v9, Lmiuix/animation/internal/AnimData;->frameInterval:D

    .line 326
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->duration:D

    add-double/2addr v1, v12

    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->duration:D

    .line 327
    iget-object v1, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-eq v1, v2, :cond_98

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq v1, v2, :cond_98

    instance-of v1, v1, Lmiuix/animation/property/ColorProperty;

    if-eqz v1, :cond_35

    goto :goto_98

    :cond_35
    const/4 v2, 0x0

    move-object/from16 v1, p2

    move-object v3, p1

    move-wide/from16 v4, p3

    move-wide v6, v12

    move/from16 v8, p9

    .line 332
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/FolmeCore;->doAnimationFrame(Lmiuix/animation/IAnimTarget;ZLmiuix/animation/internal/AnimData;JDI)V

    .line 333
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v1, :cond_a4

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------ data.update doAnimationFrame: info.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 337
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "p=\'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "velocity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 334
    const-string v3, "miuix_anim"

    invoke-static {v3, v1, v2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4

    :cond_98
    :goto_98
    const/4 v2, 0x1

    move-object/from16 v1, p2

    move-object v3, p1

    move-wide/from16 v4, p3

    move-wide v6, v12

    move/from16 v8, p9

    .line 330
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/FolmeCore;->doAnimationFrame(Lmiuix/animation/IAnimTarget;ZLmiuix/animation/internal/AnimData;JDI)V

    .line 343
    :cond_a4
    :goto_a4
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    if-eqz v1, :cond_ab

    const/4 v1, 0x0

    .line 344
    iput-boolean v1, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    .line 346
    :cond_ab
    iget-byte v1, v9, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b7

    .line 347
    iput-boolean v11, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 348
    iget v1, v0, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 350
    :cond_b7
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_c0

    move-object/from16 v0, p2

    .line 351
    invoke-static {p1, v0, v10, v12, v13}, Lmiuix/animation/internal/AnimTaskStackRunner;->printUpdateAnimLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;D)V

    :cond_c0
    return-void
.end method
