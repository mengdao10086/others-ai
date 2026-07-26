.class public Lorg/ansj/domain/Term;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private from:Lorg/ansj/domain/Term;

.field private item:Lorg/ansj/domain/AnsjItem;

.field private name:Ljava/lang/String;

.field private nature:Lorg/ansj/domain/Nature;

.field private next:Lorg/ansj/domain/Term;

.field private offe:I

.field private realName:Ljava/lang/String;

.field private score:D

.field private selfScore:D

.field private subTerm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end field

.field private termNatures:Lorg/ansj/domain/TermNatures;

.field private to:Lorg/ansj/domain/Term;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/ansj/domain/AnsjItem;)V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    iput-object v0, p0, Lorg/ansj/domain/Term;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 24
    sget-object v0, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    iput-object v0, p0, Lorg/ansj/domain/Term;->item:Lorg/ansj/domain/AnsjItem;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lorg/ansj/domain/Term;->score:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 30
    iput-wide v0, p0, Lorg/ansj/domain/Term;->selfScore:D

    .line 36
    sget-object v0, Lorg/ansj/domain/Nature;->NULL:Lorg/ansj/domain/Nature;

    iput-object v0, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/ansj/domain/Term;->subTerm:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    .line 45
    iput p2, p0, Lorg/ansj/domain/Term;->offe:I

    .line 46
    iput-object p3, p0, Lorg/ansj/domain/Term;->item:Lorg/ansj/domain/AnsjItem;

    .line 47
    iget-object p1, p3, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    if-eqz p1, :cond_2c

    .line 48
    iput-object p1, p0, Lorg/ansj/domain/Term;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 49
    iget-object p1, p1, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    if-eqz p1, :cond_2c

    .line 50
    iput-object p1, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    :cond_2c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/ansj/domain/TermNatures;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    iput-object v0, p0, Lorg/ansj/domain/Term;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 24
    sget-object v0, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    iput-object v0, p0, Lorg/ansj/domain/Term;->item:Lorg/ansj/domain/AnsjItem;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lorg/ansj/domain/Term;->score:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 30
    iput-wide v0, p0, Lorg/ansj/domain/Term;->selfScore:D

    .line 36
    sget-object v0, Lorg/ansj/domain/Nature;->NULL:Lorg/ansj/domain/Nature;

    iput-object v0, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/ansj/domain/Term;->subTerm:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    .line 58
    iput p2, p0, Lorg/ansj/domain/Term;->offe:I

    .line 59
    iput-object p3, p0, Lorg/ansj/domain/Term;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 60
    iget-object p1, p3, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    if-eqz p1, :cond_26

    .line 61
    iput-object p1, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    :cond_26
    return-void
.end method

.method private setFromAndScore(Lorg/ansj/domain/Term;D)V
    .registers 4

    .line 122
    iput-object p1, p0, Lorg/ansj/domain/Term;->from:Lorg/ansj/domain/Term;

    .line 123
    iput-wide p2, p0, Lorg/ansj/domain/Term;->score:D

    return-void
.end method


# virtual methods
.method public clearScore()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 220
    iput-wide v0, p0, Lorg/ansj/domain/Term;->score:D

    .line 221
    iput-wide v0, p0, Lorg/ansj/domain/Term;->selfScore:D

    return-void
.end method

.method public from()Lorg/ansj/domain/Term;
    .registers 2

    .line 167
    iget-object v0, p0, Lorg/ansj/domain/Term;->from:Lorg/ansj/domain/Term;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffe()I
    .registers 2

    .line 80
    iget v0, p0, Lorg/ansj/domain/Term;->offe:I

    return v0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lorg/ansj/domain/Term;->realName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public item()Lorg/ansj/domain/AnsjItem;
    .registers 2

    .line 260
    iget-object v0, p0, Lorg/ansj/domain/Term;->item:Lorg/ansj/domain/AnsjItem;

    return-object v0
.end method

.method public natrue()Lorg/ansj/domain/Nature;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    return-object v0
.end method

