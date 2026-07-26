.class public Lmiuix/animation/internal/AnimValueUtils;
.super Ljava/lang/Object;
.source "AnimValueUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 8

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpl-double v2, p2, v2

    if-nez v2, :cond_18

    .line 44
    invoke-static {p0, p1}, Lmiuix/animation/utils/CommonUtils;->getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr v0, p0

    return-wide v0

    .line 47
    :cond_18
    instance-of v2, p0, Lmiuix/animation/ViewTarget;

    if-eqz v2, :cond_2e

    .line 48
    instance-of v2, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v2, :cond_28

    .line 49
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p0

    int-to-double p0, p0

    goto :goto_32

    :cond_28
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    float-to-double p0, p0

    goto :goto_32

    .line 53
    :cond_2e
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getDoubleValue(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide p0

    :goto_32
    const-wide v2, 0x412e854800000000L    # 1000100.0

    cmpl-double p2, p2, v2

    if-nez p2, :cond_3c

    mul-double/2addr p0, v0

    :cond_3c
    return-wide p0
.end method

.method public static getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 5

    .line 33
    instance-of v0, p1, Lmiuix/animation/property/ISpecificProperty;

    if-eqz v0, :cond_d

    .line 34
    check-cast p1, Lmiuix/animation/property/ISpecificProperty;

    double-to-float p0, p2

    invoke-interface {p1, p0}, Lmiuix/animation/property/ISpecificProperty;->getSpecificValue(F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 36
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 6

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p2, v0

    if-nez v0, :cond_11

    .line 24
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :cond_11
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-nez v0, :cond_20

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 28
    :cond_20
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z
    .registers 3

    .line 79
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 80
    iget-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 81
    iget-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 82
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isInvalid(D)Z
    .registers 4

    .line 0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1e

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1e

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p0, p0, v0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method

.method public static isValid(D)Z
    .registers 2

    .line 63
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
