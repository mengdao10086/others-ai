.class public Lmiuix/view/animation/ExponentialEaseInInterpolator;
.super Ljava/lang/Object;
.source "ExponentialEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    goto :goto_14

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 15
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_14
    return v0
.end method
