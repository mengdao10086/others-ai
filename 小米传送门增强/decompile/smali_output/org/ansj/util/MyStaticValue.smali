.class public Lorg/ansj/util/MyStaticValue;
.super Ljava/lang/Object;
.source "MyStaticValue.java"


# static fields
.field public static final CRF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field public static final LIBRARYLOG:Lorg/slf4j/Logger;

.field public static ambiguityLibrary:Ljava/lang/String;

.field public static isNameRecognition:Ljava/lang/Boolean;

.field public static isNumRecognition:Ljava/lang/Boolean;

.field public static isQuantifierRecognition:Ljava/lang/Boolean;

.field public static isRealName:Ljava/lang/Boolean;

.field public static isSkipUserDefine:Z

.field public static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-direct {v0}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>()V

    sput-object v0, Lorg/ansj/util/MyStaticValue;->EMPTY_FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 39
    const-string v0, "DICLOG"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/ansj/util/MyStaticValue;->isNameRecognition:Ljava/lang/Boolean;

    .line 49
    sput-object v0, Lorg/ansj/util/MyStaticValue;->isNumRecognition:Ljava/lang/Boolean;

    .line 52
    sput-object v0, Lorg/ansj/util/MyStaticValue;->isQuantifierRecognition:Ljava/lang/Boolean;

    .line 55
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/ansj/util/MyStaticValue;->isRealName:Ljava/lang/Boolean;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ansj/util/MyStaticValue;->DIC:Ljava/util/Map;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/ansj/util/MyStaticValue;->CRF:Ljava/util/Map;

    .line 66
    const-string v1, "ambiguity.dic"

    sput-object v1, Lorg/ansj/util/MyStaticValue;->ambiguityLibrary:Ljava/lang/String;

    const/4 v1, 0x0

    .line 71
    sput-boolean v1, Lorg/ansj/util/MyStaticValue;->isSkipUserDefine:Z

    .line 75
    const-string v1, "dic"

    const-string v2, "core.dic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCompanReader()Ljava/io/BufferedReader;
    .registers 2

    .line 100
    const-string v0, "company.data"

    sget-object v1, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/ansj/dic/DicReader;->getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 83
    sget-object v0, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDicForest()Lorg/nlpcn/commons/lang/tire/domain/Forest;
    .registers 1

    .line 230
    const-string v0, "dic"

    invoke-static {v0}, Lorg/ansj/util/MyStaticValue;->getDicForest(Ljava/lang/String;)Lorg/nlpcn/commons/lang/tire/domain/Forest;

    move-result-object v0

    return-object v0
.end method

.method public static getDicForest(Ljava/lang/String;)Lorg/nlpcn/commons/lang/tire/domain/Forest;
    .registers 3

    .line 240
    sget-object v0, Lorg/ansj/util/MyStaticValue;->DIC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 243
    sget-object v0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v1, "dic {} not found in config "

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_11
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 246
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/ansj/util/MyStaticValue;->initForest(Ljava/lang/String;Ljava/lang/String;)Lorg/nlpcn/commons/lang/tire/domain/Forest;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1c
    check-cast v0, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    return-object v0
.end method

.method public static getNatureMapReader()Ljava/io/BufferedReader;
    .registers 2

    .line 127
    const-string v0, "nature.map"

    sget-object v1, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/ansj/dic/DicReader;->getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static getNatureTableReader()Ljava/io/BufferedReader;
    .registers 2

    .line 136
    const-string v0, "nature.table"

    sget-object v1, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/ansj/dic/DicReader;->getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static getPersonFreqMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 158
    :try_start_7
    const-string v2, "asian_name_freq.data"

    sget-object v3, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/ansj/dic/DicReader;->getInputStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_1a} :catch_21
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1f

    .line 166
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_38

    :catchall_1f
    move-exception v0

    goto :goto_39

    :catch_21
    move-exception v2

    goto :goto_25

    :catch_23
    move-exception v2

    goto :goto_30

    .line 164
    :goto_25
    :try_start_25
    sget-object v3, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v4, "\u627e\u4e0d\u5230\u7c7b"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_1f

    .line 166
    :goto_2c
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_38

    .line 162
    :goto_30
    :try_start_30
    sget-object v3, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v4, "IO\u5f02\u5e38"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_1f

    goto :goto_2c

    :goto_38
    return-object v0

    .line 166
    :goto_39
    invoke-static {v1}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 167
    throw v0
.end method

