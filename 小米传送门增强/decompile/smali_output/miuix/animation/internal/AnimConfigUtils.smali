.class public Lmiuix/animation/internal/AnimConfigUtils;
.super Ljava/lang/Object;
.source "AnimConfigUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpeed(FF)F
    .registers 4

    float-to-double v0, p0

    .line 40
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_8

    return p1

    :cond_8
    float-to-double v0, p1

    .line 42
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_10

    return p0

    .line 45
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J
    .registers 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_a

    .line 25
    iget-wide p0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_a
    return-wide v0
.end method

.method static getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 3

    if-eqz p1, :cond_b

    .line 16
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz p1, :cond_b

    sget-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eq p1, v0, :cond_b

    goto :goto_d

    .line 19
    :cond_b
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_d
    if-nez p1, :cond_11

    .line 21
    sget-object p1, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :cond_11
    return-object p1
.end method

.method static getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F
    .registers 4

    if-eqz p1, :cond_e

    .line 33
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    iget p0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return p0

    .line 36
    :cond_e
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return p0
.end method

.method static getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I
    .registers 2

    .line 29
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-eqz p1, :cond_7

    iget p1, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
