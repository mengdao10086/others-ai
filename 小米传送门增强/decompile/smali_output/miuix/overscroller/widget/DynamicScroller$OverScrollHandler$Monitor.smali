.class Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;
.super Ljava/lang/Object;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Monitor"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;


# direct methods
.method private constructor <init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;Lmiuix/overscroller/widget/DynamicScroller$1;)V
    .registers 3

    .line 393
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;-><init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7

    .line 396
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iput p3, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 397
    iget v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    # getter for: Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMinValue:F
    invoke-static {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->access$500(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    # getter for: Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMaxValue:F
    invoke-static {v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->access$600(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s updating value(%f), velocity(%f), min(%f), max(%f)"

    invoke-static {p2, p1}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
