.class public Lmiuix/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public final animInfo:Lmiuix/animation/internal/AnimInfo;

.field public frameCount:I

.field public isCompleted:Z

.field public justStart:Z

.field public preparedTransitionId:Ljava/lang/Integer;

.field public final property:Lmiuix/animation/property/FloatProperty;

.field public final useInt:Z

.field public velocity:D


# direct methods
.method public constructor <init>(Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    .line 47
    new-instance v0, Lmiuix/animation/internal/AnimInfo;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimInfo;-><init>()V

    iput-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 50
    iput-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 51
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    iput-boolean p1, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    return-void
.end method

.method public static findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/property/FloatProperty;",
            ")",
            "Lmiuix/animation/listener/UpdateInfo;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 28
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmiuix/animation/listener/UpdateInfo;"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 19
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSafeFloatValue(FLmiuix/animation/base/AnimSpecialConfig;)F
    .registers 5

    if-eqz p1, :cond_18

    .line 182
    iget-boolean v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->hasSetSafeValue:Z

    if-nez v0, :cond_7

    goto :goto_18

    .line 185
    :cond_7
    iget-wide v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->minValue:D

    double-to-float v2, v0

    cmpg-float v2, p0, v2

    if-gez v2, :cond_10

    :goto_e
    double-to-float p0, v0

    goto :goto_18

    .line 187
    :cond_10
    iget-wide v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->maxValue:D

    double-to-float p1, v0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_18

    goto :goto_e

    :cond_18
    :goto_18
    return p0
.end method

.method public static getSafeIntValue(ILmiuix/animation/base/AnimSpecialConfig;)I
    .registers 5

    if-eqz p1, :cond_14

    .line 170
    iget-boolean v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->hasSetSafeValue:Z

    if-nez v0, :cond_7

    goto :goto_14

    .line 173
    :cond_7
    iget-wide v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->minValue:D

    double-to-int v2, v0

    if-ge p0, v2, :cond_e

    :goto_c
    double-to-int p0, v0

    goto :goto_14

    .line 175
    :cond_e
    iget-wide v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->maxValue:D

    double-to-int p1, v0

    if-le p0, p1, :cond_14

    goto :goto_c

    :cond_14
    :goto_14
    return p0
.end method


# virtual methods
.method public getFloatValue()F
    .registers 6

    .line 69
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_f

    double-to-float v0, v1

    return v0

    .line 73
    :cond_f
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1b

    move-wide v0, v2

    :cond_1b
    double-to-float v0, v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4e

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warning value is Float.MAX_VALUE !! correct to startValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-float v0, v1

    return v0

    :cond_4e
    const v1, -0x800001

    .line 79
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 7

    .line 83
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_f

    double-to-int v0, v1

    return v0

    .line 87
    :cond_f
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    cmpl-double v2, v0, v3

    const v3, 0x7fffffff

    if-ltz v2, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    double-to-int v0, v0

    :goto_1b
    if-ne v0, v3, :cond_48

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warning value is Integer.MAX_VALUE !! correct to startValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-int v0, v1

    return v0

    :cond_48
    const v1, -0x7fffffff

    .line 93
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v0, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_b

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_b
    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 59
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_24

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    goto :goto_24

    .line 61
    :cond_9
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_1b

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    goto :goto_1b

    .line 64
    :cond_12
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 60
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 119
    iput v0, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    return-void
.end method

.method public setOp(B)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    const/4 v1, 0x2

    if-le p1, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    move v1, v0

    .line 123
    :goto_a
    iput-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v1, :cond_1c

    .line 124
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 125
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-boolean v0, v1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 127
    :cond_1c
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-byte p1, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 128
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- UpdateInfo id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 130
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "justEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-boolean v3, v3, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_92
    return-void
.end method

.method public setTargetValue(Lmiuix/animation/IAnimTarget;Z)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 155
    iget-boolean p2, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz p2, :cond_12

    .line 156
    iget-object p2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    check-cast p2, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/IAnimTarget;->doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_35

    .line 158
    :cond_12
    iget-object p2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/IAnimTarget;->doSetValue(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_35

    .line 161
    :cond_1c
    iget-boolean p2, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz p2, :cond_2c

    .line 162
    iget-object p2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    check-cast p2, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_35

    .line 164
    :cond_2c
    iget-object p2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_35
    return-void
.end method

.method public skipToTargetValue(Lmiuix/animation/IAnimTarget;)V
    .registers 7

    .line 144
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_f

    .line 145
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    :cond_f
    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;Z)V

    const/4 p1, 0x3

    .line 149
    invoke-virtual {p0, p1}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 98
    iget-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_e
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateInfo{id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 100
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v2, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", v_format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", p="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", op="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", start-v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", target-v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", useInt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", completed="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", setTo-v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", velocity="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", start-t="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", frameCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", frameInterval="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->frameInterval:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
