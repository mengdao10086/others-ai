.class public Lmiuix/animation/utils/EaseManager$EaseStyle;
.super Ljava/lang/Object;
.source "EaseManager.java"

# interfaces
.implements Lmiuix/animation/internal/DesignReview;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EaseStyle"
.end annotation


# instance fields
.field public volatile factors:[D

.field public parameters:[D

.field public stopAtTarget:Z

.field public final style:I


# direct methods
.method public varargs constructor <init>(I[D)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    if-eqz p2, :cond_1c

    .line 156
    array-length p1, p2

    if-lez p1, :cond_1c

    .line 157
    array-length p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 158
    :goto_11
    array-length p1, p2

    if-ge v1, p1, :cond_27

    .line 159
    iget-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-wide v2, p2, v1

    aput-wide v2, p1, v1

    add-int/2addr v1, v0

    goto :goto_11

    .line 162
    :cond_1c
    new-array p1, v0, [D

    const-wide v2, 0x4072c00000000000L    # 300.0

    aput-wide v2, p1, v1

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    :cond_27
    const/4 p1, 0x3

    .line 164
    new-array p1, p1, [D

    fill-array-data p1, :array_34

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 165
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    return-void

    nop

    :array_34
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>(I[F)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    if-eqz p2, :cond_1d

    .line 142
    array-length p1, p2

    if-lez p1, :cond_1d

    .line 143
    array-length p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 144
    :goto_11
    array-length p1, p2

    if-ge v1, p1, :cond_28

    .line 145
    iget-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget v2, p2, v1

    float-to-double v2, v2

    aput-wide v2, p1, v1

    add-int/2addr v1, v0

    goto :goto_11

    .line 148
    :cond_1d
    new-array p1, v0, [D

    const-wide v2, 0x4072c00000000000L    # 300.0

    aput-wide v2, p1, v1

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    :cond_28
    const/4 p1, 0x3

    .line 150
    new-array p1, p1, [D

    fill-array-data p1, :array_34

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 151
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    return-void

    :array_34
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>(I[Lmiuix/animation/physics/FactorOperator;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 170
    array-length p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    const/4 p1, 0x0

    .line 171
    :goto_b
    array-length v0, p2

    if-ge p1, v0, :cond_1b

    .line 172
    iget-object v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-object v1, p2, p1

    invoke-virtual {v1}, Lmiuix/animation/physics/FactorOperator;->getFactor()D

    move-result-wide v1

    aput-wide v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1b
    const/4 p1, 0x2

    .line 174
    new-array p1, p1, [D

    fill-array-data p1, :array_28

    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 175
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V

    return-void

    nop

    :array_28
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static setParameters(Lmiuix/animation/utils/EaseManager$EaseStyle;[D)V
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    .line 233
    :cond_4
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/internal/FolmeCore;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_12

    .line 235
    iget-object p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    invoke-interface {v0, p0, p1}, Lmiuix/animation/physics/PhysicsOperator;->getParameters([D[D)V

    goto :goto_17

    :cond_12
    const-wide/16 v0, 0x0

    .line 237
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :goto_17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 194
    :cond_4
    instance-of v1, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 197
    :cond_a
    check-cast p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 198
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget v3, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    iget-object p1, p1, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 199
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public getDesignInfo()Ljava/lang/String;
    .registers 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Lmiuix/animation/FolmeEase;->getStyleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 222
    :goto_1e
    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    array-length v2, v2

    if-ge v1, v2, :cond_3a

    .line 223
    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 224
    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_32

    goto :goto_3a

    .line 226
    :cond_32
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3a
    :goto_3a
    const/16 v1, 0x5d

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 204
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public varargs setFactors([D)V
    .registers 2

    .line 186
    iput-object p1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    return-void
.end method

.method public varargs setFactors([Lmiuix/animation/physics/FactorOperator;)V
    .registers 6

    .line 179
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    const/4 v0, 0x0

    .line 180
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 181
    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lmiuix/animation/physics/FactorOperator;->getFactor()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ease{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", factors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    .line 213
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
