.class public Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    }
.end annotation


# instance fields
.field private mDependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalValue:I

.field mGoneMargin:I

.field private mHasFinalValue:Z

.field public mMargin:I

.field public final mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

.field public mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    const/high16 v0, -0x80000000

    .line 99
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 132
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 133
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    return-void
.end method


# virtual methods
.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    return v0

    :cond_7
    if-nez p4, :cond_11

    .line 219
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    move-result p4

    if-nez p4, :cond_11

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_11
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 223
    iget-object p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-nez p4, :cond_1e

    .line 224
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 226
    :cond_1e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz p1, :cond_27

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_27
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 230
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0
.end method

.method public findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v0, :cond_1a

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 43
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v1, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public getDependents()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    return-object v0
.end method

.method public getFinalValue()I
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    return v0
.end method

.method public getMargin()I
    .registers 4

    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 174
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_21

    .line 175
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    return v0

    .line 177
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    return v0
.end method

.method public final getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 3

    .line 490
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 510
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :pswitch_19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 498
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 495
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 492
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    :pswitch_2d
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    .line 157
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;
    .registers 2

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    return-object v0
.end method

.method public getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 2

    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public hasCenteredDependents()Z
    .registers 4

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 60
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method public hasDependents()Z
    .registers 3

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 53
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public hasFinalValue()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 262
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_27

    .line 264
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v2, v1, :cond_26

    .line 265
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result p1

    if-nez p1, :cond_26

    :cond_25
    return v0

    :cond_26
    return v3

    .line 270
    :cond_27
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_92

    .line 303
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_3e
    return v0

    .line 293
    :pswitch_3f
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_49

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_48

    goto :goto_49

    :cond_48
    return v3

    :cond_49
    :goto_49
    return v0

    .line 286
    :pswitch_4a
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_55

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_53

    goto :goto_55

    :cond_53
    move v2, v0

    goto :goto_56

    :cond_55
    :goto_55
    move v2, v3

    .line 287
    :goto_56
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz p1, :cond_66

    if-nez v2, :cond_64

    .line 288
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_65

    :cond_64
    move v0, v3

    :cond_65
    move v2, v0

    :cond_66
    return v2

    .line 278
    :pswitch_67
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_72

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_70

    goto :goto_72

    :cond_70
    move v2, v0

    goto :goto_73

    :cond_72
    :goto_72
    move v2, v3

    .line 279
    :goto_73
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    instance-of p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz p1, :cond_83

    if-nez v2, :cond_81

    .line 280
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_82

    :cond_81
    move v0, v3

    :cond_82
    move v2, v0

    :cond_83
    return v2

    .line 273
    :pswitch_84
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_91

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_91

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v1, p1, :cond_91

    move v0, v3

    :cond_91
    return v0

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_84
        :pswitch_67
        :pswitch_67
        :pswitch_4a
        :pswitch_4a
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v0, :cond_1a

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 193
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 196
    :cond_1a
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 197
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    const/high16 v1, -0x80000000

    .line 199
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 200
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    .line 201
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    return-void
.end method

.method public resetFinalResolution()V
    .registers 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    .line 83
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    return-void
.end method

.method public resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V
    .registers 4

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez p1, :cond_f

    .line 147
    new-instance p1, Landroidx/constraintlayout/core/SolverVariable;

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_12

    .line 149
    :cond_f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    :goto_12
    return-void
.end method

.method public setFinalValue(I)V
    .registers 2

    .line 70
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
