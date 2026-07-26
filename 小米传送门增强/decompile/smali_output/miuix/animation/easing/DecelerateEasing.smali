.class public Lmiuix/animation/easing/DecelerateEasing;
.super Ljava/lang/Object;
.source "DecelerateEasing.java"

# interfaces
.implements Lmiuix/animation/easing/SimpleEasing;


# instance fields
.field private final duration:D

.field private final factor:D


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    invoke-direct {p0, v0, v1}, Lmiuix/animation/easing/DecelerateEasing;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    iput-wide v0, p0, Lmiuix/animation/easing/DecelerateEasing;->factor:D

    .line 21
    iput-wide p1, p0, Lmiuix/animation/easing/DecelerateEasing;->duration:D

    return-void

    .line 18
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(DD)V
    .registers 8

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-lez v2, :cond_12

    .line 28
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/easing/DecelerateEasing;->factor:D

    .line 29
    iput-wide p3, p0, Lmiuix/animation/easing/DecelerateEasing;->duration:D

    return-void

    .line 26
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final duration()D
    .registers 3

    .line 39
    iget-wide v0, p0, Lmiuix/animation/easing/DecelerateEasing;->duration:D

    return-wide v0
.end method

.method public newMotion()Lmiuix/animation/motion/Motion;
    .registers 8

    .line 34
    new-instance v6, Lmiuix/animation/motion/ScaleMotion;

    new-instance v1, Lmiuix/animation/motion/FunctionMotion;

    new-instance v0, Lmiuix/animation/function/Decelerate;

    iget-wide v2, p0, Lmiuix/animation/easing/DecelerateEasing;->factor:D

    invoke-direct {v0, v2, v3}, Lmiuix/animation/function/Decelerate;-><init>(D)V

    invoke-direct {v1, v0}, Lmiuix/animation/motion/FunctionMotion;-><init>(Lmiuix/animation/function/Differentiable;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lmiuix/animation/easing/DecelerateEasing;->duration:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/motion/ScaleMotion;-><init>(Lmiuix/animation/motion/Motion;DD)V

    return-object v6
.end method

.method public startSpeed()D
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decelerate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/easing/DecelerateEasing;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