.method public static getPersonReader()Ljava/io/BufferedReader;
    .registers 2

    .line 91
    const-string v0, "person.dic"

    sget-object v1, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/ansj/dic/DicReader;->getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static initBigramTables()V
    .registers 9

    const/4 v0, 0x0

    .line 179
    :try_start_1
    const-string v1, "bigramdict.dic"

    sget-object v2, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/ansj/dic/DicReader;->getInputStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/nlpcn/commons/lang/util/IOUtil;->getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 183
    :cond_f
    :goto_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 184
    invoke-static {v1}, Lorg/nlpcn/commons/lang/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_f

    .line 187
    :cond_1c
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 188
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 189
    aget-object v1, v1, v4

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    aget-object v5, v1, v4

    invoke-static {v5}, Lorg/ansj/library/DATDictionary;->getItem(Ljava/lang/String;)Lorg/ansj/domain/AnsjItem;

    move-result-object v5

    .line 192
    aget-object v6, v1, v2

    invoke-static {v6}, Lorg/ansj/library/DATDictionary;->getItem(Ljava/lang/String;)Lorg/ansj/domain/AnsjItem;

    move-result-object v6

    .line 194
    sget-object v7, Lorg/ansj/domain/AnsjItem;->NULL:Lorg/ansj/domain/AnsjItem;
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_40} :catch_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_40} :catch_53
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_40} :catch_51
    .catchall {:try_start_1 .. :try_end_40} :catchall_4f

    const-string v8, "#"

    if-ne v5, v7, :cond_57

    :try_start_44
    aget-object v4, v1, v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 195
    sget-object v5, Lorg/ansj/domain/AnsjItem;->BEGIN:Lorg/ansj/domain/AnsjItem;

    goto :goto_57

    :catchall_4f
    move-exception v1

    goto :goto_a2

    :catch_51
    move-exception v1

    goto :goto_89

    :catch_53
    move-exception v1

    goto :goto_91

    :catch_55
    move-exception v1

    goto :goto_99

    :cond_57
    :goto_57
    if-ne v6, v7, :cond_63

    .line 198
    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 199
    sget-object v6, Lorg/ansj/domain/AnsjItem;->END:Lorg/ansj/domain/AnsjItem;

    :cond_63
    if-eq v5, v7, :cond_f

    if-ne v6, v7, :cond_68

    goto :goto_f

    .line 206
    :cond_68
    iget-object v1, v5, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    if-nez v1, :cond_73

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v5, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    .line 210
    :cond_73
    iget-object v1, v5, Lorg/ansj/domain/AnsjItem;->bigramEntryMap:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/nlpcn/commons/lang/dat/Item;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_84} :catch_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_84} :catch_53
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_84} :catch_51
    .catchall {:try_start_44 .. :try_end_84} :catchall_4f

    goto :goto_f

    .line 220
    :cond_85
    :goto_85
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_a1

    .line 218
    :goto_89
    :try_start_89
    sget-object v2, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "IO\u5f02\u5e38"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    .line 216
    :goto_91
    sget-object v2, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "\u4e0d\u652f\u6301\u7684\u7f16\u7801"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_85

    .line 214
    :goto_99
    sget-object v2, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v3, "\u6570\u5b57\u683c\u5f0f\u5f02\u5e38"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_4f

    goto :goto_85

    :goto_a1
    return-void

    .line 220
    :goto_a2
    invoke-static {v0}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 221
    throw v1
.end method

.method private static declared-synchronized initForest(Ljava/lang/String;Ljava/lang/String;)Lorg/nlpcn/commons/lang/tire/domain/Forest;
    .registers 5

    const-class v0, Lorg/ansj/util/MyStaticValue;

    monitor-enter v0

    .line 260
    :try_start_3
    sget-object v1, Lorg/ansj/util/MyStaticValue;->CRF:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 262
    instance-of v2, v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    if-eqz v2, :cond_15

    .line 263
    check-cast v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception p0

    goto :goto_24

    .line 265
    :cond_15
    :try_start_15
    new-instance v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-direct {v1}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>()V

    .line 266
    invoke-static {v1, p1}, Lorg/ansj/library/UserDefineLibrary;->loadLibrary(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;)V

    .line 267
    sget-object p1, Lorg/ansj/util/MyStaticValue;->DIC:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_13

    .line 268
    monitor-exit v0

    return-object v1

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_13

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 79
    sput-object p0, Lorg/ansj/util/MyStaticValue;->sContext:Landroid/content/Context;

    return-void
.end method
