.class public Lmiuix/springback/view/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


# instance fields
.field private mCurrX:D

.field private mCurrY:D

.field private mCurrentTimeNanos:J

.field private mEndX:D

.field private mEndY:D

.field private mFinished:Z

.field private mFirstStep:I

.field private mLastStep:Z

.field private mOrientation:I

.field private mOriginStartX:D

.field private mOriginStartY:D

.field private mOriginVelocity:D

.field private mSpringOperator:Lmiuix/springback/view/SpringOperator;

.field private mStartTimeNanos:J

.field private mStartX:D

.field private mStartY:D

.field private mVelocity:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .registers 16

    .line 72
    iget-object v0, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_b

    goto/16 :goto_af

    .line 75
    :cond_b
    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 76
    iget v3, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    if-ne v3, v2, :cond_1b

    int-to-double v3, v0

    .line 77
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    int-to-double v3, v0

    .line 78
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    goto :goto_21

    :cond_1b
    int-to-double v3, v0

    .line 80
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    int-to-double v3, v0

    .line 81
    iput-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 83
    :goto_21
    iput v1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return v2

    .line 86
    :cond_24
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    if-eqz v0, :cond_2b

    .line 87
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return v2

    .line 90
    :cond_2b
    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTimeNanos:J

    .line 91
    iget-wide v3, p0, Lmiuix/springback/view/SpringScroller;->mStartTimeNanos:J

    sub-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v3

    const-wide v3, 0x3f90624de0000000L    # 0.01600000075995922

    .line 92
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-nez v5, :cond_4b

    goto :goto_4c

    :cond_4b
    move-wide v3, v0

    .line 94
    :goto_4c
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrentTimeNanos:J

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartTimeNanos:J

    .line 95
    iget v0, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_82

    .line 96
    iget-object v6, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    iget-wide v7, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v11, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    iget-wide v13, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    move-wide v9, v3

    invoke-virtual/range {v6 .. v14}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DDDD)D

    move-result-wide v0

    .line 97
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    mul-double/2addr v3, v0

    add-double v8, v5, v3

    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    .line 98
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 99
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 100
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    .line 101
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    goto :goto_ae

    .line 103
    :cond_7d
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    goto :goto_ae

    .line 106
    :cond_82
    iget-object v6, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    iget-wide v7, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    iget-wide v11, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    iget-wide v13, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    move-wide v9, v3

    invoke-virtual/range {v6 .. v14}, Lmiuix/springback/view/SpringOperator;->updateVelocity(DDDD)D

    move-result-wide v0

    .line 107
    iget-wide v5, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    mul-double/2addr v3, v0

    add-double v8, v5, v3

    iput-wide v8, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    .line 108
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 109
    iget-wide v10, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    iget-wide v12, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lmiuix/springback/view/SpringScroller;->isAtEquilibrium(DDD)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 110
    iput-boolean v2, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    .line 111
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    goto :goto_ae

    .line 113
    :cond_aa
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    :goto_ae
    return v2

    :cond_af
    :goto_af
    return v1
.end method

.method public final forceStop()V
    .registers 2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return-void
.end method

.method public final getCurrX()I
    .registers 3

    .line 137
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .registers 3

    .line 142
    iget-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DDD)Z
    .registers 11

    cmpg-double v0, p3, p5

    const/4 v1, 0x1

    if-gez v0, :cond_a

    cmpl-double v0, p1, p5

    if-lez v0, :cond_a

    return v1

    :cond_a
    cmpl-double p3, p3, p5

    if-lez p3, :cond_13

    cmpg-double p4, p1, p5

    if-gez p4, :cond_13

    return v1

    :cond_13
    if-nez p3, :cond_24

    .line 127
    iget-wide p3, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p3

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    cmpl-double p3, p3, v2

    if-eqz p3, :cond_24

    return v1

    :cond_24
    sub-double/2addr p1, p5

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method public final isFinished()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    return v0
.end method

.method public scrollByFling(FFFFFIZ)V
    .registers 10

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mFinished:Z

    .line 52
    iput-boolean v0, p0, Lmiuix/springback/view/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 53
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mStartX:D

    .line 54
    iput-wide v0, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartX:D

    float-to-double p1, p2

    .line 55
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndX:D

    float-to-double p1, p3

    .line 56
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartY:D

    .line 57
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginStartY:D

    double-to-int p1, p1

    int-to-double p1, p1

    .line 58
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mCurrY:D

    float-to-double p1, p4

    .line 59
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mEndY:D

    float-to-double p1, p5

    .line 60
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mOriginVelocity:D

    .line 61
    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mVelocity:D

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x40b3880000000000L    # 5000.0

    cmpg-double p1, p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    if-lez p1, :cond_3b

    if-eqz p7, :cond_30

    goto :goto_3b

    .line 65
    :cond_30
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3f0ccccd    # 0.55f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    goto :goto_45

    .line 63
    :cond_3b
    :goto_3b
    new-instance p1, Lmiuix/springback/view/SpringOperator;

    const p3, 0x3ecccccd    # 0.4f

    invoke-direct {p1, p2, p3}, Lmiuix/springback/view/SpringOperator;-><init>(FF)V

    iput-object p1, p0, Lmiuix/springback/view/SpringScroller;->mSpringOperator:Lmiuix/springback/view/SpringOperator;

    .line 67
    :goto_45
    iput p6, p0, Lmiuix/springback/view/SpringScroller;->mOrientation:I

    .line 68
    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/springback/view/SpringScroller;->mStartTimeNanos:J

    return-void
.end method

.method public setFirstStep(I)V
    .registers 2

    .line 155
    iput p1, p0, Lmiuix/springback/view/SpringScroller;->mFirstStep:I

    return-void
.end method
