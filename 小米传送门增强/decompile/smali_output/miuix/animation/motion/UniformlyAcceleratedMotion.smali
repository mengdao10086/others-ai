.class public Lmiuix/animation/motion/UniformlyAcceleratedMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "UniformlyAcceleratedMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private final a:D

.field private function:Lmiuix/animation/function/Differentiable;


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 18
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 19
    iput-wide p1, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->a:D

    return-void
.end method


# virtual methods
.method protected onInitialVChanged()V
    .registers 2

    .line 30
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialVChanged()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method protected onInitialXChanged()V
    .registers 2

    .line 24
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialXChanged()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 9

    .line 36
    iget-object v0, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->function:Lmiuix/animation/function/Differentiable;

    if-nez v0, :cond_1a

    .line 37
    new-instance v0, Lmiuix/animation/function/Parabolic;

    iget-wide v1, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->a:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v2, v1, v3

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialV()D

    move-result-wide v4

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lmiuix/animation/function/Parabolic;-><init>(DDD)V

    iput-object v0, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->function:Lmiuix/animation/function/Differentiable;

    .line 39
    :cond_1a
    iget-object v0, p0, Lmiuix/animation/motion/UniformlyAcceleratedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method
