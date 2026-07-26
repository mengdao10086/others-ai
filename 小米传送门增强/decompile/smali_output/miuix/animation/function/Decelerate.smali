.class public Lmiuix/animation/function/Decelerate;
.super Ljava/lang/Object;
.source "Decelerate.java"

# interfaces
.implements Lmiuix/animation/function/Differentiable;


# instance fields
.field private mFactor:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    iput-wide v0, p0, Lmiuix/animation/function/Decelerate;->mFactor:D

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lmiuix/animation/function/Decelerate;->mFactor:D

    return-void
.end method


# virtual methods
.method public apply(D)D
    .registers 9

    .line 16
    iget-wide v0, p0, Lmiuix/animation/function/Decelerate;->mFactor:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_e

    sub-double p1, v2, p1

    mul-double/2addr p1, p1

    :goto_b
    sub-double/2addr v2, p1

    double-to-float p1, v2

    goto :goto_18

    :cond_e
    sub-double p1, v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    .line 19
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    goto :goto_b

    :goto_18
    float-to-double p1, p1

    return-wide p1
.end method

.method public derivative()Lmiuix/animation/function/Function;
    .registers 2

    .line 26
    sget-object v0, Lmiuix/animation/function/Constant;->ZERO:Lmiuix/animation/function/Constant;

    return-object v0
.end method
