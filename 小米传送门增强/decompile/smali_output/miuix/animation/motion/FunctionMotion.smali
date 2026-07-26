.class public final Lmiuix/animation/motion/FunctionMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "FunctionMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private final function:Lmiuix/animation/function/Differentiable;


# direct methods
.method public constructor <init>(Lmiuix/animation/function/Differentiable;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 9
    iput-object p1, p0, Lmiuix/animation/motion/FunctionMotion;->function:Lmiuix/animation/function/Differentiable;

    return-void
.end method


# virtual methods
.method public solve()Lmiuix/animation/function/Differentiable;
    .registers 2

    .line 14
    iget-object v0, p0, Lmiuix/animation/motion/FunctionMotion;->function:Lmiuix/animation/function/Differentiable;

    return-object v0
.end method
