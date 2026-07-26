.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 341
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    # setter for: Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->access$402(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J

    .line 342
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    iget-object v1, v0, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    # getter for: Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->access$400(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame(J)V

    return-void
.end method
