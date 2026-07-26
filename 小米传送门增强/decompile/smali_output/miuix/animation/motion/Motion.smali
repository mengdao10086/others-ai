.class public interface abstract Lmiuix/animation/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"


# virtual methods
.method public finishTime()D
    .registers 3

    .line 0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public abstract getInitialV()D
.end method

.method public abstract getInitialX()D
.end method

.method public abstract setInitialV(D)V
.end method

.method public abstract setInitialX(D)V
.end method

.method public abstract solve()Lmiuix/animation/function/Differentiable;
.end method

.method public stopPosition()D
    .registers 3

    .line 0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public stopSpeed()D
    .registers 3

    .line 0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method
