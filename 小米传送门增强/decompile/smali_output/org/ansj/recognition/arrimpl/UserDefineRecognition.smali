.class public Lorg/ansj/recognition/arrimpl/UserDefineRecognition;
.super Ljava/lang/Object;
.source "UserDefineRecognition.java"


# instance fields
.field private branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endOffe:I

.field private forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field public final logger:Lorg/slf4j/Logger;

.field private offe:I

.field private tempFreq:I

.field private tempNature:Ljava/lang/String;

.field private terms:[Lorg/ansj/domain/Term;

.field private type:Lorg/ansj/util/TermUtil$InsertTermType;


# direct methods
.method public varargs constructor <init>(Lorg/ansj/util/TermUtil$InsertTermType;[Lorg/nlpcn/commons/lang/tire/domain/Forest;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->terms:[Lorg/ansj/domain/Term;

    .line 27
    sget-object v1, Lorg/ansj/library/UserDefineLibrary;->FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    filled-new-array {v1}, [Lorg/nlpcn/commons/lang/tire/domain/Forest;

    move-result-object v1

    iput-object v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    .line 30
    iput v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    const/16 v1, 0x32

    .line 31
    iput v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    .line 34
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 35
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 37
    sget-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->SKIP:Lorg/ansj/util/TermUtil$InsertTermType;

    .line 40
    iput-object p1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->type:Lorg/ansj/util/TermUtil$InsertTermType;

    if-eqz p2, :cond_30

    .line 41
    array-length p1, p2

    if-lez p1, :cond_30

    .line 42
    iput-object p2, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    :cond_30
    return-void
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 6

    .line 112
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception v0

    .line 114
    iget-object v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->logger:Lorg/slf4j/Logger;

    const-string v2, "{}\u4e0d\u662f\u4e00\u4e2a\u6570\u5b57"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method private makeNewTerm()V
    .registers 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    :goto_7
    iget v2, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    if-gt v1, v2, :cond_1c

    .line 122
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->terms:[Lorg/ansj/domain/Term;

    aget-object v2, v2, v1

    if-nez v2, :cond_12

    goto :goto_19

    .line 125
    :cond_12
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 128
    :cond_1c
    new-instance v1, Lorg/ansj/domain/TermNatures;

    new-instance v2, Lorg/ansj/domain/TermNature;

    iget-object v3, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempNature:Ljava/lang/String;

    iget v4, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    invoke-direct {v2, v3, v4}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    .line 129
    new-instance v2, Lorg/ansj/domain/Term;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    invoke-direct {v2, v0, v3, v1}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    .line 130
    iget v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    mul-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lorg/ansj/domain/Term;->selfScore(D)V

    .line 131
    iget-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->terms:[Lorg/ansj/domain/Term;

    iget-object v1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->type:Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-static {v0, v2, v1}, Lorg/ansj/util/TermUtil;->insertTerm([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Lorg/ansj/util/TermUtil$InsertTermType;)V

    return-void
.end method

.method private reset()V
    .registers 2

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    .line 139
    iput v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    const/16 v0, 0x32

    .line 140
    iput v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempNature:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    return-void
.end method

.method private termStatus(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;Lorg/ansj/domain/Term;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lorg/ansj/domain/Term;",
            ")",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 155
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->get(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p1

    if-nez p1, :cond_17

    const/4 p1, 0x0

    return-object p1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    return-object p1
.end method


# virtual methods
.method public recognition([Lorg/ansj/domain/Term;)V
    .registers 15

    .line 48
    iput-object p1, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->terms:[Lorg/ansj/domain/Term;

    .line 49
    iget-object v0, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_cb

    aget-object v4, v0, v3

    if-nez v4, :cond_f

    goto/16 :goto_c7

    .line 53
    :cond_f
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->reset()V

    .line 54
    iput-object v4, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 56
    iput-object v4, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 58
    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v7, v2

    :goto_1a
    const/4 v8, -0x1

    if-ge v7, v5, :cond_bc

    .line 62
    aget-object v9, p1, v7

    if-nez v9, :cond_23

    goto/16 :goto_b9

    .line 64
    :cond_23
    iget-object v10, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    if-ne v10, v4, :cond_29

    move v11, v2

    goto :goto_2a

    :cond_29
    move v11, v6

    .line 70
    :goto_2a
    invoke-direct {p0, v10, v9}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->termStatus(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;Lorg/ansj/domain/Term;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object v9

    iput-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    if-nez v9, :cond_3c

    .line 72
    iget v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    if-eq v9, v8, :cond_37

    move v7, v9

    .line 75
    :cond_37
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->reset()V

    goto/16 :goto_b9

    .line 76
    :cond_3c
    invoke-virtual {v9}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v9

    const/4 v10, 0x3

    const/16 v12, 0x32

    if-ne v9, v10, :cond_77

    .line 77
    iput v7, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    .line 78
    iget-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v9}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v2

    iput-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempNature:Ljava/lang/String;

    .line 79
    iget-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v9}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {p0, v9, v12}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    .line 80
    iget v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    if-eq v9, v8, :cond_73

    iget v8, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    if-ge v9, v8, :cond_73

    .line 82
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->makeNewTerm()V

    .line 83
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->reset()V

    move v7, v9

    goto :goto_b9

    .line 85
    :cond_73
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->reset()V

    goto :goto_b9

    .line 87
    :cond_77
    iget-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v9}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_ab

    .line 88
    iput v7, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    .line 89
    iget v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    if-ne v9, v8, :cond_89

    .line 90
    iput v7, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    goto :goto_b9

    .line 92
    :cond_89
    iget-object v8, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v8, v8, v2

    iput-object v8, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempNature:Ljava/lang/String;

    .line 93
    iget-object v8, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-direct {p0, v8, v12}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->tempFreq:I

    if-eqz v11, :cond_b9

    .line 95
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->makeNewTerm()V

    goto :goto_b9

    .line 98
    :cond_ab
    iget-object v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v9}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v9

    if-ne v9, v6, :cond_b9

    .line 99
    iget v9, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    if-ne v9, v8, :cond_b9

    .line 100
    iput v7, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    :cond_b9
    :goto_b9
    add-int/2addr v7, v6

    goto/16 :goto_1a

    .line 104
    :cond_bc
    iget v4, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->offe:I

    if-eq v4, v8, :cond_c7

    iget v5, p0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->endOffe:I

    if-ge v4, v5, :cond_c7

    .line 105
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->makeNewTerm()V

    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_cb
    return-void
.end method
