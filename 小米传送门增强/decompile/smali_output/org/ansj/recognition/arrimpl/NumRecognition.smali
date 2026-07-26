.class public Lorg/ansj/recognition/arrimpl/NumRecognition;
.super Ljava/lang/Object;
.source "NumRecognition.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognition([Lorg/ansj/domain/Term;)V
    .registers 10

    .line 16
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10e

    .line 21
    aget-object v2, p1, v1

    if-nez v2, :cond_c

    goto/16 :goto_10a

    .line 23
    :cond_c
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_b9

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\uff0e"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_b9

    .line 35
    :cond_29
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v2

    iget-object v2, v2, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget-boolean v2, v2, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    if-nez v2, :cond_37

    goto/16 :goto_10a

    .line 39
    :cond_37
    aget-object v2, p1, v1

    .line 41
    :goto_39
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v3

    iget-object v3, v3, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget-boolean v3, v3, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    if-eqz v3, :cond_66

    .line 42
    aget-object v3, p1, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/ansj/domain/Term;->setName(Ljava/lang/String;)V

    goto :goto_39

    .line 45
    :cond_66
    sget-object v3, Lorg/ansj/util/MyStaticValue;->isQuantifierRecognition:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v3

    iget-object v3, v3, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget v3, v3, Lorg/ansj/domain/NumNatureAttr;->numEndFreq:I

    if-lez v3, :cond_9a

    .line 46
    aget-object v3, p1, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/ansj/domain/Term;->setName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v2

    .line 51
    :cond_9a
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v3

    if-eq v3, v2, :cond_10a

    .line 52
    aget-object v3, p1, v1

    invoke-static {v3, v2}, Lorg/ansj/util/TermUtil;->termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    :goto_a7
    add-int/lit8 v1, v1, 0x1

    .line 54
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v3

    if-ge v1, v3, :cond_b2

    .line 55
    aput-object v4, p1, v1

    goto :goto_a7

    .line 57
    :cond_b2
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v1

    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_10a

    .line 25
    :cond_b9
    :goto_b9
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v2

    .line 26
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/ansj/domain/Term;->from()Lorg/ansj/domain/Term;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v6

    iget-object v6, v6, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget-boolean v6, v6, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    if-eqz v6, :cond_10a

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v6

    iget-object v6, v6, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget-boolean v6, v6, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    if-eqz v6, :cond_10a

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/ansj/domain/Term;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->to()Lorg/ansj/domain/Term;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/ansj/util/TermUtil;->termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    .line 30
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v2

    aput-object v4, p1, v2

    .line 31
    aput-object v4, p1, v1

    .line 32
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v1

    goto :goto_b6

    :cond_10a
    :goto_10a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_10e
    return-void
.end method
