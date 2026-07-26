.class public Lorg/ansj/splitWord/impl/GetWordsImpl;
.super Ljava/lang/Object;
.source "GetWordsImpl.java"


# instance fields
.field private baseValue:I

.field private charHashCode:I

.field public chars:[C

.field charsLength:I

.field private checkValue:I

.field public end:I

.field public i:I

.field public offe:I

.field private start:I

.field private str:Ljava/lang/String;

.field private tempBaseValue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->charsLength:I

    .line 45
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    .line 46
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 47
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 48
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->checkValue:I

    .line 49
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->tempBaseValue:I

    .line 50
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->str:Ljava/lang/String;

    return-void
.end method

.method private getStatement()I
    .registers 3

    .line 109
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->checkValue:I

    .line 110
    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getBase()I

    move-result v0

    iget v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->charHashCode:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 111
    sget v1, Lorg/ansj/library/DATDictionary;->arrayLength:I

    if-ge v0, v1, :cond_39

    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getCheck()I

    move-result v0

    iget v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->checkValue:I

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getCheck()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 112
    :cond_2e
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getStatus()B

    move-result v0

    return v0

    :cond_39
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allWords()Ljava/lang/String;
    .registers 5

    .line 55
    :goto_0
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    iget v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->charsLength:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_87

    .line 56
    iget-object v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->chars:[C

    aget-char v0, v1, v0

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->charHashCode:I

    .line 57
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 58
    invoke-direct {p0}, Lorg/ansj/splitWord/impl/GetWordsImpl;->getStatement()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    goto :goto_7f

    .line 81
    :cond_20
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->offe:I

    add-int/lit8 v0, v0, 0x1

    .line 82
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    .line 83
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    .line 84
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 85
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->tempBaseValue:I

    .line 86
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 87
    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_3b
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    .line 77
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->offe:I

    .line 78
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->tempBaseValue:I

    .line 79
    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_52
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    iget-object v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->chars:[C

    iget v3, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    aget-char v1, v1, v3

    if-ne v0, v1, :cond_73

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->str:Ljava/lang/String;

    .line 62
    iget v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    iput v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->offe:I

    add-int/lit8 v1, v1, 0x1

    .line 63
    iput v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    iput v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    .line 64
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 65
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 66
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->tempBaseValue:I

    return-object v0

    .line 69
    :cond_73
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    .line 71
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 72
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 55
    :goto_7f
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    goto/16 :goto_0

    .line 91
    :cond_87
    iget v1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    if-eq v1, v0, :cond_98

    .line 92
    iput v3, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    .line 93
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 94
    invoke-virtual {p0}, Lorg/ansj/splitWord/impl/GetWordsImpl;->allWords()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_98
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->end:I

    .line 97
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->baseValue:I

    .line 98
    iput v2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem()Lorg/ansj/domain/AnsjItem;
    .registers 2

    .line 118
    iget v0, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->tempBaseValue:I

    invoke-static {v0}, Lorg/ansj/library/DATDictionary;->getItem(I)Lorg/ansj/domain/AnsjItem;

    move-result-object v0

    return-object v0
.end method

.method public setChars([CII)V
    .registers 4

    .line 36
    iput-object p1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->chars:[C

    .line 37
    iput p2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->i:I

    .line 38
    iput p2, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->start:I

    .line 39
    iput p3, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->charsLength:I

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lorg/ansj/splitWord/impl/GetWordsImpl;->checkValue:I

    return-void
.end method
