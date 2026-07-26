.class public Lmiuix/animation/easing/BounceInEasing;
.super Ljava/lang/Object;
.source "BounceInEasing.java"

# interfaces
.implements Lmiuix/animation/easing/SimpleEasing;


# instance fields
.field private final duration:D


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-direct {p0, v0, v1}, Lmiuix/animation/easing/BounceInEasing;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_c

    .line 19
    iput-wide p1, p0, Lmiuix/animation/easing/BounceInEasing;->duration:D

    return-void

    .line 17
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final duration()D
    .registers 3

    .line 29
    iget-wide v0, p0, Lmiuix/animation/easing/BounceInEasing;->duration:D

    return-wide v0
.end method

.method public newMotion()Lmiuix/animation/motion/Motion;
    .registers 8

    .line 24
    new-instance v6, Lmiuix/animation/motion/ScaleMotion;

    new-instance v1, Lmiuix/animation/motion/FunctionMotion;

    new-instance v0, Lmiuix/animation/function/BounceIn;

    invoke-direct {v0}, Lmiuix/animation/function/BounceIn;-><init>()V

    invoke-direct {v1, v0}, Lmiuix/animation/motion/FunctionMotion;-><init>(Lmiuix/animation/function/Differentiable;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lmiuix/animation/easing/BounceInEasing;->duration:D

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

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BounceIn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/easing/BounceInEasing;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
