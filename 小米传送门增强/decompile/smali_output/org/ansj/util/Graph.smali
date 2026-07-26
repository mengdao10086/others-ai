.class public Lorg/ansj/util/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# instance fields
.field public chars:[C

.field protected end:Lorg/ansj/domain/Term;

.field public hasNum:Z

.field public hasPerson:Z

.field public realStr:Ljava/lang/String;

.field protected root:Lorg/ansj/domain/Term;

.field public terms:[Lorg/ansj/domain/Term;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/ansj/util/Graph;->chars:[C

    .line 22
    iput-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    .line 23
    iput-object v0, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    .line 24
    iput-object v0, p0, Lorg/ansj/util/Graph;->root:Lorg/ansj/domain/Term;

    .line 35
    iput-object p1, p0, Lorg/ansj/util/Graph;->realStr:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/ansj/util/Graph;->chars:[C

    .line 37
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/ansj/domain/Term;

    iput-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    .line 38
    new-instance v0, Lorg/ansj/domain/Term;

    array-length p1, p1

    sget-object v1, Lorg/ansj/domain/AnsjItem;->END:Lorg/ansj/domain/AnsjItem;

    const-string v2, "\u672b##\u672b"

    invoke-direct {v0, v2, p1, v1}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/AnsjItem;)V

    iput-object v0, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    .line 39
    new-instance p1, Lorg/ansj/domain/Term;

    const/4 v0, -0x1

    sget-object v1, Lorg/ansj/domain/AnsjItem;->BEGIN:Lorg/ansj/domain/AnsjItem;

    const-string v2, "\u59cb##\u59cb"

    invoke-direct {p1, v2, v0, v1}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/AnsjItem;)V

    iput-object p1, p0, Lorg/ansj/util/Graph;->root:Lorg/ansj/domain/Term;

    .line 40
    iget-object p1, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    iget-object v0, p0, Lorg/ansj/util/Graph;->chars:[C

    array-length v0, v0

    iget-object v1, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    aput-object v1, p1, v0

    return-void
.end method

.method private getMaxTerm(I)Lorg/ansj/domain/Term;
    .registers 3

    .line 164
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aget-object p1, v0, p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object p1, v0

    goto :goto_8

    :cond_10
    return-object p1
.end method

.method private merger(Lorg/ansj/domain/Term;ILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/domain/Term;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aget-object v0, v0, p2

    if-eqz v0, :cond_10

    :goto_6
    if-eqz v0, :cond_36

    .line 304
    invoke-virtual {v0, p1, p3}, Lorg/ansj/domain/Term;->setPathScore(Lorg/ansj/domain/Term;Ljava/util/Map;)V

    .line 305
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object v0

    goto :goto_6

    .line 308
    :cond_10
    iget-object v0, p0, Lorg/ansj/util/Graph;->chars:[C

    aget-char v0, v0, p2

    .line 309
    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v1

    iget-object v1, v1, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    if-eqz v1, :cond_20

    .line 310
    sget-object v2, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    if-ne v1, v2, :cond_22

    .line 311
    :cond_20
    sget-object v1, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    .line 313
    :cond_22
    iget-object v2, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    new-instance v3, Lorg/ansj/domain/Term;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p2, v1}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    aput-object v3, v2, p2

    .line 314
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1, p3}, Lorg/ansj/domain/Term;->setPathScore(Lorg/ansj/domain/Term;Ljava/util/Map;)V

    :cond_36
    return-void
.end method

.method private mergerByScore(Lorg/ansj/domain/Term;I)V
    .registers 4

    .line 329
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aget-object p2, v0, p2

    if-eqz p2, :cond_10

    :goto_6
    if-eqz p2, :cond_10

    .line 333
    invoke-virtual {p2, p1}, Lorg/ansj/domain/Term;->setPathSelfScore(Lorg/ansj/domain/Term;)V

    .line 334
    invoke-virtual {p2}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object p2

    goto :goto_6

    :cond_10
    return-void
.end method


# virtual methods
.method public addTerm(Lorg/ansj/domain/Term;)V
    .registers 4

    .line 57
    iget-boolean v0, p0, Lorg/ansj/util/Graph;->hasNum:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v0

    iget-object v0, v0, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    iget v0, v0, Lorg/ansj/domain/NumNatureAttr;->numFreq:I

    if-lez v0, :cond_11

    .line 58
    iput-boolean v1, p0, Lorg/ansj/util/Graph;->hasNum:Z

    .line 61
    :cond_11
    iget-boolean v0, p0, Lorg/ansj/util/Graph;->hasPerson:Z

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v0

    iget-object v0, v0, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget-boolean v0, v0, Lorg/ansj/domain/PersonNatureAttr;->flag:Z

    if-eqz v0, :cond_21

    .line 62
    iput-boolean v1, p0, Lorg/ansj/util/Graph;->hasPerson:Z

    .line 64
    :cond_21
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    sget-object v1, Lorg/ansj/util/TermUtil$InsertTermType;->REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-static {v0, p1, v1}, Lorg/ansj/util/TermUtil;->insertTerm([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Lorg/ansj/util/TermUtil$InsertTermType;)V

    return-void
.end method

.method protected optimalRoot()Lorg/ansj/domain/Term;
    .registers 6

    .line 74
    iget-object v0, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    .line 75
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->clearScore()V

    .line 77
    :goto_5
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->from()Lorg/ansj/domain/Term;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 78
    invoke-virtual {v1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v2

    :goto_f
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1d

    .line 79
    iget-object v3, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aput-object v4, v3, v2

    goto :goto_f

    .line 81
    :cond_1d
    invoke-virtual {v1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2c

    .line 82
    iget-object v2, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-virtual {v1}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v3

    aput-object v1, v2, v3

    .line 85
    :cond_2c
    invoke-virtual {v1, v4}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 86
    invoke-virtual {v1, v0}, Lorg/ansj/domain/Term;->setTo(Lorg/ansj/domain/Term;)V

    .line 87
    invoke-virtual {v1}, Lorg/ansj/domain/Term;->clearScore()V

    move-object v0, v1

    goto :goto_5

    .line 90
    :cond_37
    iget-object v0, p0, Lorg/ansj/util/Graph;->root:Lorg/ansj/domain/Term;

    return-object v0
.end method

.method public rmLittlePath()V
    .registers 12

    .line 102
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v3, v0, :cond_61

    .line 104
    invoke-direct {p0, v3}, Lorg/ansj/util/Graph;->getMaxTerm(I)Lorg/ansj/domain/Term;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_5f

    .line 108
    :cond_11
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->toValue()I

    move-result v6

    .line 113
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v1, :cond_5f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_23

    goto :goto_2d

    .line 117
    :cond_23
    iget-object v7, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_2d

    move v3, v8

    goto :goto_5f

    :cond_2d
    :goto_2d
    add-int/lit8 v7, v3, 0x1

    move v8, v7

    :goto_30
    if-ge v8, v6, :cond_48

    .line 127
    invoke-direct {p0, v8}, Lorg/ansj/util/Graph;->getMaxTerm(I)Lorg/ansj/domain/Term;

    move-result-object v9

    if-nez v9, :cond_39

    goto :goto_45

    .line 131
    :cond_39
    invoke-virtual {v9}, Lorg/ansj/domain/Term;->toValue()I

    move-result v10

    if-ge v6, v10, :cond_45

    .line 132
    invoke-virtual {v9}, Lorg/ansj/domain/Term;->toValue()I

    move-result v4

    move v6, v4

    move v4, v1

    :cond_45
    :goto_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_48
    if-eqz v4, :cond_4e

    add-int/lit8 v3, v6, -0x1

    move v4, v2

    goto :goto_5f

    :cond_4e
    const/4 v8, 0x0

    .line 141
    invoke-virtual {v5, v8}, Lorg/ansj/domain/Term;->setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;

    .line 142
    iget-object v9, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aput-object v5, v9, v3

    :goto_56
    if-ge v7, v6, :cond_5f

    .line 144
    iget-object v5, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_5f
    :goto_5f
    add-int/2addr v3, v1

    goto :goto_8

    :cond_61
    return-void
.end method

.method public walkPath()V
    .registers 2

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lorg/ansj/util/Graph;->walkPath(Ljava/util/Map;)V

    return-void
.end method

.method public walkPath(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/ansj/util/Graph;->root:Lorg/ansj/domain/Term;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/ansj/util/Graph;->merger(Lorg/ansj/domain/Term;ILjava/util/Map;)V

    .line 278
    :goto_6
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 279
    aget-object v0, v0, v1

    :goto_d
    if-eqz v0, :cond_25

    .line 280
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->from()Lorg/ansj/domain/Term;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    if-eq v0, v2, :cond_25

    .line 281
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->toValue()I

    move-result v2

    .line 282
    invoke-direct {p0, v0, v2, p1}, Lorg/ansj/util/Graph;->merger(Lorg/ansj/domain/Term;ILjava/util/Map;)V

    .line 283
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object v0

    goto :goto_d

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 286
    :cond_28
    invoke-virtual {p0}, Lorg/ansj/util/Graph;->optimalRoot()Lorg/ansj/domain/Term;

    return-void
.end method

.method public walkPathByScore()V
    .registers 4

    .line 251
    iget-object v0, p0, Lorg/ansj/util/Graph;->root:Lorg/ansj/domain/Term;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/ansj/util/Graph;->mergerByScore(Lorg/ansj/domain/Term;I)V

    .line 253
    :goto_6
    iget-object v0, p0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 254
    aget-object v0, v0, v1

    :goto_d
    if-eqz v0, :cond_25

    .line 255
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->from()Lorg/ansj/domain/Term;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/ansj/util/Graph;->end:Lorg/ansj/domain/Term;

    if-eq v0, v2, :cond_25

    .line 256
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->toValue()I

    move-result v2

    .line 257
    invoke-direct {p0, v0, v2}, Lorg/ansj/util/Graph;->mergerByScore(Lorg/ansj/domain/Term;I)V

    .line 258
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->next()Lorg/ansj/domain/Term;

    move-result-object v0

    goto :goto_d

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 261
    :cond_28
    invoke-virtual {p0}, Lorg/ansj/util/Graph;->optimalRoot()Lorg/ansj/domain/Term;

    return-void
.end method
