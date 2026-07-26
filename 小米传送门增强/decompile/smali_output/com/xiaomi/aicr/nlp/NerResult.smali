.class public Lcom/xiaomi/aicr/nlp/NerResult;
.super Ljava/lang/Object;
.source "NerResult.java"


# instance fields
.field private exactType:I

.field private sdkVersion:Ljava/lang/String;

.field private serviceVersion:I

.field private statusCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/xiaomi/aicr/nlp/NerResult;->exactType:I

    .line 14
    iput p2, p0, Lcom/xiaomi/aicr/nlp/NerResult;->statusCode:I

    .line 15
    iput-object p3, p0, Lcom/xiaomi/aicr/nlp/NerResult;->sdkVersion:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/xiaomi/aicr/nlp/NerResult;->serviceVersion:I

    return-void
.end method


# virtual methods
.method public getExactType()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/xiaomi/aicr/nlp/NerResult;->exactType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NerResult{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/aicr/nlp/NerResult;->exactType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/aicr/nlp/NerResult;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/aicr/nlp/NerResult;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/aicr/nlp/NerResult;->serviceVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
