.class public Lmiuix/animation/physics/EquilibriumChecker;
.super Ljava/lang/Object;
.source "EquilibriumChecker.java"


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.004f

.field public static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final VELOCITY_THRESHOLD_MULTIPLIER:F = 16.666666f

.field public static final VELOCITY_THRESHOLD_MULTIPLIER_HIGH_FPS:F = 8.333333f


# instance fields
.field private mTargetValue:D

.field private mValueThreshold:F

.field private mVelocityThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 33
    iput-wide v0, p0, Lmiuix/animation/physics/EquilibriumChecker;->mTargetValue:D

    return-void
.end method

.method private isAt(DD)Z
    .registers 9

    .line 57
    iget-wide v0, p0, Lmiuix/animation/physics/EquilibriumChecker;->mTargetValue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1e

    sub-double/2addr p1, p3

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget p3, p0, Lmiuix/animation/physics/EquilibriumChecker;->mValueThreshold:F

    float-to-double p3, p3

    cmpg-double p1, p1, p3

    if-gez p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method


# virtual methods
.method public getVelocityThreshold()F
    .registers 2

    .line 53
    iget v0, p0, Lmiuix/animation/physics/EquilibriumChecker;->mVelocityThreshold:F

    return v0
.end method

.method public init(Lmiuix/animation/property/FloatProperty;D)V
    .registers 5

    .line 40
    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getMinVisibleChange()F

    move-result p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiuix/animation/physics/EquilibriumChecker;->mValueThreshold:F

    const v0, 0x41855555

    mul-float/2addr p1, v0

    .line 41
    iput p1, p0, Lmiuix/animation/physics/EquilibriumChecker;->mVelocityThreshold:F

    .line 42
    iput-wide p2, p0, Lmiuix/animation/physics/EquilibriumChecker;->mTargetValue:D

    return-void
.end method

.method public isAtEquilibrium(IDD)Z
    .registers 8

    .line 46
    iget-wide v0, p0, Lmiuix/animation/physics/EquilibriumChecker;->mTargetValue:D

    invoke-direct {p0, p2, p3, v0, v1}, Lmiuix/animation/physics/EquilibriumChecker;->isAt(DD)Z

    move-result p2

    const/4 p3, -0x2

    if-ne p1, p3, :cond_b

    if-eqz p2, :cond_1b

    :cond_b
    const/4 p2, -0x3

    if-eq p1, p2, :cond_1b

    .line 49
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget p3, p0, Lmiuix/animation/physics/EquilibriumChecker;->mVelocityThreshold:F

    float-to-double p3, p3

    cmpg-double p1, p1, p3

    if-gez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method
