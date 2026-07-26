.class Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;


# direct methods
.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame(J)V
    .registers 4

    .line 74
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    # invokes: Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->doAnimationFrame(J)V
    invoke-static {v0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;J)V

    .line 75
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    # getter for: Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1a

    .line 76
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_1a
    return-void
.end method
