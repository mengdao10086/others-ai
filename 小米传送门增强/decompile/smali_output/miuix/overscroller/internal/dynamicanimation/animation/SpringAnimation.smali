.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 62
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method


# virtual methods
.method public getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;
    .registers 2

    .line 117
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    .line 264
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result p1

    return p1
.end method

.method public setSpring(Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;
    .registers 2

    .line 129
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 2

    .line 0
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 23

    move-object/from16 v0, p0

    .line 217
    iget-boolean v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_26

    .line 218
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_19

    .line 219
    iget-object v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 220
    iput v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 222
    :cond_19
    iget-object v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 223
    iput v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 224
    iput-boolean v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return v2

    .line 228
    :cond_26
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_63

    .line 229
    iget-object v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 232
    iget-object v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 233
    iget-object v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    iget v7, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 234
    iput v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 236
    iget-object v13, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    iget v5, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 237
    iget v5, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 238
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    goto :goto_7b

    .line 241
    :cond_63
    iget-object v13, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 242
    iget v5, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 243
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 246
    :goto_7b
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 247
    iget v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 249
    iget v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 250
    iget-object v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 251
    iput v4, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return v2

    :cond_a0
    return v3
.end method
