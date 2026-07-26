.class public Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;
.super Ljava/lang/Object;
.source "DoubleArrayTire.java"


# instance fields
.field public arrayLength:I

.field private dat:[Lorg/nlpcn/commons/lang/dat/Item;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadText(Ljava/io/InputStream;Ljava/lang/Class;)Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/nlpcn/commons/lang/dat/Item;",
            ">;)",
            "Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    invoke-direct {v0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;-><init>()V

    .line 116
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Lorg/nlpcn/commons/lang/util/IOUtil;->instanceFileIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/nlpcn/commons/lang/util/FileIterator;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 120
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/util/FileIterator;->next()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->arrayLength:I

    .line 122
    new-array v1, v1, [Lorg/nlpcn/commons/lang/dat/Item;

    iput-object v1, v0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    .line 123
    :goto_1b
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/util/FileIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 124
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/util/FileIterator;->next()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nlpcn/commons/lang/dat/Item;

    .line 126
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/nlpcn/commons/lang/dat/Item;->initValue([Ljava/lang/String;)V

    .line 127
    iget-object v1, v0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    iget v3, v2, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    aput-object v2, v1, v3

    goto :goto_1b

    :cond_3b
    return-object v0

    .line 118
    :cond_3c
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getDAT()[Lorg/nlpcn/commons/lang/dat/Item;
    .registers 2

    .line 27
    iget-object v0, p0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    return-object v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getItem(Ljava/lang/String;)Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 35
    iget p1, p1, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public getItem(I)Lorg/nlpcn/commons/lang/dat/Item;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/nlpcn/commons/lang/dat/Item;",
            ">(I)TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Lorg/nlpcn/commons/lang/dat/Item;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/nlpcn/commons/lang/dat/Item;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lorg/nlpcn/commons/lang/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 46
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_19

    .line 47
    iget-object v0, p0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 50
    :cond_19
    iget-object v0, p0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-object v0, v0, v2

    if-nez v0, :cond_24

    return-object v1

    :cond_24
    move v2, v3

    .line 54
    :goto_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_52

    .line 55
    iget v4, v0, Lorg/nlpcn/commons/lang/dat/Item;->index:I

    .line 56
    iget v5, v0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->dat:[Lorg/nlpcn/commons/lang/dat/Item;

    array-length v7, v6

    sub-int/2addr v7, v3

    if-le v5, v7, :cond_3b

    return-object v1

    .line 59
    :cond_3b
    iget v0, v0, Lorg/nlpcn/commons/lang/dat/Item;->base:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v0, v5

    aget-object v0, v6, v0

    if-nez v0, :cond_47

    return-object v1

    .line 63
    :cond_47
    iget v5, v0, Lorg/nlpcn/commons/lang/dat/Item;->check:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4f

    if-eq v5, v4, :cond_4f

    return-object v1

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_52
    return-object v0
.end method
