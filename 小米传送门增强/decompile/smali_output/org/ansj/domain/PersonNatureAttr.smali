.class public Lorg/ansj/domain/PersonNatureAttr;
.super Ljava/lang/Object;
.source "PersonNatureAttr.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NULL:Lorg/ansj/domain/PersonNatureAttr;

.field private static final serialVersionUID:J = -0x752e7e4f9eee8b45L


# instance fields
.field public allFreq:I

.field public begin:I

.field public end:I

.field public flag:Z

.field private locFreq:[[I

.field public split:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lorg/ansj/domain/PersonNatureAttr;

    invoke-direct {v0}, Lorg/ansj/domain/PersonNatureAttr;-><init>()V

    sput-object v0, Lorg/ansj/domain/PersonNatureAttr;->NULL:Lorg/ansj/domain/PersonNatureAttr;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/ansj/domain/PersonNatureAttr;->locFreq:[[I

    return-void
.end method


# virtual methods
.method public addFreq(II)V
    .registers 4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_28

    const/16 v0, 0xc

    if-eq p1, v0, :cond_18

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_d

    goto :goto_32

    .line 61
    :cond_d
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->split:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->split:I

    .line 62
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    goto :goto_32

    .line 56
    :cond_18
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->end:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->end:I

    .line 57
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->begin:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->begin:I

    .line 58
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    goto :goto_32

    .line 52
    :cond_28
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->end:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->end:I

    .line 53
    iget p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ansj/domain/PersonNatureAttr;->allFreq:I

    :goto_32
    return-void
.end method

.method public getFreq(II)I
    .registers 5

    .line 75
    iget-object v0, p0, Lorg/ansj/domain/PersonNatureAttr;->locFreq:[[I

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 v1, 0x3

    if-le p1, v1, :cond_a

    move p1, v1

    :cond_a
    const/4 v1, 0x4

    if-le p2, v1, :cond_e

    move p2, v1

    .line 81
    :cond_e
    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method public setlocFreq([[I)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 90
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 91
    aget-object v2, p1, v1

    aget v2, v2, v0

    if-lez v2, :cond_f

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/ansj/domain/PersonNatureAttr;->flag:Z

    goto :goto_12

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_12
    :goto_12
    iput-object p1, p0, Lorg/ansj/domain/PersonNatureAttr;->locFreq:[[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ansj/domain/PersonNatureAttr;->begin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/ansj/domain/PersonNatureAttr;->end:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "split="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ansj/domain/PersonNatureAttr;->split:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
