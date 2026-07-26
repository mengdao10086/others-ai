.class public Lmiuix/animation/motion/UniformLinearMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "UniformLinearMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private function:Lmiuix/animation/function/Differentiable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInitialVChanged()V
    .registers 2

    .line 21
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialVChanged()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lmiuix/animation/motion/UniformLinearMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method protected onInitialXChanged()V
    .registers 2

    .line 15
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialXChanged()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lmiuix/animation/motion/UniformLinearMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 6

    .line 27
    iget-object v0, p0, Lmiuix/animation/motion/UniformLinearMotion;->function:Lmiuix/animation/function/Differentiable;

    if-nez v0, :cond_13

    .line 28
    new-instance v0, Lmiuix/animation/function/Linear;

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialV()D

    move-result-wide v1

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/animation/function/Linear;-><init>(DD)V

    iput-object v0, p0, Lmiuix/animation/motion/UniformLinearMotion;->function:Lmiuix/animation/function/Differentiable;

    .line 30
    :cond_13
    iget-object v0, p0, Lmiuix/animation/motion/UniformLinearMotion;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method
