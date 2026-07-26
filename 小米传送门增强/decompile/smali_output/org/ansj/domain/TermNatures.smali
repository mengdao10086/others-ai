.class public Lorg/ansj/domain/TermNatures;
.super Ljava/lang/Object;
.source "TermNatures.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEGIN:Lorg/ansj/domain/TermNatures;

.field public static final EN:Lorg/ansj/domain/TermNatures;

.field public static final END:Lorg/ansj/domain/TermNatures;

.field public static final M:Lorg/ansj/domain/TermNatures;

.field public static final NR:Lorg/ansj/domain/TermNatures;

.field public static final NRF:Lorg/ansj/domain/TermNatures;

.field public static final NS:Lorg/ansj/domain/TermNatures;

.field public static final NT:Lorg/ansj/domain/TermNatures;

.field public static final NULL:Lorg/ansj/domain/TermNatures;

.field public static final NW:Lorg/ansj/domain/TermNatures;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public allFreq:I

.field public id:I

.field public nature:Lorg/ansj/domain/Nature;

.field public numAttr:Lorg/ansj/domain/NumNatureAttr;

.field public personAttr:Lorg/ansj/domain/PersonNatureAttr;

.field public termNatures:[Lorg/ansj/domain/TermNature;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 15
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->M:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->M:Lorg/ansj/domain/TermNatures;

    .line 17
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NR:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NR:Lorg/ansj/domain/TermNatures;

    .line 19
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->EN:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->EN:Lorg/ansj/domain/TermNatures;

    .line 21
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->END:Lorg/ansj/domain/TermNature;

    const/4 v2, -0x1

    const v3, 0xc5b2

    invoke-direct {v0, v1, v3, v2}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;II)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->END:Lorg/ansj/domain/TermNatures;

    .line 23
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->BEGIN:Lorg/ansj/domain/TermNature;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;II)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->BEGIN:Lorg/ansj/domain/TermNatures;

    .line 25
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NT:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NT:Lorg/ansj/domain/TermNatures;

    .line 27
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NS:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NS:Lorg/ansj/domain/TermNatures;

    .line 29
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NRF:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NRF:Lorg/ansj/domain/TermNatures;

    .line 31
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NW:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NW:Lorg/ansj/domain/TermNatures;

    .line 33
    new-instance v0, Lorg/ansj/domain/TermNatures;

    sget-object v1, Lorg/ansj/domain/TermNature;->NULL:Lorg/ansj/domain/TermNature;

    invoke-direct {v0, v1}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    sput-object v0, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    return-void
.end method

.method public constructor <init>(Lorg/ansj/domain/TermNature;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    .line 43
    sget-object v1, Lorg/ansj/domain/NumNatureAttr;->NULL:Lorg/ansj/domain/NumNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    .line 48
    sget-object v1, Lorg/ansj/domain/PersonNatureAttr;->NULL:Lorg/ansj/domain/PersonNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    .line 53
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    const/4 v1, -0x2

    .line 63
    iput v1, p0, Lorg/ansj/domain/TermNatures;->id:I

    const/4 v1, 0x1

    .line 91
    new-array v1, v1, [Lorg/ansj/domain/TermNature;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    .line 92
    aput-object p1, v1, v0

    .line 93
    iget-object p1, p1, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    iput-object p1, p0, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    .line 94
    invoke-direct {p0}, Lorg/ansj/domain/TermNatures;->serAttribute()V

    return-void
.end method

.method public constructor <init>(Lorg/ansj/domain/TermNature;II)V
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    .line 43
    sget-object v1, Lorg/ansj/domain/NumNatureAttr;->NULL:Lorg/ansj/domain/NumNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    .line 48
    sget-object v1, Lorg/ansj/domain/PersonNatureAttr;->NULL:Lorg/ansj/domain/PersonNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    .line 53
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    .line 98
    iput p3, p0, Lorg/ansj/domain/TermNatures;->id:I

    const/4 p3, 0x1

    .line 99
    new-array p3, p3, [Lorg/ansj/domain/TermNature;

    iput-object p3, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    .line 100
    iput p2, p1, Lorg/ansj/domain/TermNature;->frequency:I

    .line 101
    aput-object p1, p3, v0

    .line 102
    iput p2, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    return-void
.end method

.method public constructor <init>([Lorg/ansj/domain/TermNature;I)V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    .line 43
    sget-object v1, Lorg/ansj/domain/NumNatureAttr;->NULL:Lorg/ansj/domain/NumNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    .line 48
    sget-object v1, Lorg/ansj/domain/PersonNatureAttr;->NULL:Lorg/ansj/domain/PersonNatureAttr;

    iput-object v1, p0, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    .line 53
    iput-object v0, p0, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    .line 71
    iput p2, p0, Lorg/ansj/domain/TermNatures;->id:I

    .line 72
    iput-object p1, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    const/4 p2, -0x1

    .line 76
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 77
    aget-object v2, p1, v1

    iget v3, v2, Lorg/ansj/domain/TermNature;->frequency:I

    if-ge p2, v3, :cond_23

    move-object v0, v2

    move p2, v3

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    if-eqz v0, :cond_2c

    .line 84
    iget-object p1, v0, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    iput-object p1, p0, Lorg/ansj/domain/TermNatures;->nature:Lorg/ansj/domain/Nature;

    .line 87
    :cond_2c
    invoke-direct {p0}, Lorg/ansj/domain/TermNatures;->serAttribute()V

    return-void
.end method

.method private serAttribute()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 109
    :goto_4
    iget-object v3, p0, Lorg/ansj/domain/TermNatures;->termNatures:[Lorg/ansj/domain/TermNature;

    array-length v4, v3

    if-ge v0, v4, :cond_3d

    .line 110
    aget-object v3, v3, v0

    .line 111
    iget v4, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    iget v5, v3, Lorg/ansj/domain/TermNature;->frequency:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/ansj/domain/TermNatures;->allFreq:I

    .line 112
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    iget-object v4, v3, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    iget v4, v4, Lorg/ansj/domain/Nature;->index:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_23

    goto :goto_3a

    :cond_23
    if-nez v2, :cond_2a

    .line 122
    new-instance v2, Lorg/ansj/domain/NumNatureAttr;

    invoke-direct {v2}, Lorg/ansj/domain/NumNatureAttr;-><init>()V

    .line 124
    :cond_2a
    iget v3, v3, Lorg/ansj/domain/TermNature;->frequency:I

    iput v3, v2, Lorg/ansj/domain/NumNatureAttr;->numEndFreq:I

    goto :goto_3a

    :cond_2f
    if-nez v2, :cond_36

    .line 116
    new-instance v2, Lorg/ansj/domain/NumNatureAttr;

    invoke-direct {v2}, Lorg/ansj/domain/NumNatureAttr;-><init>()V

    .line 118
    :cond_36
    iget v3, v3, Lorg/ansj/domain/TermNature;->frequency:I

    iput v3, v2, Lorg/ansj/domain/NumNatureAttr;->numFreq:I

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3d
    if-eqz v2, :cond_48

    .line 129
    iget v0, v2, Lorg/ansj/domain/NumNatureAttr;->numFreq:I

    if-ne v1, v0, :cond_46

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, v2, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    .line 132
    :cond_46
    iput-object v2, p0, Lorg/ansj/domain/TermNatures;->numAttr:Lorg/ansj/domain/NumNatureAttr;

    :cond_48
    return-void
.end method


# virtual methods
.method public setPersonNatureAttr(Lorg/ansj/domain/PersonNatureAttr;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    return-void
.end method