.method public next()Lorg/ansj/domain/Term;
    .registers 2

    .line 151
    iget-object v0, p0, Lorg/ansj/domain/Term;->next:Lorg/ansj/domain/Term;

    return-object v0
.end method

.method public score()D
    .registers 3

    .line 244
    iget-wide v0, p0, Lorg/ansj/domain/Term;->score:D

    return-wide v0
.end method

.method public score(D)V
    .registers 3

    .line 248
    iput-wide p1, p0, Lorg/ansj/domain/Term;->score:D

    return-void
.end method

.method public selfScore()D
    .registers 3

    .line 252
    iget-wide v0, p0, Lorg/ansj/domain/Term;->selfScore:D

    return-wide v0
.end method

.method public selfScore(D)V
    .registers 3

    .line 256
    iput-wide p1, p0, Lorg/ansj/domain/Term;->selfScore:D

    return-void
.end method

.method public setFrom(Lorg/ansj/domain/Term;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lorg/ansj/domain/Term;->from:Lorg/ansj/domain/Term;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lorg/ansj/domain/Term;)Lorg/ansj/domain/Term;
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/ansj/domain/Term;->next:Lorg/ansj/domain/Term;

    return-object p0
.end method

.method public setPathScore(Lorg/ansj/domain/Term;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/domain/Term;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-static {p1, p0, p2}, Lorg/ansj/util/MathUtil;->compuScore(Lorg/ansj/domain/Term;Lorg/ansj/domain/Term;Ljava/util/Map;)D

    move-result-wide v0

    .line 103
    iget-object p2, p0, Lorg/ansj/domain/Term;->from:Lorg/ansj/domain/Term;

    if-eqz p2, :cond_14

    iget-wide v2, p0, Lorg/ansj/domain/Term;->score:D

    const-wide/16 v4, 0x0

    cmpl-double p2, v2, v4

    if-eqz p2, :cond_14

    cmpl-double p2, v2, v0

    if-ltz p2, :cond_17

    .line 104
    :cond_14
    invoke-direct {p0, p1, v0, v1}, Lorg/ansj/domain/Term;->setFromAndScore(Lorg/ansj/domain/Term;D)V

    :cond_17
    return-void
.end method

.method public setPathSelfScore(Lorg/ansj/domain/Term;)V
    .registers 6

    .line 114
    iget-wide v0, p0, Lorg/ansj/domain/Term;->selfScore:D

    iget-wide v2, p1, Lorg/ansj/domain/Term;->score:D

    add-double/2addr v0, v2

    .line 116
    iget-object v2, p0, Lorg/ansj/domain/Term;->from:Lorg/ansj/domain/Term;

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lorg/ansj/domain/Term;->score:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_12

    .line 117
    :cond_f
    invoke-direct {p0, p1, v0, v1}, Lorg/ansj/domain/Term;->setFromAndScore(Lorg/ansj/domain/Term;D)V

    :cond_12
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lorg/ansj/domain/Term;->realName:Ljava/lang/String;

    return-void
.end method

.method public setTo(Lorg/ansj/domain/Term;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lorg/ansj/domain/Term;->to:Lorg/ansj/domain/Term;

    return-void
.end method

.method public termNatures()Lorg/ansj/domain/TermNatures;
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/ansj/domain/Term;->termNatures:Lorg/ansj/domain/TermNatures;

    return-object v0
.end method

.method public to()Lorg/ansj/domain/Term;
    .registers 2

    .line 171
    iget-object v0, p0, Lorg/ansj/domain/Term;->to:Lorg/ansj/domain/Term;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 210
    iget-object v0, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    iget-object v0, v0, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 211
    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ansj/domain/Term;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ansj/domain/Term;->nature:Lorg/ansj/domain/Nature;

    iget-object v1, v1, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValue()I
    .registers 3

    .line 76
    iget v0, p0, Lorg/ansj/domain/Term;->offe:I

    iget-object v1, p0, Lorg/ansj/domain/Term;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
