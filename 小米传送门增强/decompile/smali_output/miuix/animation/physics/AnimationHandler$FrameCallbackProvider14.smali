.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;
.super Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider14"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 4

    .line 337
    invoke-direct {p0, p1}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    const-wide/16 v0, -0x1

    .line 334
    iput-wide v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 338
    new-instance p1, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;

    invoke-direct {p1, p0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)V

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 345
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)J
    .registers 3

    .line 330
    iget-wide v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J
    .registers 3

    .line 330
    iput-wide p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    return-wide p1
.end method


# virtual methods
.method getLooper()Landroid/os/Looper;
    .registers 2

    .line 362
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method isCurrentThread()Z
    .registers 3

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method postFrameCallback()V
    .registers 5

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 351
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 352
    iget-object v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
