.class public Lmiuix/animation/easing/QuadInEasing;
.super Ljava/lang/Object;
.source "QuadInEasing.java"

# interfaces
.implements Lmiuix/animation/easing/SimpleEasing;


# instance fields
.field private final duration:D


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-direct {p0, v0, v1}, Lmiuix/animation/easing/QuadInEasing;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_c

    .line 18
    iput-wide p1, p0, Lmiuix/animation/easing/QuadInEasing;->duration:D

    return-void

    .line 16
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final duration()D
    .registers 3

    .line 28
    iget-wide v0, p0, Lmiuix/animation/easing/QuadInEasing;->duration:D

    return-wide v0
.end method

.method public newMotion()Lmiuix/animation/motion/Motion;
    .registers 7

    .line 23
    new-instance v0, Lmiuix/animation/motion/DurationMotion;

    new-instance v1, Lmiuix/animation/motion/UniformlyAcceleratedMotion;

    iget-wide v2, p0, Lmiuix/animation/easing/QuadInEasing;->duration:D

    mul-double/2addr v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lmiuix/animation/motion/UniformlyAcceleratedMotion;-><init>(D)V

    iget-wide v2, p0, Lmiuix/animation/easing/QuadInEasing;->duration:D

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/animation/motion/DurationMotion;-><init>(Lmiuix/animation/motion/Motion;DZ)V

    return-object v0
.end method

.method public startSpeed()D
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuadIn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/easing/QuadInEasing;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
