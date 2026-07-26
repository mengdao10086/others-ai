.class public Lorg/ansj/domain/AnsjItem;
.super Lorg/nlpcn/commons/lang/dat/Item;
.source "AnsjItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEGIN:Lorg/ansj/domain/AnsjItem;

.field public static final END:Lorg/ansj/domain/AnsjItem;

.field public static final NULL:Lorg/ansj/domain/AnsjItem;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bigramEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public param:Ljava/lang/String;

.field public termNatures:Lorg/ansj/domain/TermNatures;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    new-instance v0, Lorg/ansj/domain/AnsjItem;

    invoke-direct {v0}, Lorg/ansj/domain/AnsjItem;-><init>()V

    sput-object v0, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    .line 14
    new-instance v1, Lorg/ansj/domain/AnsjItem;

    invoke-direct {v1}, Lorg/ansj/domain/AnsjItem;-><init>()V

    sput-object v1, Lorg/ansj/domain/AnsjItem;->BEGIN:Lorg/ansj/domain/AnsjItem;

    .line 16
    new-instance v2, Lorg/ansj/domain/AnsjItem;

    invoke-direct {v2}, Lorg/ansj/domain/AnsjItem;-><init>()V

    sput-object v2, Lorg/ansj/domain/AnsjItem;->END:Lorg/ansj/domain/AnsjItem;

    const/4 v3, 0x0

    .line 19
    iput v3, v0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    .line 21
    iput v3, v1, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    .line 22
    sget-object v0, Lorg/ansj/domain/TermNatures;->BEGIN:Lorg/ansj/domain/TermNatures;

    iput-object v0, v1, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    const/4 v0, -0x1

    .line 24
    iput v0, v2, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    .line 25
    sget-object v0, Lorg/ansj/domain/TermNatures;->END:Lorg/ansj/domain/TermNatures;

    iput-object v0, v2, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lorg/nlpcn/commons/lang/dat/Item;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 35
    iput-object v0, p0, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public initValue([Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    const/4 v0, 0x2

    .line 46
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    const/4 v0, 0x3

    .line 47
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->check:I

    const/4 v0, 0x4

    .line 48
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->status:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    .line 50
    aget-object v0, p1, v1

    iput-object v0, p0, Lorg/nlpcn/commons/lang/dat/Item;->name:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/ansj/domain/TermNatures;

    const/4 v1, 0x5

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/ansj/domain/TermNature;->setNatureStrToArray(Ljava/lang/String;)[Lorg/ansj/domain/TermNature;

    move-result-object p1

    iget v1, p0, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    invoke-direct {v0, p1, v1}, Lorg/ansj/domain/TermNatures;-><init>([Lorg/ansj/domain/TermNature;I)V

    iput-object v0, p0, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    goto :goto_45

    .line 53
    :cond_3c
    new-instance p1, Lorg/ansj/domain/TermNatures;

    sget-object v0, Lorg/ansj/domain/TermNature;->NULL:Lorg/ansj/domain/TermNature;

    invoke-direct {p1, v0}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    iput-object p1, p0, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    :goto_45
    return-void
.end method

.method public toText()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/nlpcn/commons/lang/dat/Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/nlpcn/commons/lang/dat/Item;->check:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/nlpcn/commons/lang/dat/Item;->status:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ansj/domain/AnsjItem;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
