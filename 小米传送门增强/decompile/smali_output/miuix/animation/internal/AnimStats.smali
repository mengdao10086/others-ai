.class Lmiuix/animation/internal/AnimStats;
.super Ljava/lang/Object;
.source "AnimStats.java"

# interfaces
.implements Lmiuix/animation/utils/ObjectPool$IPoolObject;


# instance fields
.field public animCount:I

.field public cancelCount:I

.field public endCount:I

.field public failCount:I

.field public focusCount:I

.field public focusEndCount:I

.field public prepareCount:I

.field public startedCount:I

.field public updateCount:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)V
    .registers 4

    .line 8
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->animCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 9
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    .line 10
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->startedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    .line 11
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 12
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 13
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 14
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 15
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->focusCount:I

    iget v1, p1, Lmiuix/animation/internal/AnimStats;->focusCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 16
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    iget p1, p1, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 55
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    .line 56
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    .line 57
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 58
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 59
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 60
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 61
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 62
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    return-void
.end method

.method public isNeedSetup()Z
    .registers 2

    .line 35
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRunning()Z
    .registers 4

    .line 43
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 46
    :cond_8
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v0, :cond_11

    iget v2, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-ne v0, v2, :cond_11

    return v1

    .line 49
    :cond_11
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v2, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v0, v2

    iget v2, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/2addr v0, v2

    iget v2, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    if-ge v0, v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isStarted()Z
    .registers 2

    .line 39
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public prepareOnFrameStart()V
    .registers 2

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimStats{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->focusCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
