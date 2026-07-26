.class public Lmiuix/animation/function/Polynomial;
.super Ljava/lang/Object;
.source "Polynomial.java"

# interfaces
.implements Lmiuix/animation/function/Differentiable;


# instance fields
.field private final a:[D

.field private derivative:Lmiuix/animation/function/Function;


# direct methods
.method public varargs constructor <init>(I[D)V
    .registers 9

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr p1, v1

    if-ne v0, p1, :cond_31

    const/4 p1, 0x0

    .line 15
    aget-wide v2, p2, p1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_14

    .line 16
    iput-object p2, p0, Lmiuix/animation/function/Polynomial;->a:[D

    goto :goto_30

    .line 20
    :cond_14
    :goto_14
    array-length v0, p2

    if-ge v1, v0, :cond_21

    .line 21
    aget-wide v2, p2, v1

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 23
    :cond_21
    :goto_21
    array-length v0, p2

    if-ne v1, v0, :cond_26

    add-int/lit8 v1, v1, -0x1

    .line 24
    :cond_26
    array-length v0, p2

    sub-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lmiuix/animation/function/Polynomial;->a:[D

    .line 25
    array-length v2, v0

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_30
    return-void

    .line 13
    :cond_31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params must have a length of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public apply(D)D
    .registers 8

    .line 31
    iget-object v0, p0, Lmiuix/animation/function/Polynomial;->a:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/4 v2, 0x1

    .line 32
    :goto_6
    iget-object v3, p0, Lmiuix/animation/function/Polynomial;->a:[D

    array-length v4, v3

    if-ge v2, v4, :cond_12

    mul-double/2addr v0, p1

    .line 33
    aget-wide v3, v3, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-wide v0
.end method

.method public derivative()Lmiuix/animation/function/Function;
    .registers 9

    .line 40
    iget-object v0, p0, Lmiuix/animation/function/Polynomial;->derivative:Lmiuix/animation/function/Function;

    if-nez v0, :cond_2d

    .line 41
    iget-object v0, p0, Lmiuix/animation/function/Polynomial;->a:[D

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 42
    sget-object v0, Lmiuix/animation/function/Constant;->ZERO:Lmiuix/animation/function/Constant;

    iput-object v0, p0, Lmiuix/animation/function/Polynomial;->derivative:Lmiuix/animation/function/Function;

    goto :goto_2d

    .line 44
    :cond_f
    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_24

    sub-int v4, v1, v3

    int-to-double v4, v4

    .line 46
    iget-object v6, p0, Lmiuix/animation/function/Polynomial;->a:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 48
    :cond_24
    new-instance v1, Lmiuix/animation/function/Polynomial;

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v1, v0, v2}, Lmiuix/animation/function/Polynomial;-><init>(I[D)V

    iput-object v1, p0, Lmiuix/animation/function/Polynomial;->derivative:Lmiuix/animation/function/Function;

    .line 51
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lmiuix/animation/function/Polynomial;->derivative:Lmiuix/animation/function/Function;

    return-object v0
.end method
