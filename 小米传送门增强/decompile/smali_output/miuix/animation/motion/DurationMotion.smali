.class public final Lmiuix/animation/motion/DurationMotion;
.super Ljava/lang/Object;
.source "DurationMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# static fields
.field public static final DURATION_FOREVER:D = Infinity


# instance fields
.field private final duration:D

.field private final origin:Lmiuix/animation/motion/Motion;

.field private final stopAtEnd:Z


# direct methods
.method public constructor <init>(Lmiuix/animation/motion/Motion;D)V
    .registers 5

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/animation/motion/DurationMotion;-><init>(Lmiuix/animation/motion/Motion;DZ)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/motion/Motion;DZ)V
    .registers 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_10

    .line 24
    iput-object p1, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    .line 25
    iput-wide p2, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    .line 26
    iput-boolean p4, p0, Lmiuix/animation/motion/DurationMotion;->stopAtEnd:Z

    return-void

    .line 22
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public finishTime()D
    .registers 3

    .line 56
    iget-wide v0, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    return-wide v0
.end method

.method public getInitialV()D
    .registers 3

    .line 46
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->getInitialV()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInitialX()D
    .registers 3

    .line 41
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->getInitialX()D

    move-result-wide v0

    return-wide v0
.end method

.method public setInitialV(D)V
    .registers 4

    .line 36
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0, p1, p2}, Lmiuix/animation/motion/Motion;->setInitialV(D)V

    return-void
.end method

.method public setInitialX(D)V
    .registers 4

    .line 31
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0, p1, p2}, Lmiuix/animation/motion/Motion;->setInitialX(D)V

    return-void
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 2

    .line 51
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->solve()Lmiuix/animation/function/Differentiable;

    move-result-object v0

    return-object v0
.end method

.method public stopPosition()D
    .registers 5

    .line 61
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->finishTime()D

    move-result-wide v0

    .line 62
    iget-wide v2, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_13

    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->stopPosition()D

    move-result-wide v0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->solve()Lmiuix/animation/function/Differentiable;

    move-result-object v0

    iget-wide v1, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    invoke-interface {v0, v1, v2}, Lmiuix/animation/function/Differentiable;->apply(D)D

    move-result-wide v0

    :goto_1f
    return-wide v0
.end method

.method public stopSpeed()D
    .registers 5

    .line 67
    iget-boolean v0, p0, Lmiuix/animation/motion/DurationMotion;->stopAtEnd:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 70
    :cond_7
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->finishTime()D

    move-result-wide v0

    .line 71
    iget-wide v2, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1a

    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->stopSpeed()D

    move-result-wide v0

    goto :goto_2a

    :cond_1a
    iget-object v0, p0, Lmiuix/animation/motion/DurationMotion;->origin:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->solve()Lmiuix/animation/function/Differentiable;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/function/Differentiable;->derivative()Lmiuix/animation/function/Function;

    move-result-object v0

    iget-wide v1, p0, Lmiuix/animation/motion/DurationMotion;->duration:D

    invoke-interface {v0, v1, v2}, Lmiuix/animation/function/Function;->apply(D)D

    move-result-wide v0

    :goto_2a
    return-wide v0
.end method
