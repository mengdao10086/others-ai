.class public Lmiuix/animation/base/AnimSpecialConfig;
.super Lmiuix/animation/base/AnimConfig;
.source "AnimSpecialConfig.java"

# interfaces
.implements Lmiuix/animation/internal/DesignReview;


# instance fields
.field public hasSetSafeValue:Z

.field public maxValue:D

.field public minValue:D


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning: AnimSpecialConfig should not use addListeners trace:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miuix_anim"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDesignInfo()Ljava/lang/String;
    .registers 8

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ease"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v3}, Lmiuix/animation/utils/EaseManager$EaseStyle;->getDesignInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-wide v3, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3f

    .line 224
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    :cond_3f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public setMinAndMax(DD)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 6

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lmiuix/animation/base/AnimSpecialConfig;->hasSetSafeValue:Z

    cmpl-double v0, p1, p3

    if-lez v0, :cond_c

    .line 34
    iput-wide p3, p0, Lmiuix/animation/base/AnimSpecialConfig;->minValue:D

    .line 35
    iput-wide p1, p0, Lmiuix/animation/base/AnimSpecialConfig;->maxValue:D

    goto :goto_10

    .line 37
    :cond_c
    iput-wide p1, p0, Lmiuix/animation/base/AnimSpecialConfig;->minValue:D

    .line 38
    iput-wide p3, p0, Lmiuix/animation/base/AnimSpecialConfig;->maxValue:D

    :goto_10
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 90
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 12

    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 120
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 104
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 134
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 12

    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 165
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 149
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(J[F)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    .line 51
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 11

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 76
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 9

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 63
    invoke-super/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method
