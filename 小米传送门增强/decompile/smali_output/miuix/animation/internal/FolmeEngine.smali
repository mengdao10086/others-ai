.class public abstract Lmiuix/animation/internal/FolmeEngine;
.super Ljava/lang/Object;
.source "FolmeEngine.java"


# static fields
.field public static final MAX_DELTA:J = 0xfe502aL

.field protected static final MAX_RECORD:I = 0x5


# instance fields
.field protected volatile mAverageDeltaNanos:J

.field protected final mDeltaRecord:[J

.field private final mEngineListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/listener/EngineListener;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mIsRunning:Z

.field protected mLastFrameTimeNanos:J

.field protected final mObjPool:Lmiuix/animation/utils/ObjectPool;

.field private mPendingAddEngineListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/listener/EngineListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemoveEngineListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/listener/EngineListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRatio:F

.field protected mRecordCount:I

.field protected final mScheduler:Lmiuix/animation/internal/AnimScheduler;


# direct methods
.method public static synthetic $r8$lambda$HgF3rOZnQFLbjL0SRKETrz6D5dA(Lmiuix/animation/internal/FolmeEngine;Lmiuix/animation/listener/EngineListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/FolmeEngine;->lambda$removeEngineListener$1(Lmiuix/animation/listener/EngineListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W-iQH8kXm2wELRuHP-ZIZujFIx4(Lmiuix/animation/internal/FolmeEngine;Lmiuix/animation/listener/EngineListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/FolmeEngine;->lambda$addEngineListener$0(Lmiuix/animation/listener/EngineListener;)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xfe502a

    .line 28
    iput-wide v0, p0, Lmiuix/animation/internal/FolmeEngine;->mAverageDeltaNanos:J

    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [J

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mDeltaRecord:[J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lmiuix/animation/internal/FolmeEngine;->mRecordCount:I

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    .line 40
    new-instance v0, Lmiuix/animation/internal/AnimScheduler;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/AnimScheduler;-><init>(Lmiuix/animation/internal/FolmeEngine;)V

    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    .line 41
    new-instance v0, Lmiuix/animation/utils/ObjectPool;

    invoke-direct {v0, p0}, Lmiuix/animation/utils/ObjectPool;-><init>(Lmiuix/animation/internal/FolmeEngine;)V

    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mObjPool:Lmiuix/animation/utils/ObjectPool;

    return-void

    nop

    :array_2a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private average([J)J
    .registers 11

    .line 346
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_6
    if-ge v3, v0, :cond_14

    aget-wide v7, p1, v3

    add-long/2addr v5, v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_11

    add-int/lit8 v4, v4, 0x1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    if-lez v4, :cond_19

    int-to-long v0, v4

    .line 350
    div-long v1, v5, v0

    :cond_19
    return-wide v1
.end method

.method private calculateAverageDelta(J)J
    .registers 8

    .line 315
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mDeltaRecord:[J

    invoke-direct {p0, v0}, Lmiuix/animation/internal/FolmeEngine;->average([J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    move-wide p1, v0

    :cond_d
    cmp-long v0, p1, v2

    const-wide/32 v1, 0xfe502a

    if-eqz v0, :cond_18

    cmp-long v0, p1, v1

    if-lez v0, :cond_19

    :cond_18
    move-wide p1, v1

    :cond_19
    long-to-float p1, p1

    .line 320
    iget p2, p0, Lmiuix/animation/internal/FolmeEngine;->mRatio:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method

.method private synthetic lambda$addEngineListener$0(Lmiuix/animation/listener/EngineListener;)V
    .registers 3

    .line 288
    iget-boolean v0, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 289
    invoke-virtual {p1}, Lmiuix/animation/listener/EngineListener;->onBegin()V

    .line 291
    :cond_f
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeEngineListener$1(Lmiuix/animation/listener/EngineListener;)V
    .registers 3

    .line 297
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 298
    iget-boolean v0, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-eqz v0, :cond_1d

    .line 299
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    .line 302
    :cond_17
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 304
    :cond_1d
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public declared-synchronized addEngineListener(Lmiuix/animation/listener/EngineListener;)V
    .registers 4

    monitor-enter p0

    .line 287
    :try_start_1
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/FolmeEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/FolmeEngine$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/internal/FolmeEngine;Lmiuix/animation/listener/EngineListener;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 293
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public addToOneShot(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimScheduler;->addToOneShot(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method public cancel(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .registers 6

    .line 183
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doCancel with toState"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 188
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/internal/AnimManager;->getRunningTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 190
    iget-object p2, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v0, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    goto :goto_35

    .line 192
    :cond_28
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/internal/AnimManager;->getPrepareTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 194
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p1, p2}, Lmiuix/animation/internal/AnimManager;->cancelPrepareTransition(Lmiuix/animation/internal/TransitionInfo;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .registers 7

    .line 201
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 203
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doCancel with propertyNames"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 206
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .registers 7

    .line 211
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doCancel with properties"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 216
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public doAnimOnFrame(JJ)V
    .registers 7

    .line 161
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/EngineListener;

    .line 162
    invoke-virtual {v1, p1, p2, p3, p4}, Lmiuix/animation/listener/EngineListener;->onDoFrame(JJ)V

    goto :goto_6

    .line 164
    :cond_16
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->executeDoAnimOnFrame(JJ)V

    .line 165
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/EngineListener;

    .line 166
    invoke-virtual {v1, p1, p2, p3, p4}, Lmiuix/animation/listener/EngineListener;->onPostDoFrame(JJ)V

    goto :goto_21

    .line 168
    :cond_31
    iget-boolean p1, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-nez p1, :cond_6d

    .line 169
    iget-object p1, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/EngineListener;

    .line 170
    invoke-virtual {p2}, Lmiuix/animation/listener/EngineListener;->onComplete()V

    goto :goto_3b

    .line 172
    :cond_4b
    iget-object p1, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    if-eqz p1, :cond_6d

    .line 173
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/EngineListener;

    .line 174
    iget-object p3, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_53

    .line 176
    :cond_65
    iget-object p1, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    :cond_6d
    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 6

    .line 78
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/FolmeEngine;->updateRunningTime(J)J

    move-result-wide v0

    .line 79
    iget-boolean v2, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-eqz v2, :cond_c

    .line 80
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/internal/FolmeEngine;->doAnimOnFrame(JJ)V

    goto :goto_10

    :cond_c
    const-wide/16 p1, 0x0

    .line 82
    iput-wide p1, p0, Lmiuix/animation/internal/FolmeEngine;->mLastFrameTimeNanos:J

    .line 84
    :goto_10
    iget-boolean p1, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    return p1
.end method

.method public end()V
    .registers 1

    .line 69
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->endAnim()V

    return-void
.end method

.method public end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .registers 6

    .line 220
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 222
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doEnd with toState"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 225
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/internal/AnimManager;->getRunningTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 227
    iget-object p2, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v0, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    goto :goto_35

    .line 229
    :cond_28
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/internal/AnimManager;->getPrepareTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 231
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p1, p2}, Lmiuix/animation/internal/AnimManager;->endPrepareTransition(Lmiuix/animation/internal/TransitionInfo;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .registers 7

    .line 238
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doEnd with propertyNames"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 243
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .registers 7

    .line 247
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+ doEnd with properties"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_e
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->notifyRemoveWait()V

    .line 252
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method protected endAnim()V
    .registers 5

    .line 122
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 124
    const-string v2, "- FolmeEngine.endAnim start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const-wide/16 v2, 0x0

    .line 126
    iput-wide v2, p0, Lmiuix/animation/internal/FolmeEngine;->mLastFrameTimeNanos:J

    .line 127
    iget-boolean v2, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-nez v2, :cond_5b

    if-eqz v0, :cond_1f

    .line 129
    const-string v0, "- FolmeEngine.endAnim return when runner is not running"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_1f
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->stopNextFrame()V

    .line 132
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/EngineListener;

    .line 133
    invoke-virtual {v1}, Lmiuix/animation/listener/EngineListener;->onComplete()V

    goto :goto_28

    .line 135
    :cond_38
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    if-eqz v0, :cond_5a

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/EngineListener;

    .line 137
    iget-object v2, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_40

    .line 139
    :cond_52
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mPendingRemoveEngineListener:Ljava/util/Set;

    :cond_5a
    return-void

    .line 144
    :cond_5b
    iput-boolean v1, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    .line 145
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->stopNextFrame()V

    if-eqz v0, :cond_69

    .line 147
    const-string v0, "- FolmeEngine.endAnim finish"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_69
    return-void
.end method

.method public fromTo(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 7

    .line 263
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 264
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FolmeEngine fromTo create TransitionInfo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_22
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 268
    invoke-virtual {v0}, Lmiuix/animation/internal/TransitionInfo;->getDesignInfo()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "start anim=%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "folme_design"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lmiuix/animation/internal/AnimDebugger;->parseDebugConfig()Lmiuix/animation/internal/AnimDebugger$StateDebugInfo;

    move-result-object p2

    if-eqz p2, :cond_7e

    .line 271
    iget-object p4, p2, Lmiuix/animation/internal/AnimDebugger$StateDebugInfo;->state:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p4}, Lmiuix/animation/controller/AnimState;->getDesignInfo()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "debug animstate=%s"

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p4, p2, Lmiuix/animation/internal/AnimDebugger$StateDebugInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p4}, Lmiuix/animation/base/AnimConfig;->getDesignInfo()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v1, "debug animconfig=%s"

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p2, v0}, Lmiuix/animation/internal/AnimDebugger;->updateTransitionInfo(Lmiuix/animation/internal/AnimDebugger$StateDebugInfo;Lmiuix/animation/internal/TransitionInfo;)Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 274
    invoke-virtual {v0}, Lmiuix/animation/internal/TransitionInfo;->getDesignInfo()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "start updated-anim=%s"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_7e
    iget-object p2, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p2, v0}, Lmiuix/animation/internal/AnimManager;->prepareAnim(Lmiuix/animation/internal/TransitionInfo;)Z

    move-result p2

    if-eqz p2, :cond_94

    const-wide/16 p2, 0x1

    .line 279
    invoke-virtual {p1, p2, p3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result p2

    if-eqz p2, :cond_91

    .line 280
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/FolmeEngine;->addToOneShot(Lmiuix/animation/IAnimTarget;)V

    .line 282
    :cond_91
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/FolmeEngine;->toAnim(Lmiuix/animation/internal/TransitionInfo;)V

    :cond_94
    return-void
.end method

.method public getAverageDeltaNanos()J
    .registers 3

    .line 311
    iget-wide v0, p0, Lmiuix/animation/internal/FolmeEngine;->mAverageDeltaNanos:J

    return-wide v0
.end method

.method public getObjPool()Lmiuix/animation/utils/ObjectPool;
    .registers 2

    .line 57
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mObjPool:Lmiuix/animation/utils/ObjectPool;

    return-object v0
.end method

.method public getOneShotTargets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimScheduler;->getOneShotTargets()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public pendingSetTo(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimScheduler;->executePendingSetTo(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public declared-synchronized removeEngineListener(Lmiuix/animation/listener/EngineListener;)V
    .registers 4

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    new-instance v1, Lmiuix/animation/internal/FolmeEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/FolmeEngine$$ExternalSyntheticLambda1;-><init>(Lmiuix/animation/internal/FolmeEngine;Lmiuix/animation/listener/EngineListener;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimScheduler;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 308
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public removeFromOneShot(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimScheduler;->removeFromOneShot(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method protected abstract scheduleNextFrame(J)V
.end method

.method public start()V
    .registers 1

    .line 61
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->startAnim()V

    return-void
.end method

.method protected startAnim()V
    .registers 5

    .line 89
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 91
    const-string v2, "+ FolmeEngine.startAnim"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_e
    iget-boolean v2, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1b

    .line 95
    const-string v0, "+ FolmeEngine.startAnim but isRunning, return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void

    .line 99
    :cond_1c
    invoke-static {}, Lmiuix/animation/Folme;->getTimeRatio()F

    move-result v0

    iput v0, p0, Lmiuix/animation/internal/FolmeEngine;->mRatio:F

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    .line 101
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mEngineListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/EngineListener;

    .line 102
    invoke-virtual {v1}, Lmiuix/animation/listener/EngineListener;->onBegin()V

    goto :goto_2b

    :cond_3b
    const-wide/16 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/FolmeEngine;->scheduleNextFrame(J)V

    return-void
.end method

.method protected abstract stopNextFrame()V
.end method

.method public toAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lmiuix/animation/internal/FolmeEngine;->mScheduler:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimScheduler;->executeTo(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method protected updateRunningTime(J)J
    .registers 8

    .line 325
    iget-wide v0, p0, Lmiuix/animation/internal/FolmeEngine;->mLastFrameTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 326
    iput-wide p1, p0, Lmiuix/animation/internal/FolmeEngine;->mLastFrameTimeNanos:J

    move-wide v0, v2

    goto :goto_10

    :cond_c
    sub-long v0, p1, v0

    .line 330
    iput-wide p1, p0, Lmiuix/animation/internal/FolmeEngine;->mLastFrameTimeNanos:J

    .line 332
    :goto_10
    iget p1, p0, Lmiuix/animation/internal/FolmeEngine;->mRecordCount:I

    rem-int/lit8 p2, p1, 0x5

    .line 333
    iget-object v4, p0, Lmiuix/animation/internal/FolmeEngine;->mDeltaRecord:[J

    aput-wide v0, v4, p2

    add-int/lit8 p1, p1, 0x1

    .line 334
    iput p1, p0, Lmiuix/animation/internal/FolmeEngine;->mRecordCount:I

    .line 335
    invoke-direct {p0, v0, v1}, Lmiuix/animation/internal/FolmeEngine;->calculateAverageDelta(J)J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/FolmeEngine;->mAverageDeltaNanos:J

    .line 336
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/physics/AnimationHandler;->getFrameDeltaNanos()J

    move-result-wide p1

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    .line 338
    iput-wide p1, p0, Lmiuix/animation/internal/FolmeEngine;->mAverageDeltaNanos:J

    :cond_30
    return-wide v0
.end method

.method protected waitAnim()V
    .registers 5

    .line 109
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 111
    const-string v2, "- FolmeEngine.waitAnim start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_e
    iput-boolean v1, p0, Lmiuix/animation/internal/FolmeEngine;->mIsRunning:Z

    .line 114
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->stopNextFrame()V

    if-eqz v0, :cond_1c

    .line 116
    const-string v0, "- FolmeEngine.waitAnim finish"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public waitForAllTaskFinish()V
    .registers 1

    .line 65
    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->waitAnim()V

    return-void
.end method
