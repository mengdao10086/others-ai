.class public Lorg/nlpcn/commons/lang/tire/SmartGetWord;
.super Ljava/lang/Object;
.source "SmartGetWord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation
.end field

.field private chars:[C

.field private forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:I

.field isBack:Z

.field public offe:I

.field private param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field root:I

.field status:B

.field private str:Ljava/lang/String;

.field private tempJLen:Ljava/lang/Integer;

.field private tempOffe:I


# direct methods
.method public constructor <init>(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;[C)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;[C)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->status:B

    .line 9
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    .line 10
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    .line 11
    iput-boolean v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isBack:Z

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempJLen:Ljava/lang/Integer;

    .line 26
    iput-object p2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    .line 27
    iput-object p1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 28
    iput-object p1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    return-void
.end method

.method private checkNumberOrEnglish(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_4e

    .line 51
    const-string v0, ""

    if-ne p1, v0, :cond_7

    goto :goto_4e

    :cond_7
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_21

    .line 59
    iget v4, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    if-lez v4, :cond_21

    .line 60
    iget-object v5, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    sub-int/2addr v4, v3

    aget-char v4, v5, v4

    invoke-direct {p0, v1, v4}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->checkSame(CC)Z

    move-result v4

    if-eqz v4, :cond_21

    return-object v0

    .line 67
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_30

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_30
    if-ge v1, v2, :cond_4e

    .line 71
    iget v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    array-length v4, v3

    if-ge v2, v4, :cond_4e

    .line 72
    iget v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    aget-char v2, v3, v2

    invoke-direct {p0, v1, v2}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->checkSame(CC)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v0

    :cond_4e
    :goto_4e
    return-object p1
.end method

.method private checkSame(CC)Z
    .registers 5

    .line 89
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isE(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isE(C)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 93
    :cond_e
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isNum(C)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0, p2}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isNum(C)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private frontWords()Ljava/lang/String;
    .registers 7

    .line 163
    :goto_0
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    iget-object v1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v0, v2, :cond_b3

    .line 164
    array-length v2, v1

    if-ne v0, v2, :cond_10

    .line 165
    iput-object v4, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    goto :goto_1a

    .line 167
    :cond_10
    iget-object v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object v0

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 169
    :goto_1a
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 170
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 171
    iget-boolean v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isBack:Z

    if-eqz v0, :cond_52

    .line 172
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    .line 173
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    iget v5, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempOffe:I

    invoke-direct {v2, v4, v0, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->str:Ljava/lang/String;

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_44

    .line 175
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    .line 176
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    goto :goto_4d

    .line 178
    :cond_44
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    iget v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempOffe:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    .line 179
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    .line 181
    :goto_4d
    iput-boolean v1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isBack:Z

    .line 182
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->str:Ljava/lang/String;

    return-object v0

    .line 184
    :cond_52
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    add-int/2addr v0, v3

    .line 185
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    goto :goto_ac

    .line 187
    :cond_5a
    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_65

    goto :goto_ac

    .line 194
    :cond_65
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->offe:I

    .line 195
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->chars:[C

    iget v5, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    sub-int/2addr v5, v0

    add-int/2addr v5, v3

    invoke-direct {v2, v4, v0, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->str:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->param:Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->forest:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 199
    iput-boolean v1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isBack:Z

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_92

    .line 201
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    .line 202
    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    goto :goto_97

    .line 204
    :cond_92
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    .line 206
    :goto_97
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->str:Ljava/lang/String;

    return-object v0

    .line 189
    :cond_9a
    iput-boolean v3, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->isBack:Z

    .line 190
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    iget v1, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->root:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempOffe:I

    .line 191
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->param:Ljava/lang/Object;

    .line 163
    :goto_ac
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->i:I

    goto/16 :goto_0

    .line 210
    :cond_b3
    iget v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempOffe:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->tempOffe:I

    return-object v4
.end method


# virtual methods
.method public getFrontWords()Ljava/lang/String;
    .registers 3

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->frontWords()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->checkNumberOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getParam()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->param:Ljava/lang/Object;

    return-object v0
.end method

.method public isE(C)Z
    .registers 3

    .line 0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public isNum(C)Z
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
