.class public abstract Lmiuix/animation/motion/BaseMotion;
.super Ljava/lang/Object;
.source "BaseMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# instance fields
.field private initialV:D

.field private initialX:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialV()D
    .registers 3

    .line 30
    iget-wide v0, p0, Lmiuix/animation/motion/BaseMotion;->initialV:D

    return-wide v0
.end method

.method public getInitialX()D
    .registers 3

    .line 25
    iget-wide v0, p0, Lmiuix/animation/motion/BaseMotion;->initialX:D

    return-wide v0
.end method

.method protected onInitialVChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method protected onInitialXChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public final setInitialV(D)V
    .registers 5

    .line 17
    iget-wide v0, p0, Lmiuix/animation/motion/BaseMotion;->initialV:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_b

    .line 18
    iput-wide p1, p0, Lmiuix/animation/motion/BaseMotion;->initialV:D

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialVChanged()V

    :cond_b
    return-void
.end method

.method public final setInitialX(D)V
    .registers 5

    .line 9
    iget-wide v0, p0, Lmiuix/animation/motion/BaseMotion;->initialX:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_b

    .line 10
    iput-wide p1, p0, Lmiuix/animation/motion/BaseMotion;->initialX:D

    .line 11
    invoke-virtual {p0}, Lmiuix/animation/motion/BaseMotion;->onInitialXChanged()V

    :cond_b
    return-void
.end method
