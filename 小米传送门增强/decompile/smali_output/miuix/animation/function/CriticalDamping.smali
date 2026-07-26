.class public Lmiuix/animation/function/CriticalDamping;
.super Ljava/lang/Object;
.source "CriticalDamping.java"

# interfaces
.implements Lmiuix/animation/function/Damping;


# instance fields
.field private final c1:D

.field private final c2:D

.field private derivative:Lmiuix/animation/function/Function;

.field private final r:D

.field private final xStar:D


# direct methods
.method public static synthetic $r8$lambda$9yjufkOWPxbMCCfTgZLp0xLsyB4(Lmiuix/animation/function/CriticalDamping;D)D
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/animation/function/CriticalDamping;->lambda$derivative$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>(DDDD)V
    .registers 9

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lmiuix/animation/function/CriticalDamping;->c1:D

    .line 14
    iput-wide p3, p0, Lmiuix/animation/function/CriticalDamping;->c2:D

    .line 15
    iput-wide p5, p0, Lmiuix/animation/function/CriticalDamping;->r:D

    .line 16
    iput-wide p7, p0, Lmiuix/animation/function/CriticalDamping;->xStar:D

    return-void
.end method

.method private synthetic lambda$derivative$0(D)D
    .registers 13

    .line 27
    iget-wide v0, p0, Lmiuix/animation/function/CriticalDamping;->c1:D

    iget-wide v2, p0, Lmiuix/animation/function/CriticalDamping;->r:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lmiuix/animation/function/CriticalDamping;->c2:D

    mul-double v6, v2, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public apply(D)D
    .registers 7

    .line 21
    iget-wide v0, p0, Lmiuix/animation/function/CriticalDamping;->c1:D

    iget-wide v2, p0, Lmiuix/animation/function/CriticalDamping;->c2:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget-wide v2, p0, Lmiuix/animation/function/CriticalDamping;->r:D

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lmiuix/animation/function/CriticalDamping;->xStar:D

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public derivative()Lmiuix/animation/function/Function;
    .registers 2

    .line 26
    iget-object v0, p0, Lmiuix/animation/function/CriticalDamping;->derivative:Lmiuix/animation/function/Function;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lmiuix/animation/function/CriticalDamping$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/animation/function/CriticalDamping$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/function/CriticalDamping;)V

    iput-object v0, p0, Lmiuix/animation/function/CriticalDamping;->derivative:Lmiuix/animation/function/Function;

    .line 29
    :cond_b
    iget-object v0, p0, Lmiuix/animation/function/CriticalDamping;->derivative:Lmiuix/animation/function/Function;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-wide v1, p0, Lmiuix/animation/function/CriticalDamping;->c1:D

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lmiuix/animation/function/CriticalDamping;->c2:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lmiuix/animation/function/CriticalDamping;->r:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lmiuix/animation/function/CriticalDamping;->xStar:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 34
    const-string v2, "CriticalDamping{c1=%.3f c2=%.3f r=%.3f x*=%.3f}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
