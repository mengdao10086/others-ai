.class public Lorg/ansj/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public static compuScore(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Ljava/util/Map;)D
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/domain/Term;",
            "Lorg/ansj/domain/Term;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v0

    iget v0, v0, Lorg/ansj/domain/TermNatures;->allFreq:I

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1d

    .line 34
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->score()D

    move-result-wide p1

    const-wide v0, 0x413fbcfd00000000L    # 2079997.0

    add-double/2addr p1, v0

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/ansj/domain/Term;->score(D)V

    return-wide p1

    .line 39
    :cond_1d
    invoke-static {p0, p1}, Lorg/ansj/library/NgramLibrary;->getTwoWordFreq(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)I

    move-result v4

    int-to-double v4, v4

    if-eqz p2, :cond_4d

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_4d

    .line 44
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    add-double/2addr v4, p1

    :cond_4d
    const-wide p1, 0x3fb999999999999aL    # 0.1

    mul-double/2addr p1, v0

    const-wide v6, 0x41407abe80000000L    # 2159997.0

    div-double/2addr p1, v6

    const-wide v6, 0x3feffffefde37c19L    # 0.9999995192300758

    mul-double/2addr v4, v6

    div-double/2addr v4, v0

    const-wide v6, 0x3ea021c83e6d7b14L    # 4.807699241873907E-7

    add-double/2addr v4, v6

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    add-double/2addr p1, v4

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    cmpg-double v2, p1, v2

    if-gez v2, :cond_77

    add-double/2addr p1, v0

    .line 53
    :cond_77
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->score()D

    move-result-wide v0

    add-double/2addr v0, p1

    return-wide v0
.end method
