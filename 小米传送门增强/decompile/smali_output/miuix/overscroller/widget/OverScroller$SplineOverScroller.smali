.class Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:D

.field private mCurrentPosition:D

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:D

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastStep:Z

.field private mOriginStart:D

.field private mPhysicalCoeff:F

.field private mSpringAnimData:Lmiuix/animation/internal/AnimData;

.field private mSpringFactor:[D

.field private mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field private mSpringParams:[D

.field private mStart:D

.field private mStartTime:J

.field private mState:I

.field private mVelocity:D


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 639
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 647
    new-array v1, v0, [F

    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 648
    new-array v0, v0, [F

    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_24
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_ac

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 677
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_a4

    .line 681
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move v3, v4

    :goto_6a
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 689
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_95

    .line 693
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_95
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_a2

    move v3, v6

    :goto_9d
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_6a

    :cond_a2
    move v1, v6

    goto :goto_9d

    :cond_a4
    cmpl-float v7, v16, v5

    if-lez v7, :cond_aa

    move v3, v6

    goto :goto_30

    :cond_aa
    move v0, v6

    goto :goto_30

    .line 695
    :cond_ac
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 631
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 703
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 705
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 706
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    .line 589
    iget-boolean p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    .line 589
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 589
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method static synthetic access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 589
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-wide v0
.end method

.method static synthetic access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 589
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-wide v0
.end method

.method static synthetic access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .registers 3

    .line 589
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-wide v0
.end method

.method static synthetic access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    .line 589
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    .line 589
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method


# virtual methods
.method computeScrollOffset()Z
    .registers 21

    move-object/from16 v0, p0

    .line 776
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v1, :cond_c

    goto :goto_75

    .line 779
    :cond_c
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    .line 780
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 781
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v3

    .line 784
    :cond_18
    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide v4

    .line 785
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v8

    const-wide v8, 0x3f90624de0000000L    # 0.01600000075995922

    .line 786
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v1, v6, v10

    if-nez v1, :cond_39

    move-wide/from16 v17, v8

    goto :goto_3b

    :cond_39
    move-wide/from16 v17, v6

    .line 788
    :goto_3b
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 789
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringAnimData:Lmiuix/animation/internal/AnimData;

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v4, v10, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 790
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v4, v10, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 791
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide v4, v10, Lmiuix/animation/internal/AnimData;->value:D

    .line 792
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringFactor:[D

    aget-wide v11, v1, v2

    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    aget-wide v13, v1, v3

    const/4 v2, 0x2

    aget-wide v15, v1, v2

    const/16 v19, 0x0

    invoke-static/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateValues(Lmiuix/animation/internal/AnimData;DDDDZ)V

    .line 793
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringAnimData:Lmiuix/animation/internal/AnimData;

    iget-wide v4, v1, Lmiuix/animation/internal/AnimData;->value:D

    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 794
    iget-wide v1, v1, Lmiuix/animation/internal/AnimData;->velocity:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 795
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    invoke-virtual {v0, v4, v5, v1, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isAtEquilibrium(DD)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 796
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    goto :goto_74

    .line 798
    :cond_70
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    :goto_74
    return v3

    :cond_75
    :goto_75
    return v2
.end method

.method continueWhenFinished()Z
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method finish()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method fling(IIIII)V
    .registers 6

    const/4 p0, 0x0

    throw p0
.end method

.method final getCurrVelocity()F
    .registers 3

    .line 1096
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-float v0, v0

    return v0
.end method

.method final getCurrentPosition()I
    .registers 3

    .line 1088
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    double-to-int v0, v0

    return v0
.end method

.method final getFinal()I
    .registers 3

    .line 1112
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v0

    return v0
.end method

.method final getStart()I
    .registers 3

    .line 1104
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v0, v0

    return v0
.end method

.method final getState()I
    .registers 2

    .line 1128
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method isAtEquilibrium(DD)Z
    .registers 5

    sub-double/2addr p1, p3

    .line 804
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method final isFinished()Z
    .registers 2

    .line 1080
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method final setCurrVelocity(F)V
    .registers 4

    float-to-double v0, p1

    .line 1100
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-void
.end method

.method final setCurrentPosition(I)V
    .registers 4

    int-to-double v0, p1

    .line 1092
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method

.method final setDuration(I)V
    .registers 2

    .line 1124
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method final setFinal(I)V
    .registers 4

    int-to-double v0, p1

    .line 1116
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-void
.end method

.method setFinalPosition(I)V
    .registers 4

    int-to-double v0, p1

    .line 816
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const/4 p1, 0x0

    .line 817
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method final setFinished(Z)V
    .registers 2

    .line 1084
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method final setStart(I)V
    .registers 4

    int-to-double v0, p1

    .line 1108
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-void
.end method

.method final setStartTime(J)V
    .registers 3

    .line 1140
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-void
.end method

.method final setState(I)V
    .registers 2

    .line 1132
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return-void
.end method

.method springback(III)Z
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method startScroll(III)V
    .registers 6

    const/4 v0, 0x0

    .line 743
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p1

    .line 745
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 746
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 748
    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 749
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 752
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    const-wide/16 p1, 0x0

    .line 753
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method startScrollByFling(FII)V
    .registers 6

    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 758
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 759
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setState(I)V

    float-to-double v0, p1

    .line 760
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOriginStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 761
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 762
    invoke-static {}, Lmiuix/view/animation/AnimationUtils;->currentAnimationTimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p1, p3

    .line 763
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 764
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 p1, 0x2

    .line 765
    new-array p1, p1, [D

    fill-array-data p1, :array_52

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringFactor:[D

    .line 766
    new-instance p1, Lmiuix/animation/internal/AnimData;

    invoke-direct {p1}, Lmiuix/animation/internal/AnimData;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringAnimData:Lmiuix/animation/internal/AnimData;

    .line 767
    iget-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 768
    iget-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 769
    iget-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 770
    iget-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    const/4 p1, 0x3

    .line 771
    new-array p1, p1, [D

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 772
    iget-object p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    iget-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringFactor:[D

    invoke-virtual {p2, p3, p1}, Lmiuix/animation/physics/SpringOperator;->getParameters([D[D)V

    return-void

    :array_52
    .array-data 8
        0x3fefae147ae147aeL    # 0.99
        0x3fd999999999999aL    # 0.4
    .end array-data
.end method

.method update()Z
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method updateScroll(F)V
    .registers 8

    .line 713
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    float-to-double v2, p1

    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method
