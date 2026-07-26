.class public Lorg/ansj/domain/TermNature;
.super Ljava/lang/Object;
.source "TermNature.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEGIN:Lorg/ansj/domain/TermNature;

.field public static final EN:Lorg/ansj/domain/TermNature;

.field public static final END:Lorg/ansj/domain/TermNature;

.field public static final M:Lorg/ansj/domain/TermNature;

.field public static final NR:Lorg/ansj/domain/TermNature;

.field public static final NRF:Lorg/ansj/domain/TermNature;

.field public static final NS:Lorg/ansj/domain/TermNature;

.field public static final NT:Lorg/ansj/domain/TermNature;

.field public static final NULL:Lorg/ansj/domain/TermNature;

.field public static final NW:Lorg/ansj/domain/TermNature;

.field public static final USER_DEFINE:Lorg/ansj/domain/TermNature;

.field private static final serialVersionUID:J = 0x4cdb231601cc8a15L


# instance fields
.field public frequency:I

.field public nature:Lorg/ansj/domain/Nature;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "m"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->M:Lorg/ansj/domain/TermNature;

    .line 21
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "en"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->EN:Lorg/ansj/domain/TermNature;

    .line 22
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "\u59cb##\u59cb"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->BEGIN:Lorg/ansj/domain/TermNature;

    .line 23
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "\u672b##\u672b"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->END:Lorg/ansj/domain/TermNature;

    .line 24
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "userDefine"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->USER_DEFINE:Lorg/ansj/domain/TermNature;

    .line 25
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "nr"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NR:Lorg/ansj/domain/TermNature;

    .line 26
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "nt"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NT:Lorg/ansj/domain/TermNature;

    .line 27
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "ns"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NS:Lorg/ansj/domain/TermNature;

    .line 28
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "nw"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NW:Lorg/ansj/domain/TermNature;

    .line 29
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "nrf"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NRF:Lorg/ansj/domain/TermNature;

    .line 30
    new-instance v0, Lorg/ansj/domain/TermNature;

    const-string v1, "null"

    invoke-direct {v0, v1, v2}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/domain/TermNature;->NULL:Lorg/ansj/domain/TermNature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/ansj/library/NatureLibrary;->getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;

    move-result-object p1

    iput-object p1, p0, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    .line 38
    iput p2, p0, Lorg/ansj/domain/TermNature;->frequency:I

    return-void
.end method

.method public static setNatureStrToArray(Ljava/lang/String;)[Lorg/ansj/domain/TermNature;
    .registers 8

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 44
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 47
    array-length v0, p0

    new-array v0, v0, [Lorg/ansj/domain/TermNature;

    const/4 v2, 0x0

    move v3, v2

    .line 48
    :goto_15
    array-length v4, p0

    if-ge v3, v4, :cond_36

    .line 49
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 50
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 51
    new-instance v6, Lorg/ansj/domain/TermNature;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Lorg/ansj/domain/TermNature;-><init>(Ljava/lang/String;I)V

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_36
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    iget-object v1, v1, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ansj/domain/TermNature;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
