.class public Landroidx/constraintlayout/core/widgets/Guideline;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "Guideline.java"


# instance fields
.field protected guidelineUseRtl:Z

.field private mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 47
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_27
    if-ge v0, v1, :cond_32

    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_32
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 10

    .line 217
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez p2, :cond_9

    return-void

    .line 221
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 222
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    .line 223
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_25

    move v2, v3

    goto :goto_26

    :cond_25
    move v2, v4

    .line 224
    :goto_26
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v5, :cond_45

    .line 225
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 226
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    .line 227
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p2, :cond_43

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v2, :cond_43

    goto :goto_44

    :cond_43
    move v3, v4

    :goto_44
    move v2, v3

    .line 229
    :cond_45
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_87

    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 230
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    .line 234
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 235
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-eq v6, v3, :cond_70

    if-eqz v2, :cond_84

    .line 237
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_84

    .line 239
    :cond_70
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v6, v3, :cond_84

    if-eqz v2, :cond_84

    .line 241
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 242
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 243
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 246
    :cond_84
    :goto_84
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return-void

    .line 249
    :cond_87
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_a6

    .line 250
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    .line 251
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 252
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, p2, v0, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v2, :cond_e2

    .line 254
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_e2

    .line 256
    :cond_a6
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq p2, v3, :cond_c7

    .line 257
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    .line 258
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 259
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v2, :cond_e2

    .line 261
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 262
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_e2

    .line 264
    :cond_c7
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_e2

    .line 265
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    .line 266
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 267
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 268
    invoke-static {p1, p2, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object p2

    .line 267
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 2

    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    .line 127
    sget-object v0, Landroidx/constraintlayout/core/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    goto :goto_23

    .line 137
    :cond_15
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez p1, :cond_23

    .line 138
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 130
    :cond_1c
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-ne p1, v0, :cond_23

    .line 131
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrientation()I
    .registers 2

    .line 118
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .registers 2

    .line 185
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeEnd()I
    .registers 2

    .line 189
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    .line 181
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public setFinalValue(I)V
    .registers 3

    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return-void
.end method

.method public setGuideBegin(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 166
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 167
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 168
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 174
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 175
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 176
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 158
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    .line 159
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_d
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 86
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 89
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 92
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    goto :goto_1a

    .line 94
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 96
    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p1, :cond_30

    .line 99
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 5

    .line 275
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 278
    :cond_7
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    .line 279
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_28

    .line 280
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 281
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 282
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 283
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_3c

    .line 285
    :cond_28
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 286
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 287
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 288
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    :goto_3c
    return-void
.end method
