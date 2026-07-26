.class public Lmiuix/animation/utils/VelocityMonitor;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    }
.end annotation


# static fields
.field private static final MAX_DELTA:J = 0x64L

.field private static final MAX_RECORD_COUNT:I = 0xa

.field private static final MIN_DELTA:J = 0x1eL

.field private static final TIME_THRESHOLD:J = 0x32L


# instance fields
.field private mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

.field private mMaxDeltaTime:Ljava/lang/Long;

.field private mMinDeltaTime:Ljava/lang/Long;

.field private mReadIndex:I

.field private mSize:I

.field private mVelocity:[F

.field private mWriteIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1e

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    const/16 v0, 0xa

    .line 22
    new-array v0, v0, [Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    .line 24
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mReadIndex:I

    .line 25
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    return-void
.end method

.method private addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 p1, 0xa

    .line 66
    rem-int/2addr v1, p1

    iput v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    .line 67
    iget v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    if-ge v0, p1, :cond_16

    add-int/lit8 v0, v0, 0x1

    .line 68
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    goto :goto_18

    .line 70
    :cond_16
    iput v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mReadIndex:I

    .line 72
    :goto_18
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->updateVelocity()V

    return-void
.end method

.method private calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 116
    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v8, v2, p1

    .line 117
    iget-wide v10, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 118
    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    .line 119
    iget-wide v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v0

    move-object/from16 v0, p0

    move-wide v1, v8

    .line 120
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v12, v0

    .line 123
    iget v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0xa

    move v14, v0

    .line 126
    :goto_23
    iget v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mReadIndex:I

    const/4 v15, 0x0

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    if-eq v14, v0, :cond_6f

    .line 127
    iget-object v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    aget-object v0, v0, v14

    .line 128
    iget-wide v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v1

    .line 129
    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v5, v1

    if-lez v1, :cond_6a

    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v5, v1

    if-gez v1, :cond_6a

    .line 130
    iget-object v0, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v1, v0

    mul-double v3, v12, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_71

    cmpl-float v0, v0, v15

    if-lez v0, :cond_64

    .line 132
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_68

    :cond_64
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_68
    double-to-float v0, v0

    goto :goto_71

    :cond_6a
    add-int/lit8 v14, v14, 0x9

    .line 138
    rem-int/lit8 v14, v14, 0xa

    goto :goto_23

    :cond_6f
    move/from16 v0, v16

    :cond_71
    :goto_71
    cmpl-float v1, v0, v16

    if-nez v1, :cond_aa

    .line 142
    iget v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mReadIndex:I

    if-eq v14, v1, :cond_aa

    .line 143
    iget v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    add-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0xa

    .line 144
    iget-object v2, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v2

    .line 145
    iget-object v2, v7, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-lez v2, :cond_aa

    iget-object v2, v7, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-gez v2, :cond_aa

    .line 146
    iget-object v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    :cond_aa
    cmpl-float v1, v0, v16

    if-nez v1, :cond_af

    goto :goto_b0

    :cond_af
    move v15, v0

    :goto_b0
    return v15
.end method

.method private clearVelocity()V
    .registers 3

    .line 94
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_8
    return-void
.end method

.method private getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    .registers 4

    .line 59
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;-><init>(Lmiuix/animation/utils/VelocityMonitor$1;)V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    return-object v0
.end method

.method private getVelocity(DDJ)F
    .registers 9

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_9

    const-wide/16 p1, 0x0

    goto :goto_10

    :cond_9
    sub-double/2addr p1, p3

    long-to-float p3, p5

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    div-double/2addr p1, p3

    :goto_10
    double-to-float p1, p1

    return p1
.end method

.method private updateVelocity()V
    .registers 6

    .line 100
    iget v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_37

    .line 101
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    add-int/lit8 v2, v1, 0x9

    rem-int/lit8 v2, v2, 0xa

    aget-object v2, v0, v2

    add-int/lit8 v1, v1, 0x8

    .line 102
    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    .line 104
    iget-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v1, :cond_1f

    array-length v1, v1

    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_26

    .line 105
    :cond_1f
    iget-object v1, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    :cond_26
    const/4 v1, 0x0

    .line 107
    :goto_27
    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_3a

    .line 108
    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    invoke-direct {p0, v1, v2, v0}, Lmiuix/animation/utils/VelocityMonitor;->calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 111
    :cond_37
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    :cond_3a
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    .line 87
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mReadIndex:I

    .line 88
    iput v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    const/16 v0, 0xa

    .line 89
    new-array v0, v0, [Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 90
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    return-void
.end method

.method public getVelocity(I)F
    .registers 8

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    iget v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mSize:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:[Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget v4, p0, Lmiuix/animation/utils/VelocityMonitor;->mWriteIndex:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit8 v4, v4, 0xa

    aget-object v2, v2, v4

    iget-wide v4, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-lez v0, :cond_21

    goto :goto_2b

    .line 79
    :cond_21
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v0, :cond_2b

    array-length v1, v0

    if-le v1, p1, :cond_2b

    .line 80
    aget p1, v0, p1

    return p1

    :cond_2b
    :goto_2b
    return v3
.end method

.method public setMaxFeedbackTime(J)V
    .registers 3

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    return-void
.end method

.method public setMinFeedbackTime(J)V
    .registers 3

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    return-void
.end method

.method public varargs update([D)V
    .registers 3

    if-eqz p1, :cond_f

    .line 50
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_f

    .line 53
    :cond_6
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    .line 54
    iput-object p1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 55
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public varargs update([F)V
    .registers 7

    if-eqz p1, :cond_20

    .line 38
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_20

    .line 41
    :cond_6
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    .line 42
    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    const/4 v1, 0x0

    .line 43
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 44
    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget v3, p1, v1

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 46
    :cond_1d
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_20
    :goto_20
    return-void
.end method
