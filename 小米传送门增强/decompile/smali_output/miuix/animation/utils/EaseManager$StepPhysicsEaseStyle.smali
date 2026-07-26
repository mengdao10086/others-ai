.class public Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;
.super Lmiuix/animation/utils/EaseManager$EaseStyle;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StepPhysicsEaseStyle"
.end annotation


# direct methods
.method public varargs constructor <init>(I[D)V
    .registers 3

    .line 245
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[D)V

    return-void
.end method

.method public varargs constructor <init>(I[Lmiuix/animation/physics/FactorOperator;)V
    .registers 3

    .line 250
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[Lmiuix/animation/physics/FactorOperator;)V

    return-void
.end method

.method private static setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    .line 284
    :cond_4
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_12

    .line 286
    iget-object p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    invoke-interface {v0, p0, p1}, Lmiuix/animation/physics/PhysicsOperator;->getParameters([D[D)V

    goto :goto_17

    :cond_12
    const-wide/16 v0, 0x0

    .line 288
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :goto_17
    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 3

    .line 269
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public varargs setFactors([D)V
    .registers 2

    .line 263
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 264
    iget-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    return-void
.end method

.method public varargs setFactors([Lmiuix/animation/physics/FactorOperator;)V
    .registers 6

    .line 255
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    const/4 v0, 0x0

    .line 256
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 257
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lmiuix/animation/physics/FactorOperator;->getFactor()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 259
    :cond_16
    iget-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StepPhyEase{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", factors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 278
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 279
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
