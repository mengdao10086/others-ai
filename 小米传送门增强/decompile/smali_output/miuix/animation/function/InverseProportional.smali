.class public Lmiuix/animation/function/InverseProportional;
.super Ljava/lang/Object;
.source "InverseProportional.java"

# interfaces
.implements Lmiuix/animation/function/Differentiable;


# instance fields
.field private derivative:Lmiuix/animation/function/Function;

.field private final k:D


# direct methods
.method public static synthetic $r8$lambda$JMtYRsHZJX7ZwpntedCp3rKerNM(Lmiuix/animation/function/InverseProportional;D)D
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/animation/function/InverseProportional;->lambda$derivative$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>(D)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lmiuix/animation/function/InverseProportional;->k:D

    return-void
.end method

.method private synthetic lambda$derivative$0(D)D
    .registers 5

    .line 19
    iget-wide v0, p0, Lmiuix/animation/function/InverseProportional;->k:D

    neg-double v0, v0

    div-double/2addr v0, p1

    div-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public apply(D)D
    .registers 5

    .line 13
    iget-wide v0, p0, Lmiuix/animation/function/InverseProportional;->k:D

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public derivative()Lmiuix/animation/function/Function;
    .registers 2

    .line 18
    iget-object v0, p0, Lmiuix/animation/function/InverseProportional;->derivative:Lmiuix/animation/function/Function;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lmiuix/animation/function/InverseProportional$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/animation/function/InverseProportional$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/function/InverseProportional;)V

    iput-object v0, p0, Lmiuix/animation/function/InverseProportional;->derivative:Lmiuix/animation/function/Function;

    .line 21
    :cond_b
    iget-object v0, p0, Lmiuix/animation/function/InverseProportional;->derivative:Lmiuix/animation/function/Function;

    return-object v0
.end method
