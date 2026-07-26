.class public Lmiuix/animation/easing/PerlinEasing;
.super Ljava/lang/Object;
.source "PerlinEasing.java"

# interfaces
.implements Lmiuix/animation/FolmeEase;


# static fields
.field public static final INTERPOLATOR:Lmiuix/animation/function/Differentiable;

.field public static final INTERPOLATOR2:Lmiuix/animation/function/Differentiable;


# instance fields
.field private final duration:D

.field private final interpolator:Lmiuix/animation/function/Differentiable;

.field private final range:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    sget-object v0, Lmiuix/animation/motion/PerlinMotion;->INTERPOLATOR:Lmiuix/animation/function/Differentiable;

    sput-object v0, Lmiuix/animation/easing/PerlinEasing;->INTERPOLATOR:Lmiuix/animation/function/Differentiable;

    .line 10
    sget-object v0, Lmiuix/animation/motion/PerlinMotion;->INTERPOLATOR2:Lmiuix/animation/function/Differentiable;

    sput-object v0, Lmiuix/animation/easing/PerlinEasing;->INTERPOLATOR2:Lmiuix/animation/function/Differentiable;

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 11

    .line 17
    sget-object v5, Lmiuix/animation/easing/PerlinEasing;->INTERPOLATOR:Lmiuix/animation/function/Differentiable;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/easing/PerlinEasing;-><init>(DDLmiuix/animation/function/Differentiable;)V

    return-void
.end method

.method public constructor <init>(DDLmiuix/animation/function/Differentiable;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lmiuix/animation/easing/PerlinEasing;->duration:D

    .line 22
    iput-wide p3, p0, Lmiuix/animation/easing/PerlinEasing;->range:D

    .line 23
    iput-object p5, p0, Lmiuix/animation/easing/PerlinEasing;->interpolator:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public newMotion()Lmiuix/animation/motion/Motion;
    .registers 8

    .line 28
    new-instance v6, Lmiuix/animation/motion/PerlinMotion;

    iget-wide v1, p0, Lmiuix/animation/easing/PerlinEasing;->duration:D

    iget-wide v3, p0, Lmiuix/animation/easing/PerlinEasing;->range:D

    iget-object v5, p0, Lmiuix/animation/easing/PerlinEasing;->interpolator:Lmiuix/animation/function/Differentiable;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/motion/PerlinMotion;-><init>(DDLmiuix/animation/function/Differentiable;)V

    return-object v6
.end method
