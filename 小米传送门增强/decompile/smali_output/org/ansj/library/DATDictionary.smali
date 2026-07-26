.class public Lorg/ansj/library/DATDictionary;
.super Ljava/lang/Object;
.source "DATDictionary.java"


# static fields
.field private static final DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

.field public static final IN_SYSTEM:[C

.field public static arrayLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x10000

    .line 23
    new-array v0, v0, [C

    sput-object v0, Lorg/ansj/library/DATDictionary;->IN_SYSTEM:[C

    .line 28
    invoke-static {}, Lorg/ansj/library/DATDictionary;->loadDAT()Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/DATDictionary;->DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    .line 33
    iget v0, v0, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->arrayLength:I

    sput v0, Lorg/ansj/library/DATDictionary;->arrayLength:I

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 2

    .line 154
    sget-object v0, Lorg/ansj/library/DATDictionary;->DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    invoke-virtual {v0, p0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getItem(I)Lorg/ansj/domain/AnsjItem;
    .registers 2

    .line 136
    sget-object v0, Lorg/ansj/library/DATDictionary;->DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    invoke-virtual {v0, p0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getItem(I)Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object p0

    check-cast p0, Lorg/ansj/domain/AnsjItem;

    if-nez p0, :cond_c

    .line 138
    sget-object p0, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    :cond_c
    return-object p0
.end method

.method public static getItem(Ljava/lang/String;)Lorg/ansj/domain/AnsjItem;
    .registers 2

    .line 145
    sget-object v0, Lorg/ansj/library/DATDictionary;->DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    invoke-virtual {v0, p0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getItem(Ljava/lang/String;)Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object p0

    check-cast p0, Lorg/ansj/domain/AnsjItem;

    if-nez p0, :cond_c

    .line 147
    sget-object p0, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;

    :cond_c
    return-object p0
.end method

.method private static loadDAT()Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;
    .registers 13

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 43
    :try_start_5
    const-string v3, "core.dic"

    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/ansj/dic/DicReader;->getInputStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    const-class v4, Lorg/ansj/domain/AnsjItem;

    invoke-static {v3, v4}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->loadText(Ljava/io/InputStream;Ljava/lang/Class;)Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    move-result-object v3

    .line 45
    invoke-static {v3}, Lorg/ansj/library/DATDictionary;->personNameFull(Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;)V

    .line 47
    invoke-virtual {v3}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getDAT()[Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1f
    if-ge v7, v5, :cond_6a

    aget-object v8, v4, v7

    if-eqz v8, :cond_67

    .line 48
    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2c

    goto :goto_67

    .line 52
    :cond_2c
    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getStatus()B

    move-result v9

    const/4 v10, 0x4

    if-ge v9, v10, :cond_5d

    move v9, v6

    .line 53
    :goto_34
    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5d

    .line 54
    sget-object v10, Lorg/ansj/library/DATDictionary;->IN_SYSTEM:[C

    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :catch_55
    move-exception v0

    goto :goto_84

    :catch_57
    move-exception v0

    goto :goto_8c

    :catch_59
    move-exception v0

    goto :goto_94

    :catch_5b
    move-exception v0

    goto :goto_9c

    .line 57
    :cond_5d
    invoke-virtual {v8}, Lorg/nlpcn/commons/lang/dat/Item;->getStatus()B

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_67

    .line 58
    invoke-virtual {v8, v2}, Lorg/nlpcn/commons/lang/dat/Item;->setName(Ljava/lang/String;)V

    :cond_67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 63
    :cond_6a
    sget-object v4, Lorg/ansj/library/DATDictionary;->IN_SYSTEM:[C

    const v5, 0xff05

    const/16 v6, 0x25

    aput-char v6, v4, v5

    .line 64
    sget-object v4, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v5, "init core library ok use time :{}"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_83
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_83} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_83} :catch_59
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_83} :catch_57
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_83} :catch_55

    return-object v3

    .line 73
    :goto_84
    sget-object v1, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "IO\u5f02\u5e38"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a3

    .line 71
    :goto_8c
    sget-object v1, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "\u6570\u5b57\u683c\u5f0f\u5f02\u5e38"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a3

    .line 69
    :goto_94
    sget-object v1, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "\u975e\u6cd5\u8bbf\u95ee"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a3

    .line 67
    :goto_9c
    sget-object v1, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "\u65e0\u6cd5\u5b9e\u4f8b\u5316"

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a3
    return-object v2
.end method

.method private static personNameFull(Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/ansj/library/name/PersonAttrLibrary;

    invoke-direct {v0}, Lorg/ansj/library/name/PersonAttrLibrary;-><init>()V

    invoke-virtual {v0}, Lorg/ansj/library/name/PersonAttrLibrary;->getPersonMap()Ljava/util/HashMap;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_57

    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getDAT()[Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-object v3, v3, v6

    check-cast v3, Lorg/ansj/domain/AnsjItem;

    if-nez v3, :cond_57

    .line 91
    new-instance v3, Lorg/ansj/domain/AnsjItem;

    invoke-direct {v3}, Lorg/ansj/domain/AnsjItem;-><init>()V

    .line 92
    invoke-virtual {v3, v5}, Lorg/nlpcn/commons/lang/dat/Item;->setBase(I)V

    const/4 v6, -0x1

    .line 93
    invoke-virtual {v3, v6}, Lorg/nlpcn/commons/lang/dat/Item;->setCheck(I)V

    const/4 v6, 0x3

    .line 94
    invoke-virtual {v3, v6}, Lorg/nlpcn/commons/lang/dat/Item;->setStatus(B)V

    .line 95
    invoke-virtual {v3, v2}, Lorg/nlpcn/commons/lang/dat/Item;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getDAT()[Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-object v3, v6, v7

    goto :goto_5d

    .line 98
    :cond_57
    invoke-virtual {p0, v2}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getItem(Ljava/lang/String;)Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object v3

    check-cast v3, Lorg/ansj/domain/AnsjItem;

    :goto_5d
    if-nez v3, :cond_60

    goto :goto_11

    .line 105
    :cond_60
    iget-object v6, v3, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    if-nez v6, :cond_80

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_77

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x100

    if-ge v2, v4, :cond_77

    .line 107
    sget-object v2, Lorg/ansj/domain/TermNatures;->NULL:Lorg/ansj/domain/TermNatures;

    iput-object v2, v3, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    goto :goto_80

    .line 109
    :cond_77
    new-instance v2, Lorg/ansj/domain/TermNatures;

    sget-object v4, Lorg/ansj/domain/TermNature;->NR:Lorg/ansj/domain/TermNature;

    invoke-direct {v2, v4}, Lorg/ansj/domain/TermNatures;-><init>(Lorg/ansj/domain/TermNature;)V

    iput-object v2, v3, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    .line 112
    :cond_80
    :goto_80
    iget-object v2, v3, Lorg/ansj/domain/AnsjItem;->termNatures:Lorg/ansj/domain/TermNatures;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ansj/domain/PersonNatureAttr;

    invoke-virtual {v2, v1}, Lorg/ansj/domain/TermNatures;->setPersonNatureAttr(Lorg/ansj/domain/PersonNatureAttr;)V

    goto :goto_11

    :cond_8c
    return-void
.end method

.method public static status(C)I
    .registers 2

    .line 117
    sget-object v0, Lorg/ansj/library/DATDictionary;->DAT:Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;

    invoke-virtual {v0}, Lorg/nlpcn/commons/lang/dat/DoubleArrayTire;->getDAT()[Lorg/nlpcn/commons/lang/dat/Item;

    move-result-object v0

    aget-object p0, v0, p0

    check-cast p0, Lorg/ansj/domain/AnsjItem;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_e
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/dat/Item;->getStatus()B

    move-result p0

    return p0
.end method
