.class public final Lmiuix/animation/motion/Shift;
.super Lmiuix/animation/motion/InstantMotion;
.source "Shift.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private function:Lmiuix/animation/function/Differentiable;

.field private final v:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lmiuix/animation/motion/InstantMotion;-><init>()V

    .line 11
    iput-wide p1, p0, Lmiuix/animation/motion/Shift;->v:D

    return-void
.end method


# virtual methods
.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 4

    .line 16
    iget-object v0, p0, Lmiuix/animation/motion/Shift;->function:Lmiuix/animation/function/Differentiable;

    if-nez v0, :cond_f

    .line 17
    new-instance v0, Lmiuix/animation/function/Constant;

    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lmiuix/animation/function/Constant;-><init>(D)V

    iput-object v0, p0, Lmiuix/animation/motion/Shift;->function:Lmiuix/animation/function/Differentiable;

    .line 19
    :cond_f
    iget-object v0, p0, Lmiuix/animation/motion/Shift;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method

.method public stopPosition()D
    .registers 3

    .line 24
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->getInitialX()D

    move-result-wide v0

    return-wide v0
.end method

.method public stopSpeed()D
    .registers 3

    .line 29
    iget-wide v0, p0, Lmiuix/animation/motion/Shift;->v:D

    return-wide v0
.end method
