.class public Lorg/ansj/util/NameFix;
.super Ljava/lang/Object;
.source "NameFix.java"


# direct methods
.method public static nameAmbiguity([Lorg/ansj/domain/Term;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 16
    :goto_2
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_76

    .line 17
    aget-object v2, p0, v1

    if-eqz v2, :cond_73

    .line 18
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v5

    sget-object v6, Lorg/ansj/domain/TermNatures;->NR:Lorg/ansj/domain/TermNatures;

    if-ne v5, v6, :cond_73

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_73

    add-int/lit8 v5, v1, 0x2

    .line 19
    aget-object v6, p0, v5

    .line 20
    invoke-virtual {v6}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v7

    iget-object v7, v7, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget v7, v7, Lorg/ansj/domain/PersonNatureAttr;->split:I

    if-lez v7, :cond_73

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/ansj/domain/Term;->setName(Ljava/lang/String;)V

    .line 22
    aput-object v4, p0, v5

    .line 24
    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x3

    .line 25
    new-instance v7, Lorg/ansj/domain/Term;

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v4}, Lorg/ansj/recognition/impl/NatureRecognition;->getTermNatures(Ljava/lang/String;)Lorg/ansj/domain/TermNatures;

    move-result-object v3

    invoke-direct {v7, v4, v8, v3}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    aput-object v7, p0, v5

    .line 26
    invoke-static {v2, v7}, Lorg/ansj/util/TermUtil;->termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    .line 27
    aget-object v2, p0, v5

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ansj/util/TermUtil;->termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_76
    move v1, v0

    .line 33
    :goto_77
    array-length v2, p0

    if-ge v1, v2, :cond_ed

    .line 34
    aget-object v2, p0, v1

    if-eqz v2, :cond_ea

    .line 35
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_ea

    if-lez v1, :cond_ea

    .line 36
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/nlpcn/commons/lang/util/WordAlert;->CharCover(C)C

    move-result v5

    const/16 v6, 0xb7

    if-ne v5, v6, :cond_ea

    .line 37
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->from()Lorg/ansj/domain/Term;

    move-result-object v5

    .line 38
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v6

    .line 40
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->natrue()Lorg/ansj/domain/Nature;

    move-result-object v7

    iget-object v7, v7, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    const-string v8, "nr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->natrue()Lorg/ansj/domain/Nature;

    move-result-object v7

    iget-object v7, v7, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/ansj/domain/Term;->setName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v6}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/ansj/util/TermUtil;->termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    .line 43
    aput-object v4, p0, v1

    add-int/lit8 v2, v1, 0x1

    .line 44
    aput-object v4, p0, v2

    :cond_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_ed
    return-void
.end method
