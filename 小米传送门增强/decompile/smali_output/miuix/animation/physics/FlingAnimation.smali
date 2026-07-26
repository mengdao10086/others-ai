.class public final Lmiuix/animation/physics/FlingAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/physics/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    .line 46
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 74
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    .line 46
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 62
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4

    .line 182
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result p1

    return p1
.end method

.method public getFriction()F
    .registers 2

    .line 101
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    .line 187
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 189
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public setFriction(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 90
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    .line 88
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 126
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMinValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 113
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;
    .registers 2

    .line 153
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3

    .line 194
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 6

    .line 160
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object p1

    .line 161
    iget p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 162
    iget p1, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 165
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1c

    .line 166
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    return v2

    .line 169
    :cond_1c
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_25

    .line 170
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    return v2

    .line 174
    :cond_25
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v2

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method
