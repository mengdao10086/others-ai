.class public abstract Lmiuix/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field static final sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animManager:Lmiuix/animation/internal/AnimManager;

.field protected handler:Lmiuix/animation/internal/TargetHandler;

.field public final id:I

.field mDefaultMinVisible:F

.field mFlags:J

.field mFlagsSetTime:J

.field mIsSleep:Z

.field mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mShouldCheckValue:Z

.field final mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

.field notifyManager:Lmiuix/animation/internal/NotifyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 44
    new-instance v1, Lmiuix/animation/internal/NotifyManager;

    invoke-direct {v1, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 48
    iput v1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 60
    sget-object v1, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    iput v1, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 62
    new-instance v1, Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-direct {v1}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->createHandler(Landroid/os/Looper;)Lmiuix/animation/internal/TargetHandler;

    move-result-object v1

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 74
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IAnimTarget create ! "

    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_47
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 44
    new-instance v1, Lmiuix/animation/internal/NotifyManager;

    invoke-direct {v1, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 48
    iput v1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 60
    sget-object v1, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    iput v1, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 62
    new-instance v1, Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-direct {v1}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 65
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->createHandler(Landroid/os/Looper;)Lmiuix/animation/internal/TargetHandler;

    move-result-object v1

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 66
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAnimTarget create with looper! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_52
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method awake()V
    .registers 2

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mIsSleep:Z

    return-void
.end method

.method public canClear()Z
    .registers 5

    .line 147
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 148
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->hasAnimSetup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    const-wide/16 v2, 0x1

    .line 149
    invoke-virtual {p0, v2, v3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v0

    if-eqz v0, :cond_26

    new-array v0, v1, [Lmiuix/animation/property/FloatProperty;

    .line 150
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public canClearInvalid()Z
    .registers 2

    .line 154
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public cancelRunningAnim()V
    .registers 2

    .line 380
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->cancel()V

    return-void
.end method

.method public abstract clean()V
.end method

.method protected createHandler(Landroid/os/Looper;)Lmiuix/animation/internal/TargetHandler;
    .registers 5

    if-nez p1, :cond_23

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning!! the AnimTarget has created in a thread without Looper, the animation will do not work!!you should use HandlerThread instead of Thread, trace:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 86
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string v0, "miuix_anim"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_23
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmiuix/animation/Folme;->getUiLooperByTid(J)Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_61

    .line 90
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAnimTarget.createHandler registerUiLooper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_5e
    invoke-static {p1}, Lmiuix/animation/Folme;->registerUiLooper(Landroid/os/Looper;)V

    .line 96
    :cond_61
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    invoke-direct {v0, p1, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Landroid/os/Looper;Lmiuix/animation/IAnimTarget;)V

    return-object v0
.end method

.method public doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .registers 6

    .line 298
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 299
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_12

    .line 300
    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_12
    return-void
.end method

.method public doSetValue(Lmiuix/animation/property/FloatProperty;F)V
    .registers 6

    .line 269
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 270
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_20

    .line 271
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_20
    return-void
.end method

.method public enableCheckValue(Z)V
    .registers 2

    .line 419
    iput-boolean p1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .registers 2

    .line 229
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 412
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAnimTarget was destroyed\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_1d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultMinVisible()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getDoubleValue(Lmiuix/animation/property/FloatProperty;)D
.end method

.method public getHandler()Lmiuix/animation/internal/TargetHandler;
    .registers 2

    .line 344
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    if-nez v0, :cond_e

    .line 345
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->createHandler(Landroid/os/Looper;)Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 347
    :cond_e
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 125
    iget v0, p0, Lmiuix/animation/IAnimTarget;->id:I

    return v0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .registers 3

    .line 276
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 278
    invoke-interface {p1, v0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    const p1, 0x7fffffff

    return p1
.end method

.method public getLocationOnScreen([I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    aput v1, p1, v0

    aput v1, p1, v1

    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 3

    .line 184
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_f

    .line 186
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 187
    :cond_f
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_19

    return p1

    .line 190
    :cond_19
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result p1

    return p1
.end method

.method public getMinVisibleChange(Lmiuix/animation/property/FloatProperty;)F
    .registers 3

    .line 177
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 178
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    return p1

    .line 180
    :cond_11
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .registers 2

    .line 103
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/NotifyManager;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 322
    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getMinVisibleChange()F

    move-result p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    const v0, 0x41055555

    mul-float/2addr p1, v0

    float-to-double v0, p1

    return-wide v0
.end method

.method public final getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .registers 3

    .line 225
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .registers 3

    .line 247
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 249
    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    return p1

    :cond_b
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public getVelocity(Ljava/lang/String;)D
    .registers 4

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 318
    :cond_5
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public hasFlags(J)Z
    .registers 5

    .line 139
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p1

    return p1
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 114
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    return p1
.end method

.method public isIdle()Z
    .registers 2

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->isIdle(Z)Z

    move-result v0

    return v0
.end method

.method public isIdle(Z)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 163
    iget-object p1, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p1}, Lmiuix/animation/internal/AnimManager;->hasAnimSetup()Z

    move-result p1

    if-nez p1, :cond_15

    new-array p1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 165
    :cond_17
    iget-object p1, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p1}, Lmiuix/animation/internal/AnimManager;->hasAnimSetup()Z

    move-result p1

    if-nez p1, :cond_2e

    new-array p1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0
.end method

.method public isSleep()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mIsSleep:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isValidFlag()Z
    .registers 5

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public onFrameEnd(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4

    .line 357
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 358
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_11

    .line 361
    :cond_d
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 359
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_14
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 366
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 368
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 373
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;
    .registers 2

    .line 194
    iput p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    return-object p0
.end method

.method public setFlags(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    return-void
.end method

.method public final setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .registers 5

    .line 284
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 285
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_16

    .line 288
    :cond_d
    new-instance v1, Lmiuix/animation/IAnimTarget$2;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/IAnimTarget$2;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/IIntValueProperty;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 286
    :cond_16
    :goto_16
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    :goto_19
    return-void
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    .line 219
    invoke-virtual {p0, v2, p1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    .line 201
    invoke-virtual {v2, p1}, Lmiuix/animation/property/FloatProperty;->setMinVisibleChange(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    if-eqz v0, :cond_a

    .line 209
    check-cast p1, Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, p2}, Lmiuix/animation/property/FloatProperty;->setMinVisibleChange(F)V

    goto :goto_13

    .line 211
    :cond_a
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-object p0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/NotifyManager;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method

.method public final setValue(Lmiuix/animation/property/FloatProperty;F)V
    .registers 5

    .line 255
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 256
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_16

    .line 259
    :cond_d
    new-instance v1, Lmiuix/animation/IAnimTarget$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/IAnimTarget$1;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 257
    :cond_16
    :goto_16
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->doSetValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_19
    return-void
.end method

.method public setVelocity(Ljava/lang/String;D)V
    .registers 4

    .line 0
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .registers 6

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_f

    .line 338
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    double-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setVelocity(Lmiuix/animation/property/FloatProperty;F)V

    :cond_f
    return-void
.end method

.method public shouldCheckValue()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    return v0
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .registers 2

    .line 392
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    return p1
.end method

.method sleep()V
    .registers 2

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mIsSleep:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 404
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invalid "

    const-string v2, "valid "

    const-string v3, "Value{"

    if-ne v0, p0, :cond_34

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v1, v2

    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " self}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 407
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v3

    if-eqz v3, :cond_43

    move-object v1, v2

    :cond_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .registers 5

    .line 399
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TargetVelocityTracker;->trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
