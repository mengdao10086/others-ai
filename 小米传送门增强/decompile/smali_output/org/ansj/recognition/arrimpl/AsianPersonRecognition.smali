.class public Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;
.super Ljava/lang/Object;
.source "AsianPersonRecognition.java"


# static fields
.field private static final FACTORY:[D


# instance fields
.field private skip:Z

.field private terms:[Lorg/ansj/domain/Term;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->FACTORY:[D

    return-void

    nop

    :array_a
    .array-data 8
        0x3fc4d3cd20f7b157L    # 0.16271366224044456
        0x3fe9cb2df4439efdL    # 0.8060521860870434
        0x3f9ffbd86fce9597L    # 0.031234151672511947
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->skip:Z

    return-void
.end method

.method private nameFind(III)Lorg/ansj/domain/Term;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 95
    iput-boolean v3, v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->skip:Z

    const/4 v6, 0x0

    move/from16 v7, p1

    move v8, v3

    move v9, v8

    move-object v12, v6

    const-wide/16 v10, 0x0

    .line 102
    :goto_14
    iget-object v13, v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    array-length v14, v13

    const/4 v15, 0x1

    if-ge v7, v14, :cond_59

    .line 104
    aget-object v13, v13, v7

    if-nez v13, :cond_1f

    goto :goto_55

    .line 108
    :cond_1f
    invoke-virtual {v13}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v12

    iget-object v12, v12, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    .line 110
    invoke-virtual {v12, v1, v8}, Lorg/ansj/domain/PersonNatureAttr;->getFreq(II)I

    move-result v14

    if-nez v14, :cond_2c

    return-object v6

    .line 114
    :cond_2c
    iget v12, v12, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    if-lez v12, :cond_32

    add-int/lit8 v9, v9, 0x1

    .line 117
    :cond_32
    invoke-virtual {v13}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v13}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v12

    iget v12, v12, Lorg/ansj/domain/TermNatures;->allFreq:I

    add-int/2addr v12, v15

    int-to-double v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    add-double/2addr v10, v3

    int-to-double v3, v14

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v10, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v1, 0x2

    move-object v12, v13

    if-ne v8, v3, :cond_55

    goto :goto_59

    :cond_55
    :goto_55
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_14

    .line 127
    :cond_59
    :goto_59
    sget-object v3, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->FACTORY:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v3, v10

    move v1, v15

    const-wide/16 v13, 0x0

    :cond_66
    :goto_66
    if-eqz v1, :cond_8d

    add-int/2addr v7, v15

    .line 134
    iget-object v5, v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    array-length v8, v5

    if-lt v7, v8, :cond_72

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    :goto_70
    const/4 v1, 0x0

    goto :goto_66

    .line 137
    :cond_72
    aget-object v5, v5, v7

    if-eqz v5, :cond_66

    .line 138
    invoke-static {v12, v5}, Lorg/ansj/library/NgramLibrary;->getTwoWordFreq(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;)I

    move-result v1

    const/4 v5, 0x3

    if-le v1, v5, :cond_7e

    return-object v6

    .line 142
    :cond_7e
    iget-object v1, v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v1

    iget-object v1, v1, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget v1, v1, Lorg/ansj/domain/PersonNatureAttr;->end:I

    add-int/2addr v1, v15

    int-to-double v13, v1

    goto :goto_70

    .line 147
    :cond_8d
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    sub-double/2addr v3, v7

    move/from16 v1, p2

    int-to-double v7, v1

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    sub-double/2addr v3, v7

    const-wide/high16 v7, -0x3ff8000000000000L    # -3.0

    cmpl-double v1, v3, v7

    if-lez v1, :cond_a1

    return-object v6

    :cond_a1
    const-wide/16 v7, 0x0

    cmpl-double v1, v10, v7

    if-lez v1, :cond_aa

    if-lez v9, :cond_aa

    return-object v6

    :cond_aa
    if-nez v9, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v15, 0x0

    .line 158
    :goto_ae
    iput-boolean v15, v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->skip:Z

    .line 159
    new-instance v1, Lorg/ansj/domain/Term;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/ansj/domain/TermNatures;->NR:Lorg/ansj/domain/TermNatures;

    move/from16 v6, p1

    invoke-direct {v1, v2, v6, v5}, Lorg/ansj/domain/Term;-><init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V

    .line 160
    invoke-virtual {v1, v3, v4}, Lorg/ansj/domain/Term;->selfScore(D)V

    return-object v1
.end method

.method private recogntion_()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 51
    :goto_a
    iget-object v5, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    array-length v6, v5

    if-ge v3, v6, :cond_80

    .line 52
    aget-object v5, v5, v3

    if-eqz v5, :cond_7d

    .line 53
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v6

    iget-object v6, v6, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget-boolean v6, v6, Lorg/ansj/domain/PersonNatureAttr;->flag:Z

    if-nez v6, :cond_1e

    goto :goto_7d

    :cond_1e
    const-wide/16 v6, 0x0

    .line 56
    invoke-virtual {v5, v6, v7}, Lorg/ansj/domain/Term;->score(D)V

    .line 57
    invoke-virtual {v5, v6, v7}, Lorg/ansj/domain/Term;->selfScore(D)V

    const/4 v8, 0x2

    move v9, v8

    :goto_28
    const/4 v10, -0x1

    if-le v9, v10, :cond_73

    .line 60
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v10

    iget-object v10, v10, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    invoke-virtual {v10, v9, v2}, Lorg/ansj/domain/PersonNatureAttr;->getFreq(II)I

    move-result v10

    if-gt v10, v1, :cond_43

    .line 61
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v8, :cond_70

    if-le v10, v1, :cond_70

    .line 62
    :cond_43
    invoke-direct {p0, v3, v4, v9}, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->nameFind(III)Lorg/ansj/domain/Term;

    move-result-object v10

    if-eqz v10, :cond_70

    .line 64
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-boolean v11, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->skip:Z

    if-eqz v11, :cond_70

    .line 67
    :goto_50
    invoke-virtual {v10}, Lorg/ansj/domain/Term;->toValue()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 68
    iget-object v4, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    aget-object v4, v4, v3

    if-eqz v4, :cond_66

    .line 69
    invoke-virtual {v4, v6, v7}, Lorg/ansj/domain/Term;->score(D)V

    .line 70
    iget-object v4, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6, v7}, Lorg/ansj/domain/Term;->selfScore(D)V

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 73
    :cond_69
    invoke-virtual {v10}, Lorg/ansj/domain/Term;->toValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_73

    :cond_70
    add-int/lit8 v9, v9, -0x1

    goto :goto_28

    .line 79
    :cond_73
    :goto_73
    invoke-virtual {v5}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v4

    iget-object v4, v4, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget v4, v4, Lorg/ansj/domain/PersonNatureAttr;->begin:I

    add-int/lit8 v4, v4, 0x1

    :cond_7d
    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_80
    return-object v0
.end method


# virtual methods
.method public recognition([Lorg/ansj/domain/Term;)V
    .registers 5

    .line 39
    iput-object p1, p0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    .line 40
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->recogntion_()Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ansj/domain/Term;

    .line 42
    sget-object v2, Lorg/ansj/util/TermUtil$InsertTermType;->SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-static {p1, v1, v2}, Lorg/ansj/util/TermUtil;->insertTerm([Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Lorg/ansj/util/TermUtil$InsertTermType;)V

    goto :goto_a

    :cond_1c
    return-void
.end method
