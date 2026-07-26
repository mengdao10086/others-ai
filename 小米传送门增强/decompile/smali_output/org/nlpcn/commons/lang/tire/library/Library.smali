.class public Lorg/nlpcn/commons/lang/tire/library/Library;
.super Ljava/lang/Object;
.source "Library.java"


# direct methods
.method private static varargs insertWord(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_2d

    .line 101
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_19

    .line 102
    new-instance v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    aget-char v3, p1, v0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, p2}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>(CI[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    goto :goto_25

    .line 104
    :cond_19
    new-instance v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    aget-char v3, p1, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v4}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>(CI[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 106
    :goto_25
    aget-char v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p0

    move v0, v2

    goto :goto_5

    :cond_2d
    return-void
.end method

.method public static insertWord(Lorg/nlpcn/commons/lang/tire/domain/Forest;Lorg/nlpcn/commons/lang/tire/domain/Value;)V
    .registers 3

    .line 75
    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/Value;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/Value;->getParamers()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/nlpcn/commons/lang/tire/library/Library;->insertWord(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
