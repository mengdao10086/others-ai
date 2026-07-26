.class public final Lmiuix/animation/motion/MotionConverter;
.super Ljava/lang/Object;
.source "MotionConverter.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private function:Lmiuix/animation/function/Differentiable;

.field private final mMotion:Lmiuix/animation/motion/Motion;

.field private final mScale:D

.field private final mZeroPoint:D


# direct methods
.method public constructor <init>(Lmiuix/animation/motion/Motion;DD)V
    .registers 8

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_10

    .line 16
    iput-object p1, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    .line 17
    iput-wide p2, p0, Lmiuix/animation/motion/MotionConverter;->mZeroPoint:D

    .line 18
    iput-wide p4, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    return-void

    .line 14
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scale must not be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lmiuix/animation/motion/MotionConverter;)Lmiuix/animation/motion/Motion;
    .registers 1

    .line 6
    iget-object p0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/animation/motion/MotionConverter;)D
    .registers 3

    .line 6
    iget-wide v0, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    return-wide v0
.end method

.method static synthetic access$200(Lmiuix/animation/motion/MotionConverter;)D
    .registers 3

    .line 6
    iget-wide v0, p0, Lmiuix/animation/motion/MotionConverter;->mZeroPoint:D

    return-wide v0
.end method


# virtual methods
.method public finishTime()D
    .registers 3

    .line 61
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->finishTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInitialV()D
    .registers 5

    .line 38
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->getInitialV()D

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getInitialX()D
    .registers 5

    .line 33
    iget-wide v0, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    iget-wide v2, p0, Lmiuix/animation/motion/MotionConverter;->mZeroPoint:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public setInitialV(D)V
    .registers 6

    .line 28
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    iget-wide v1, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    div-double/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lmiuix/animation/motion/Motion;->setInitialV(D)V

    return-void
.end method

.method public setInitialX(D)V
    .registers 6

    .line 23
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    iget-wide v1, p0, Lmiuix/animation/motion/MotionConverter;->mZeroPoint:D

    sub-double/2addr p1, v1

    iget-wide v1, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    div-double/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lmiuix/animation/motion/Motion;->setInitialX(D)V

    return-void
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 2

    .line 43
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->function:Lmiuix/animation/function/Differentiable;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lmiuix/animation/motion/MotionConverter$1;

    invoke-direct {v0, p0}, Lmiuix/animation/motion/MotionConverter$1;-><init>(Lmiuix/animation/motion/MotionConverter;)V

    iput-object v0, p0, Lmiuix/animation/motion/MotionConverter;->function:Lmiuix/animation/function/Differentiable;

    .line 56
    :cond_b
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method

.method public stopPosition()D
    .registers 5

    .line 66
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->stopPosition()D

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lmiuix/animation/motion/MotionConverter;->mZeroPoint:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public stopSpeed()D
    .registers 5

    .line 71
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter;->mMotion:Lmiuix/animation/motion/Motion;

    invoke-interface {v0}, Lmiuix/animation/motion/Motion;->stopSpeed()D

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/motion/MotionConverter;->mScale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
