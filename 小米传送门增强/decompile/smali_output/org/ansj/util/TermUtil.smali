.class public Lorg/ansj/util/TermUtil;
.super Ljava/lang/Object;
.source "TermUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ansj/util/TermUtil$InsertTermType;
    }
.end annotation


# static fields
.field private static final companyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 137
    invoke-static {}, Lorg/ansj/library/company/CompanyAttrLibrary;->getCompanyMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/ansj/util/TermUtil;->companyMap:Ljava/util/HashMap;

    return-void
.end method

.method public static insertTerm([Lorg/ansj/domain/Term;Ljava/util/List;Lorg/ansj/domain/TermNatures;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/ansj/domain/Term;",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;",
            "Lorg/ansj/domain/TermNatures;",
            ")V"
        }
    .end annotation

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ansj/domain/Term;

    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v0

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ansj/domain/Term;

    .line 123
    invoke-virtual {v1}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, p0, v1

    goto :goto_14

    .line 126
    :cond_2f
    new-instance p1, Lorg/ansj/domain/Term;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lorg/ansj/domain/TermNatures;->NR:Lorg/ansj/domain/TermNatures;

    invoke-direct {p1, p2, v0, v1}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    .line 127
    invoke-static {p0, p1}, Lorg/ansj/util/TermUtil;->insertTermNum([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V

    return-void
.end method

.method public static insertTerm([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Lorg/ansj/util/TermUtil$InsertTermType;)V
    .registers 8

    .line 65
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v0

    aget-object v0, p0, v0

    if-nez v0, :cond_f

    .line 68
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result p2

    aput-object p1, p0, p2

    return-void

    .line 72
    :cond_f
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_50

    .line 76
    sget-object v1, Lorg/ansj/util/TermUtil$InsertTermType;->REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

    if-ne p2, v1, :cond_33

    .line 77
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 78
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result p2

    aput-object p1, p0, p2

    goto :goto_4f

    .line 79
    :cond_33
    sget-object p0, Lorg/ansj/util/TermUtil$InsertTermType;->SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

    if-ne p2, p0, :cond_4f

    .line 80
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->score()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->score()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/ansj/domain/Term;->score(D)V

    .line 81
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->selfScore()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->selfScore()D

    move-result-wide p0

    add-double/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/ansj/domain/Term;->selfScore(D)V

    :cond_4f
    :goto_4f
    return-void

    .line 86
    :cond_50
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_64

    .line 87
    invoke-virtual {p1, v0}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 88
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result p2

    aput-object p1, p0, p2

    return-void

    .line 94
    :cond_64
    :goto_64
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object p0

    if-eqz p0, :cond_b3

    .line 95
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_a0

    .line 96
    sget-object v1, Lorg/ansj/util/TermUtil$InsertTermType;->REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

    if-ne p2, v1, :cond_83

    .line 97
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 98
    invoke-virtual {v0, p1}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    goto :goto_9f

    .line 99
    :cond_83
    sget-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

    if-ne p2, v0, :cond_9f

    .line 100
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->score()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->score()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/ansj/domain/Term;->score(D)V

    .line 101
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->selfScore()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->selfScore()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/ansj/domain/Term;->selfScore(D)V

    :cond_9f
    :goto_9f
    return-void

    .line 104
    :cond_a0
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_b1

    .line 105
    invoke-virtual {v0, p1}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 106
    invoke-virtual {p1, p0}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    return-void

    :cond_b1
    move-object v0, p0

    goto :goto_64

    .line 112
    :cond_b3
    invoke-virtual {v0, p1}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    return-void
.end method

.method public static insertTermNum([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V
    .registers 3

    .line 116
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v0

    aput-object p1, p0, v0

    return-void
.end method

.method public static termLink(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)V
    .registers 2

    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 39
    :cond_5
    invoke-virtual {p0, p1}, Lorg/ansj/domain/Term;->setTo(Lorg/ansj/domain/Term;)V

    .line 40
    invoke-virtual {p1, p0}, Lorg/ansj/domain/Term;->setFrom(Lorg/ansj/domain/Term;)V

    :cond_b
    :goto_b
    return-void
.end method
