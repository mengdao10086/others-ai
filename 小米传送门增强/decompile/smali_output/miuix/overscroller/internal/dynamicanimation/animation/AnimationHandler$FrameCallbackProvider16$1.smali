.class Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;


# direct methods
.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4

    .line 354
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame(J)V

    return-void
.end method
