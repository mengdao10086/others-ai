.class Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 2

    .line 350
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 345
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    .line 346
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    .line 351
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {p1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;)V

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method isCurrentThread()Z
    .registers 3

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method postFrameCallback()V
    .registers 3

    .line 361
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
