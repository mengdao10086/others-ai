.class public Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
.super Lmiuix/animation/utils/EaseManager$EaseStyle;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterpolateEaseStyle"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public duration:J


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 352
    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-direct {p0, p1, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[D)V

    const-wide/16 v0, 0x12c

    .line 348
    iput-wide v0, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    return-void
.end method

.method public varargs constructor <init>(I[D)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[D)V

    const-wide/16 p1, 0x12c

    .line 348
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    return-void
.end method

.method public varargs constructor <init>(I[F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    const-wide/16 p1, 0x12c

    .line 348
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    const/4 p1, 0x0

    .line 359
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    return-void
.end method


# virtual methods
.method public setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .registers 3

    .line 369
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interpolate{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", factors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 378
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
