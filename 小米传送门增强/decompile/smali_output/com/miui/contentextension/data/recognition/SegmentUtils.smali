.class public Lcom/miui/contentextension/data/recognition/SegmentUtils;
.super Ljava/lang/Object;
.source "SegmentUtils.java"


# direct methods
.method public static getOriginStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    .line 56
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_21

    .line 63
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 64
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 5

    if-eqz p0, :cond_1a

    .line 74
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 76
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static segmentPassageLocally(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    const-string v0, "Taplus.SegmentUtils"

    if-nez p2, :cond_5

    return-void

    .line 30
    :cond_5
    :try_start_5
    invoke-static {p0}, Lorg/ansj/util/MyStaticValue;->setContext(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lorg/ansj/splitWord/analysis/ToAnalysis;->parse(Ljava/lang/String;)Lorg/ansj/domain/Result;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lorg/ansj/domain/Result;->getTerms()Ljava/util/List;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_62

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ansj/domain/Term;

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    if-ge v3, v1, :cond_2c

    .line 36
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ansj/domain/Term;

    goto :goto_2d

    :catch_2a
    move-exception p0

    goto :goto_83

    :cond_2c
    move-object v6, v5

    .line 37
    :goto_2d
    invoke-static {v4}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->getOriginStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_34

    goto :goto_38

    .line 38
    :cond_34
    invoke-static {v6}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->getOriginStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;

    move-result-object v5

    .line 39
    :goto_38
    invoke-static {v7}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_16

    :cond_3f
    if-eqz v5, :cond_55

    .line 42
    invoke-static {v5}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 43
    new-instance v5, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-static {v4}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->getStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/miui/contentextension/data/recognition/WordBean;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 45
    :cond_55
    new-instance v5, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-static {v4}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->getStrFromTerm(Lorg/ansj/domain/Term;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v2}, Lcom/miui/contentextension/data/recognition/WordBean;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 48
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-segmentResult:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_82} :catch_2a

    goto :goto_88

    .line 51
    :goto_83
    const-string p1, "segmentPassageLocally"

    invoke-static {v0, p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_88
    return-void
.end method
