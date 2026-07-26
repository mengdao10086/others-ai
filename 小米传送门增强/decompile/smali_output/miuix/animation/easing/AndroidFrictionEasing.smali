.class public Lmiuix/animation/easing/AndroidFrictionEasing;
.super Lmiuix/animation/easing/AndroidDampingEasing;
.source "AndroidFrictionEasing.java"

# interfaces
.implements Lmiuix/animation/easing/PhysicalEasing;


# direct methods
.method public constructor <init>(D)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/animation/easing/AndroidDampingEasing;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Friction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/easing/DampingEasing;->getDamping()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
