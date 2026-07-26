.class public Lmiuix/animation/motion/FreeDampedMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "FreeDampedMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private function:Lmiuix/animation/function/Differentiable;

.field private final g:D

.field private final p:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    .line 20
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 21
    iput-wide p3, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    .line 22
    iput-wide p1, p0, Lmiuix/animation/motion/FreeDampedMotion;->p:D

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public finishTime()D
    .registers 5

    .line 50
    iget-wide v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialV()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    return-wide v2

    .line 53
    :cond_11
    invoke-super {p0}, Lmiuix/animation/motion/Motion;->finishTime()D

    move-result-wide v0

    return-wide v0
.end method

.method protected onInitialVChanged()V
    .registers 2

    .line 34
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialVChanged()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method protected onInitialXChanged()V
    .registers 2

    .line 28
    invoke-super {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialXChanged()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 14

    .line 40
    iget-object v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    if-nez v0, :cond_23

    .line 41
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialV()D

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    iget-wide v4, p0, Lmiuix/animation/motion/FreeDampedMotion;->p:D

    div-double/2addr v2, v4

    sub-double v5, v0, v2

    .line 42
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v0

    iget-wide v9, p0, Lmiuix/animation/motion/FreeDampedMotion;->p:D

    div-double v2, v5, v9

    add-double v7, v0, v2

    .line 43
    new-instance v0, Lmiuix/animation/function/FreeDamping;

    iget-wide v11, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lmiuix/animation/function/FreeDamping;-><init>(DDDD)V

    iput-object v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    .line 45
    :cond_23
    iget-object v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method

.method public stopPosition()D
    .registers 7

    .line 58
    iget-wide v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_15

    .line 59
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v0

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialV()D

    move-result-wide v2

    iget-wide v4, p0, Lmiuix/animation/motion/FreeDampedMotion;->p:D

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0

    :cond_15
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public stopSpeed()D
    .registers 5

    .line 66
    iget-wide v0, p0, Lmiuix/animation/motion/FreeDampedMotion;->g:D

    iget-wide v2, p0, Lmiuix/animation/motion/FreeDampedMotion;->p:D

    div-double/2addr v0, v2

    return-wide v0
.end method
