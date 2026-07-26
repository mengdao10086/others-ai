.class public abstract Lorg/ansj/splitWord/Analysis;
.super Ljava/lang/Object;
.source "Analysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ansj/splitWord/Analysis$Merger;
    }
.end annotation


# instance fields
.field private ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field protected forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field private gwi:Lorg/ansj/splitWord/impl/GetWordsImpl;

.field private terms:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/ansj/splitWord/impl/GetWordsImpl;

    invoke-direct {v0}, Lorg/ansj/splitWord/impl/GetWordsImpl;-><init>()V

    iput-object v0, p0, Lorg/ansj/splitWord/Analysis;->gwi:Lorg/ansj/splitWord/impl/GetWordsImpl;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/ansj/splitWord/Analysis;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 46
    sget-object v0, Lorg/ansj/library/UserDefineLibrary;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    iput-object v0, p0, Lorg/ansj/splitWord/Analysis;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/ansj/splitWord/Analysis;->terms:Ljava/util/LinkedList;

    return-void
.end method

.method public static alertEnglish([CII)Ljava/lang/String;
    .registers 6

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_2e

    .line 214
    aget-char v1, p0, v0

    const v2, 0xff41

    if-lt v1, v2, :cond_18

    const v2, 0xff5a

    if-gt v1, v2, :cond_18

    const v2, 0xfee0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    .line 215
    aput-char v1, p0, v0

    .line 218
    :cond_18
    aget-char v1, p0, v0

    const v2, 0xff21

    if-lt v1, v2, :cond_2b

    const v2, 0xff3a

    if-gt v1, v2, :cond_2b

    const v2, 0xfec0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    .line 219
    aput-char v1, p0, v0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private analysis(Lorg/ansj/util/Graph;II)V
    .registers 11

    .line 141
    iget-object v0, p1, Lorg/ansj/util/Graph;->chars:[C

    :goto_2
    if-ge p2, p3, :cond_101

    .line 146
    aget-char v1, v0, p2

    invoke-static {v1}, Lorg/ansj/library/DATDictionary;->status(C)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_81

    .line 179
    aget-char v1, v0, p2

    move v3, p2

    move v4, v3

    .line 180
    :goto_17
    sget-object v5, Lorg/ansj/library/DATDictionary;->IN_SYSTEM:[C

    aget-char v5, v5, v1

    if-lez v5, :cond_27

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v4, p3, :cond_24

    goto :goto_27

    .line 184
    :cond_24
    aget-char v1, v0, v4

    goto :goto_17

    :cond_27
    :goto_27
    if-ne p2, v3, :cond_38

    .line 188
    new-instance p2, Lorg/ansj/domain/Term;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    invoke-direct {p2, v1, v4, v3}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, p2}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    goto :goto_7a

    .line 192
    :cond_38
    iget-object v5, p0, Lorg/ansj/splitWord/Analysis;->gwi:Lorg/ansj/splitWord/impl/GetWordsImpl;

    invoke-virtual {v5, v0, p2, v3}, Lorg/ansj/splitWord/impl/GetWordsImpl;->setChars([CII)V

    .line 193
    :goto_3d
    iget-object p2, p0, Lorg/ansj/splitWord/Analysis;->gwi:Lorg/ansj/splitWord/impl/GetWordsImpl;

    invoke-virtual {p2}, Lorg/ansj/splitWord/impl/GetWordsImpl;->allWords()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_56

    .line 194
    new-instance v3, Lorg/ansj/domain/Term;

    iget-object v5, p0, Lorg/ansj/splitWord/Analysis;->gwi:Lorg/ansj/splitWord/impl/GetWordsImpl;

    iget v6, v5, Lorg/ansj/splitWord/impl/GetWordsImpl;->offe:I

    invoke-virtual {v5}, Lorg/ansj/splitWord/impl/GetWordsImpl;->getItem()Lorg/ansj/domain/AnsjItem;

    move-result-object v5

    invoke-direct {v3, p2, v6, v5}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/AnsjItem;)V

    invoke-virtual {p1, v3}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    goto :goto_3d

    .line 200
    :cond_56
    sget-object p2, Lorg/ansj/library/DATDictionary;->IN_SYSTEM:[C

    aget-char p2, p2, v1

    if-gtz p2, :cond_7d

    invoke-static {v1}, Lorg/ansj/library/DATDictionary;->status(C)I

    move-result p2

    const/4 v3, 0x3

    if-gt p2, v3, :cond_7d

    aget-char p2, v0, v4

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_6c

    goto :goto_7d

    .line 203
    :cond_6c
    new-instance p2, Lorg/ansj/domain/Term;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    invoke-direct {p2, v1, v4, v3}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, p2}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    :goto_7a
    move p2, v4

    goto/16 :goto_fe

    :cond_7d
    :goto_7d
    add-int/lit8 p2, v4, -0x1

    goto/16 :goto_fe

    :cond_81
    move v1, p2

    move v4, v2

    :goto_83
    add-int/lit8 v5, v1, 0x1

    if-ge v5, p3, :cond_93

    .line 169
    aget-char v6, v0, v5

    invoke-static {v6}, Lorg/ansj/library/DATDictionary;->status(C)I

    move-result v6

    if-ne v6, v3, :cond_93

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_83

    .line 172
    :cond_93
    invoke-static {v0, p2, v4}, Lorg/nlpcn/commons/lang/util/WordAlert;->alertNumber([CII)Ljava/lang/String;

    move-result-object v3

    .line 173
    new-instance v4, Lorg/ansj/domain/Term;

    sget-object v5, Lorg/ansj/domain/TermNatures;->M:Lorg/ansj/domain/TermNatures;

    invoke-direct {v4, v3, p2, v5}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, v4}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    :goto_a1
    move p2, v1

    goto :goto_fe

    :cond_a3
    move v1, p2

    move v4, v2

    :goto_a5
    add-int/lit8 v5, v1, 0x1

    if-ge v5, p3, :cond_b5

    .line 159
    aget-char v6, v0, v5

    invoke-static {v6}, Lorg/ansj/library/DATDictionary;->status(C)I

    move-result v6

    if-ne v6, v3, :cond_b5

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_a5

    .line 162
    :cond_b5
    invoke-static {v0, p2, v4}, Lorg/ansj/splitWord/Analysis;->alertEnglish([CII)Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v4, Lorg/ansj/domain/Term;

    sget-object v5, Lorg/ansj/domain/TermNatures;->EN:Lorg/ansj/domain/TermNatures;

    invoke-direct {v4, v3, p2, v5}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, v4}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    goto :goto_a1

    .line 148
    :cond_c4
    aget-char v1, v0, p2

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_ee

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_ee

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 149
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    invoke-static {v0, p2, v4}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 150
    new-instance v4, Lorg/ansj/domain/Term;

    sget-object v5, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    invoke-direct {v4, v3, p2, v5}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, v4}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    goto :goto_a1

    .line 153
    :cond_ee
    new-instance v1, Lorg/ansj/domain/Term;

    aget-char v3, v0, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    invoke-direct {v1, v3, p2, v4}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {p1, v1}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    :goto_fe
    add-int/2addr p2, v2

    goto/16 :goto_2

    :cond_101
    return-void
.end method

.method private analysisStr(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/ansj/util/Graph;

    invoke-direct {v0, p1}, Lorg/ansj/util/Graph;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lorg/ansj/splitWord/Analysis;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4f

    .line 116
    new-instance v3, Lorg/nlpcn/commons/lang/tire/GetWord;

    iget-object v4, v0, Lorg/ansj/util/Graph;->chars:[C

    invoke-direct {v3, p1, v4}, Lorg/nlpcn/commons/lang/tire/GetWord;-><init>(Lorg/nlpcn/commons/lang/tire/domain/Forest;[C)V

    move p1, v2

    .line 118
    :goto_13
    invoke-virtual {v3}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->getFrontWords()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 119
    iget v4, v3, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    if-le v4, p1, :cond_20

    .line 120
    invoke-direct {p0, v0, p1, v4}, Lorg/ansj/splitWord/Analysis;->analysis(Lorg/ansj/util/Graph;II)V

    .line 122
    :cond_20
    invoke-virtual {v3}, Lorg/nlpcn/commons/lang/tire/GetWord;->getParams()[Ljava/lang/String;

    move-result-object p1

    .line 123
    iget v4, v3, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    move v5, v2

    .line 124
    :goto_27
    array-length v6, p1

    if-ge v5, v6, :cond_4c

    .line 125
    new-instance v6, Lorg/ansj/domain/Term;

    aget-object v7, p1, v5

    new-instance v8, Lorg/ansj/domain/TermNatures;

    new-instance v9, Lorg/ansj/domain/TermNature;

    add-int/lit8 v10, v5, 0x1

    aget-object v10, p1, v10

    invoke-direct {v9, v10, v1}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    invoke-direct {v8, v9}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    invoke-direct {v6, v7, v4, v8}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    invoke-virtual {v0, v6}, Lorg/ansj/util/Graph;->addTerm(Lorg/ansj/domain/Term;)V

    .line 126
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_27

    :cond_4c
    move p1, v4

    goto :goto_13

    :cond_4e
    move v2, p1

    .line 130
    :cond_4f
    iget-object p1, v0, Lorg/ansj/util/Graph;->chars:[C

    array-length v3, p1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_59

    .line 131
    array-length p1, p1

    invoke-direct {p0, v0, v2, p1}, Lorg/ansj/splitWord/Analysis;->analysis(Lorg/ansj/util/Graph;II)V

    .line 133
    :cond_59
    invoke-virtual {p0, v0}, Lorg/ansj/splitWord/Analysis;->getResult(Lorg/ansj/util/Graph;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract getResult(Lorg/ansj/util/Graph;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/util/Graph;",
            ")",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end method

.method public parseStr(Ljava/lang/String;)Lorg/ansj/domain/Result;
    .registers 3

    .line 251
    new-instance v0, Lorg/ansj/domain/Result;

    invoke-direct {p0, p1}, Lorg/ansj/splitWord/Analysis;->analysisStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ansj/domain/Result;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected setRealName(Lorg/ansj/util/Graph;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/util/Graph;",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;)V"
        }
    .end annotation

    .line 234
    sget-object v0, Lorg/ansj/util/MyStaticValue;->isRealName:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 238
    :cond_9
    iget-object p1, p1, Lorg/ansj/util/Graph;->realStr:Ljava/lang/String;

    .line 240
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ansj/domain/Term;

    .line 241
    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v1

    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getOffe()I

    move-result v2

    invoke-virtual {v0}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ansj/domain/Term;->setRealName(Ljava/lang/String;)V

    goto :goto_f

    :cond_34
    return-void
.end method
