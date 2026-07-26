.class public final Lmiuix/animation/motion/PolynomialMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "PolynomialMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private final function:Lmiuix/animation/function/Differentiable;


# direct methods
.method public varargs constructor <init>(I[D)V
    .registers 4

    .line 9
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 10
    new-instance v0, Lmiuix/animation/function/Polynomial;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/function/Polynomial;-><init>(I[D)V

    iput-object v0, p0, Lmiuix/animation/motion/PolynomialMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/function/Polynomial;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 14
    iput-object p1, p0, Lmiuix/animation/motion/PolynomialMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 2

    .line 19
    iget-object v0, p0, Lmiuix/animation/motion/PolynomialMotion;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method
