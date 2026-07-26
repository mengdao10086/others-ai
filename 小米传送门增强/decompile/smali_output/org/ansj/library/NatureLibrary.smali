.class public Lorg/ansj/library/NatureLibrary;
.super Ljava/lang/Object;
.source "NatureLibrary.java"


# static fields
.field private static final NATUREMAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ansj/domain/Nature;",
            ">;"
        }
    .end annotation
.end field

.field private static NATURETABLE:[[I

.field public static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lorg/ansj/library/NatureLibrary;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/NatureLibrary;->logger:Lorg/slf4j/Logger;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ansj/library/NatureLibrary;->NATUREMAP:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lorg/ansj/library/NatureLibrary;->NATURETABLE:[[I

    .line 41
    invoke-static {}, Lorg/ansj/library/NatureLibrary;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNature(Ljava/lang/String;)Lorg/ansj/domain/Nature;
    .registers 5

    .line 129
    sget-object v0, Lorg/ansj/library/NatureLibrary;->NATUREMAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ansj/domain/Nature;

    if-nez v1, :cond_14

    .line 131
    new-instance v1, Lorg/ansj/domain/Nature;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, v3, v2}, Lorg/ansj/domain/Nature;-><init>(Ljava/lang/String;III)V

    .line 132
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v1
.end method

.method private static init()V
    .registers 13

    .line 45
    const-string v0, "\t"

    .line 50
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getNatureMapReader()Ljava/io/BufferedReader;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 55
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 56
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 57
    array-length v7, v6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_19

    goto :goto_8

    .line 60
    :cond_19
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 61
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    .line 62
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 63
    sget-object v10, Lorg/ansj/library/NatureLibrary;->NATUREMAP:Ljava/util/HashMap;

    aget-object v11, v6, v4

    new-instance v12, Lorg/ansj/domain/Nature;

    aget-object v6, v6, v4

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/ansj/domain/Nature;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3e} :catch_41
    .catchall {:try_start_a .. :try_end_3e} :catchall_3f

    goto :goto_8

    :catchall_3f
    move-exception v0

    goto :goto_a1

    :catch_41
    move-exception v6

    goto :goto_47

    .line 69
    :cond_43
    :goto_43
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_4f

    .line 67
    :goto_47
    :try_start_47
    sget-object v7, Lorg/ansj/library/NatureLibrary;->logger:Lorg/slf4j/Logger;

    const-string v8, "\u8bcd\u6027\u5217\u8868\u52a0\u8f7d\u5931\u8d25!"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_3f

    goto :goto_43

    .line 72
    :goto_4f
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getNatureTableReader()Ljava/io/BufferedReader;

    move-result-object v1

    add-int/2addr v3, v5

    .line 74
    :try_start_54
    new-array v4, v4, [I

    aput v3, v4, v5

    aput v3, v4, v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    sput-object v3, Lorg/ansj/library/NatureLibrary;->NATURETABLE:[[I

    move v3, v2

    .line 76
    :goto_65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_90

    .line 77
    invoke-static {v4}, Lorg/nlpcn/commons/lang/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_65

    .line 79
    :cond_72
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 80
    :goto_77
    array-length v6, v4

    if-ge v5, v6, :cond_8d

    .line 81
    sget-object v6, Lorg/ansj/library/NatureLibrary;->NATURETABLE:[[I

    aget-object v6, v6, v3

    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v5
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_86} :catch_8b
    .catchall {:try_start_54 .. :try_end_86} :catchall_89

    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :catchall_89
    move-exception v0

    goto :goto_9d

    :catch_8b
    move-exception v0

    goto :goto_94

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 88
    :cond_90
    :goto_90
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_9c

    .line 86
    :goto_94
    :try_start_94
    sget-object v2, Lorg/ansj/library/NatureLibrary;->logger:Lorg/slf4j/Logger;

    const-string v3, "\u52a0\u8f7d\u8bcd\u6027\u5173\u7cfb\u5931\u8d25!"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_89

    goto :goto_90

    :goto_9c
    return-void

    .line 88
    :goto_9d
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 89
    throw v0

    .line 69
    :goto_a1
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 70
    throw v0
.end method
