.class public abstract Lorg/nlpcn/commons/lang/dat/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected base:I

.field protected check:I

.field protected index:I

.field protected name:Ljava/lang/String;

.field protected status:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 17
    iput v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    return-void
.end method


# virtual methods
.method public getBase()I
    .registers 2

    .line 62
    iget v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    return v0
.end method

.method public getCheck()I
    .registers 2

    .line 78
    iget v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->check:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 70
    iget v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()B
    .registers 2

    .line 54
    iget-byte v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->status:B

    return v0
.end method

.method public abstract initValue([Ljava/lang/String;)V
.end method

.method public setBase(I)V
    .registers 2

    .line 66
    iput p1, p0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    return-void
.end method

.method public setCheck(I)V
    .registers 2

    .line 82
    iput p1, p0, Lorg/nlpcn/commons/lang/dat/Item;->check:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lorg/nlpcn/commons/lang/dat/Item;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(B)V
    .registers 2

    .line 58
    iput-byte p1, p0, Lorg/nlpcn/commons/lang/dat/Item;->status:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/dat/Item;->toText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toText()Ljava/lang/String;
.end method
