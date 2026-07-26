.class public Lmiuix/view/animation/QuadraticEaseInInterpolator;
.super Ljava/lang/Object;
.source "QuadraticEaseInInterpolator.java"

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
    .registers 2

    .line 0
    mul-float/2addr p1, p1

    return p1
.end method
