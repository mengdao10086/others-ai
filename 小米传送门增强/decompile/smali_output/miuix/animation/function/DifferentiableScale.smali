.class public Lmiuix/animation/function/DifferentiableScale;
.super Lmiuix/animation/function/Scale;
.source "DifferentiableScale.java"

# interfaces
.implements Lmiuix/animation/function/Differentiable;


# instance fields
.field private final base:Lmiuix/animation/function/Differentiable;

.field private derivative:Lmiuix/animation/function/Function;


# direct methods
.method public constructor <init>(Lmiuix/animation/function/Differentiable;DDDD)V
    .registers 10

    .line 9
    invoke-direct/range {p0 .. p9}, Lmiuix/animation/function/Scale;-><init>(Lmiuix/animation/function/Function;DDDD)V

    .line 10
    iput-object p1, p0, Lmiuix/animation/function/DifferentiableScale;->base:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public derivative()Lmiuix/animation/function/Function;
    .registers 14

    .line 15
    iget-object v0, p0, Lmiuix/animation/function/DifferentiableScale;->derivative:Lmiuix/animation/function/Function;

    if-nez v0, :cond_3a

    .line 16
    iget-object v0, p0, Lmiuix/animation/function/DifferentiableScale;->base:Lmiuix/animation/function/Differentiable;

    invoke-interface {v0}, Lmiuix/animation/function/Differentiable;->derivative()Lmiuix/animation/function/Function;

    move-result-object v2

    .line 17
    instance-of v0, v2, Lmiuix/animation/function/Differentiable;

    if-eqz v0, :cond_26

    .line 18
    new-instance v0, Lmiuix/animation/function/DifferentiableScale;

    move-object v4, v2

    check-cast v4, Lmiuix/animation/function/Differentiable;

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/function/Scale;->getScaleX()D

    move-result-wide v5

    invoke-virtual {p0}, Lmiuix/animation/function/Scale;->getScaleY()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lmiuix/animation/function/DifferentiableScale;-><init>(Lmiuix/animation/function/Differentiable;DDDD)V

    iput-object v0, p0, Lmiuix/animation/function/DifferentiableScale;->derivative:Lmiuix/animation/function/Function;

    goto :goto_3a

    .line 21
    :cond_26
    new-instance v0, Lmiuix/animation/function/Scale;

    invoke-virtual {p0}, Lmiuix/animation/function/Scale;->getScaleX()D

    move-result-wide v3

    invoke-virtual {p0}, Lmiuix/animation/function/Scale;->getScaleY()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lmiuix/animation/function/Scale;-><init>(Lmiuix/animation/function/Function;DDDD)V

    iput-object v0, p0, Lmiuix/animation/function/DifferentiableScale;->derivative:Lmiuix/animation/function/Function;

    .line 24
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lmiuix/animation/function/DifferentiableScale;->derivative:Lmiuix/animation/function/Function;

    return-object v0
.end method
