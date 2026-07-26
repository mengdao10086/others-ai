.class public final synthetic Lmiuix/animation/motion/AndroidDampedHarmonicMotion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/function/Function;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/motion/AndroidDampedHarmonicMotion;

.field public final synthetic f$1:Lmiuix/animation/function/Differentiable;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/motion/AndroidDampedHarmonicMotion;Lmiuix/animation/function/Differentiable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/motion/AndroidDampedHarmonicMotion$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/AndroidDampedHarmonicMotion;

    iput-object p2, p0, Lmiuix/animation/motion/AndroidDampedHarmonicMotion$$ExternalSyntheticLambda0;->f$1:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .registers 5

    .line 0
    iget-object v0, p0, Lmiuix/animation/motion/AndroidDampedHarmonicMotion$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/AndroidDampedHarmonicMotion;

    iget-object v1, p0, Lmiuix/animation/motion/AndroidDampedHarmonicMotion$$ExternalSyntheticLambda0;->f$1:Lmiuix/animation/function/Differentiable;

    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/motion/AndroidDampedHarmonicMotion;->$r8$lambda$c_UfbqIjIrYJW23vKqG0hDIeSOQ(Lmiuix/animation/motion/AndroidDampedHarmonicMotion;Lmiuix/animation/function/Differentiable;D)D

    move-result-wide p1

    return-wide p1
.end method
