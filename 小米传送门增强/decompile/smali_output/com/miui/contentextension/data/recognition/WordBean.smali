.class public Lcom/miui/contentextension/data/recognition/WordBean;
.super Ljava/lang/Object;
.source "WordBean.java"


# instance fields
.field private needBlank:Z

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/WordBean;->word:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/miui/contentextension/data/recognition/WordBean;->needBlank:Z

    return-void
.end method


# virtual methods
.method public getWord()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/WordBean;->word:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 15
    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public isNeedBlank()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/miui/contentextension/data/recognition/WordBean;->needBlank:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WordBean{word=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/WordBean;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", needBlank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/contentextension/data/recognition/WordBean;->needBlank:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
