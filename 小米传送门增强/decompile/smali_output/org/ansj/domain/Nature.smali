.class public Lorg/ansj/domain/Nature;
.super Ljava/lang/Object;
.source "Nature.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NR:Lorg/ansj/domain/Nature;

.field public static final NRF:Lorg/ansj/domain/Nature;

.field public static final NULL:Lorg/ansj/domain/Nature;

.field public static final NW:Lorg/ansj/domain/Nature;

.field private static final serialVersionUID:J = -0x13ce0c9fec82d95eL


# instance fields
.field public final allFrequency:I

.field public final index:I

.field public final natureIndex:I

.field public final natureStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "nw"

    invoke-static {v0}, Lorg/ansj/library/NatureLibrary;->getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;

    move-result-object v0

    sput-object v0, Lorg/ansj/domain/Nature;->NW:Lorg/ansj/domain/Nature;

    .line 29
    const-string v0, "nrf"

    invoke-static {v0}, Lorg/ansj/library/NatureLibrary;->getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;

    move-result-object v0

    sput-object v0, Lorg/ansj/domain/Nature;->NRF:Lorg/ansj/domain/Nature;

    .line 31
    const-string v0, "nr"

    invoke-static {v0}, Lorg/ansj/library/NatureLibrary;->getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;

    move-result-object v0

    sput-object v0, Lorg/ansj/domain/Nature;->NR:Lorg/ansj/domain/Nature;

    .line 33
    const-string v0, "null"

    invoke-static {v0}, Lorg/ansj/library/NatureLibrary;->getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;

    move-result-object v0

    sput-object v0, Lorg/ansj/domain/Nature;->NULL:Lorg/ansj/domain/Nature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/ansj/domain/Nature;->index:I

    .line 38
    iput p3, p0, Lorg/ansj/domain/Nature;->natureIndex:I

    .line 39
    iput p4, p0, Lorg/ansj/domain/Nature;->allFrequency:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ansj/domain/Nature;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ansj/domain/Nature;->natureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
