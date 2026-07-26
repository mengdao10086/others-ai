.class public Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
.super Ljava/lang/Object;
.source "SmartForest.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
        "TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x547dce19f07c7b64L


# instance fields
.field branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation
.end field

.field public branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:C

.field private param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private rate:D

.field private status:B


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 25
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 26
    iput-wide v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->rate:D

    const/4 v1, 0x1

    .line 29
    iput-byte v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->status:B

    .line 31
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->param:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(C)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 25
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 26
    iput-wide v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->rate:D

    const/4 v1, 0x1

    .line 29
    iput-byte v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->status:B

    .line 31
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->param:Ljava/lang/Object;

    .line 46
    iput-char p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    return-void
.end method

.method public constructor <init>(CILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CITT;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 25
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 26
    iput-wide v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->rate:D

    .line 50
    iput-char p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    int-to-byte p1, p2

    .line 51
    iput-byte p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->status:B

    .line 52
    iput-object p3, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->param:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;)",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 64
    new-array v0, v1, [Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    goto :goto_e

    :catchall_b
    move-exception p1

    goto/16 :goto_a5

    .line 66
    :cond_e
    :goto_e
    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getC()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getIndex(C)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v0, v2, :cond_61

    .line 68
    iget-object v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    aget-object v4, v1, v0

    if-nez v4, :cond_22

    .line 69
    aput-object p1, v1, v0

    .line 71
    :cond_22
    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 72
    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v0

    if-eq v0, v2, :cond_58

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_33

    goto :goto_5d

    .line 82
    :cond_33
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result v0

    if-eq v0, v2, :cond_40

    .line 83
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {v0, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->setStatus(I)V

    .line 85
    :cond_40
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->setParam(Ljava/lang/Object;)V

    goto :goto_5d

    .line 77
    :cond_4a
    iget-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result p1

    if-ne p1, v2, :cond_5d

    .line 78
    iget-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->setStatus(I)V

    goto :goto_5d

    .line 74
    :cond_58
    iget-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1, v3}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->setStatus(I)V

    .line 88
    :cond_5d
    :goto_5d
    iget-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branch:Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_b

    monitor-exit p0

    return-object p1

    :cond_61
    if-gez v0, :cond_a3

    .line 93
    :try_start_63
    iget-object v2, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    if-eqz v2, :cond_8d

    array-length v4, v2

    int-to-double v4, v4

    iget-wide v6, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->rate:D

    const-wide/high16 v8, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_8d

    const/high16 v0, 0x10000

    .line 94
    new-array v0, v0, [Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 95
    array-length v3, v2

    :goto_77
    if-ge v1, v3, :cond_84

    aget-object v4, v2, v1

    .line 96
    invoke-virtual {v4}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getC()C

    move-result v5

    aput-object v4, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 98
    :cond_84
    invoke-virtual {p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getC()C

    move-result v1

    aput-object p1, v0, v1

    .line 100
    iput-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    goto :goto_a3

    .line 102
    :cond_8d
    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    add-int/2addr v0, v3

    neg-int v0, v0

    .line 104
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    aput-object p1, v4, v0

    .line 107
    iput-object v4, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    :try_end_a3
    .catchall {:try_start_63 .. :try_end_a3} :catchall_b

    .line 111
    :cond_a3
    :goto_a3
    monitor-exit p0

    return-object p1

    :goto_a5
    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_b

    throw p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    .line 182
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_1e

    .line 184
    new-instance v2, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5, p2}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;-><init>(CILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    goto :goto_2c

    .line 186
    :cond_1e
    new-instance v2, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v5}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;-><init>(CILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    .line 188
    :goto_2c
    iget-object v2, v1, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getIndex(C)I

    move-result v0

    aget-object v1, v2, v0

    move v0, v3

    goto :goto_2

    :cond_3a
    return-void
.end method

.method public addBranch(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 15
    check-cast p1, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->compareTo(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;)I"
        }
    .end annotation

    .line 203
    iget-char v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    iget-char p1, p1, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    if-le v0, p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    if-ge v0, p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public get(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p1

    return-object p1
.end method

.method public getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "TT;>;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getIndex(C)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 220
    :cond_8
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getC()C
    .registers 2

    .line 164
    iget-char v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    return v0
.end method

.method public getIndex(C)I
    .registers 5

    .line 115
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->branches:[Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 117
    :cond_6
    array-length v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_c

    return p1

    .line 120
    :cond_c
    new-instance v1, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    invoke-direct {v1, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;-><init>(C)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getParam()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->param:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()B
    .registers 2

    .line 156
    iget-byte v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->status:B

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 152
    iget-char v0, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->c:C

    return v0
.end method

.method public setParam(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->param:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    int-to-byte p1, p1

    .line 160
    iput-byte p1, p0, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->status:B

    return-void
.end method
