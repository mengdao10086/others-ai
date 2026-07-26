.class public Lorg/nlpcn/commons/lang/tire/domain/Value;
.super Ljava/lang/Object;
.source "Value.java"


# instance fields
.field private keyword:Ljava/lang/String;

.field private paramers:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->paramers:[Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->keyword:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 13
    iput-object p2, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->paramers:[Ljava/lang/String;

    :cond_e
    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getParamers()[Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->paramers:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 45
    :goto_b
    iget-object v2, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->paramers:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 46
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lorg/nlpcn/commons/lang/tire/domain/Value;->paramers:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 49
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
