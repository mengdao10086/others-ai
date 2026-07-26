.class public Lorg/ansj/library/UserDefineLibrary;
.super Ljava/lang/Object;
.source "UserDefineLibrary.java"


# static fields
.field public static final DEFAULT_FREQ:Ljava/lang/Integer;

.field public static FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

.field public static ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3e8

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/UserDefineLibrary;->DEFAULT_FREQ:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lorg/ansj/library/UserDefineLibrary;->FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 32
    sput-object v0, Lorg/ansj/library/UserDefineLibrary;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 35
    invoke-static {}, Lorg/ansj/library/UserDefineLibrary;->initUserLibrary()V

    .line 36
    invoke-static {}, Lorg/ansj/library/UserDefineLibrary;->initAmbiguityLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findLibrary(Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    .line 216
    new-array v1, v0, [Ljava/io/File;

    .line 217
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    .line 220
    const-class v3, Lorg/ansj/library/UserDefineLibrary;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 222
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    :cond_23
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    .line 229
    new-array v1, p0, [Ljava/io/File;

    .line 230
    aput-object v2, v1, v0

    goto :goto_4a

    .line 231
    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 232
    new-instance p0, Lorg/ansj/library/UserDefineLibrary$1;

    invoke-direct {p0}, Lorg/ansj/library/UserDefineLibrary$1;-><init>()V

    invoke-virtual {v2, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 242
    array-length v0, p0

    if-lez v0, :cond_4a

    move-object v1, p0

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method public static getParams(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 179
    sget-object v0, Lorg/ansj/library/UserDefineLibrary;->FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-static {v0, p0}, Lorg/ansj/library/UserDefineLibrary;->getParams(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParams(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 184
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->get(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_16
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getStatus()B

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_24

    .line 191
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getParam()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_24
    return-object v2
.end method

.method private static initAmbiguityLibrary()V
    .registers 12

    .line 72
    sget-object v0, Lorg/ansj/util/MyStaticValue;->ambiguityLibrary:Ljava/lang/String;

    invoke-static {v0}, Lorg/ansj/library/UserDefineLibrary;->findLibrary(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 74
    array-length v1, v0

    if-lez v1, :cond_a2

    .line 75
    new-instance v1, Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-direct {v1}, Lorg/nlpcn/commons/lang/tire/domain/Forest;-><init>()V

    sput-object v1, Lorg/ansj/library/UserDefineLibrary;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    .line 76
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_9a

    aget-object v4, v0, v3

    const/4 v5, 0x0

    .line 79
    :try_start_18
    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lorg/nlpcn/commons/lang/util/IOUtil;->getReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v5

    .line 81
    :cond_1e
    :goto_1e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 82
    invoke-static {v6}, Lorg/nlpcn/commons/lang/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 83
    invoke-static {v6}, Lorg/nlpcn/commons/lang/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    array-length v9, v7

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_60

    .line 87
    sget-object v9, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init ambiguity  error in line :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " format err !"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_60

    :catchall_5a
    move-exception v0

    goto :goto_96

    :catch_5c
    move-exception v6

    goto :goto_7a

    :catch_5e
    move-exception v4

    goto :goto_8a

    :cond_60
    :goto_60
    move v6, v2

    .line 89
    :goto_61
    array-length v9, v7

    if-ge v6, v9, :cond_6c

    .line 90
    aget-object v9, v7, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto :goto_61

    .line 92
    :cond_6c
    sget-object v6, Lorg/ansj/library/UserDefineLibrary;->ambiguityForest:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->addBranch(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_75} :catch_5e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_75} :catch_5c
    .catchall {:try_start_18 .. :try_end_75} :catchall_5a

    goto :goto_1e

    .line 101
    :cond_76
    :goto_76
    invoke-static {v5}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_92

    .line 99
    :goto_7a
    :try_start_7a
    sget-object v7, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v8, "Init ambiguity library error :{}, path: {}"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v6, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_76

    .line 97
    :goto_8a
    sget-object v6, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v7, "\u4e0d\u652f\u6301\u7684\u7f16\u7801"

    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_5a

    goto :goto_76

    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 101
    :goto_96
    invoke-static {v5}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 102
    throw v0

    .line 105
    :cond_9a
    sget-object v0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v1, "Init ambiguity library ok!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_ab

    .line 108
    :cond_a2
    sget-object v0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v1, "Init ambiguity library warning :{} because : file not found or failed to read !"

    sget-object v2, Lorg/ansj/util/MyStaticValue;->ambiguityLibrary:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_ab
    return-void
.end method

.method private static initUserLibrary()V
    .registers 1

    .line 117
    invoke-static {}, Lorg/ansj/util/MyStaticValue;->getDicForest()Lorg/nlpcn/commons/lang/tire/domain/Forest;

    move-result-object v0

    sput-object v0, Lorg/ansj/library/UserDefineLibrary;->FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    return-void
.end method

.method public static loadLibrary(Lorg/nlpcn/commons/lang/tire/domain/Forest;Ljava/lang/String;)V
    .registers 12

    .line 126
    invoke-static {p1}, Lorg/ansj/library/UserDefineLibrary;->findLibrary(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 128
    array-length v1, v0

    if-lez v1, :cond_9e

    .line 129
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, p1, :cond_96

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 135
    :try_start_f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/nlpcn/commons/lang/util/IOUtil;->getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v4

    .line 136
    :cond_1a
    :goto_1a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 137
    invoke-static {v5}, Lorg/nlpcn/commons/lang/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 138
    invoke-static {v5}, Lorg/nlpcn/commons/lang/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 140
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 142
    sget-boolean v7, Lorg/ansj/util/MyStaticValue;->isSkipUserDefine:Z

    if-eqz v7, :cond_49

    invoke-static {v6}, Lorg/ansj/library/DATDictionary;->getId(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_49

    goto :goto_1a

    :catchall_43
    move-exception p0

    goto :goto_92

    :catch_45
    move-exception v5

    goto :goto_76

    :catch_47
    move-exception v3

    goto :goto_86

    .line 145
    :cond_49
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5d

    .line 146
    new-instance v6, Lorg/nlpcn/commons/lang/tire/domain/Value;

    aget-object v5, v5, v1

    const-string v7, "userDefine"

    const-string v8, "1000"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/nlpcn/commons/lang/tire/domain/Value;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6e

    .line 148
    :cond_5d
    new-instance v6, Lorg/nlpcn/commons/lang/tire/domain/Value;

    aget-object v7, v5, v1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v5, v5, v9

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lorg/nlpcn/commons/lang/tire/domain/Value;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    :goto_6e
    invoke-static {p0, v6}, Lorg/nlpcn/commons/lang/tire/library/Library;->insertWord(Lorg/nlpcn/commons/lang/tire/domain/Forest;Lorg/nlpcn/commons/lang/tire/domain/Value;)V
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_71} :catch_47
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_71} :catch_45
    .catchall {:try_start_f .. :try_end_71} :catchall_43

    goto :goto_1a

    .line 158
    :cond_72
    :goto_72
    invoke-static {v4}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_8e

    .line 156
    :goto_76
    :try_start_76
    sget-object v6, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v7, "Init user library error :{}, path: {}"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_72

    .line 154
    :goto_86
    sget-object v5, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v6, "\u4e0d\u652f\u6301\u7684\u7f16\u7801"

    invoke-interface {v5, v6, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_43

    goto :goto_72

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 158
    :goto_92
    invoke-static {v4}, Lorg/ansj/util/AnsjReader;->closeFileSafely(Ljava/io/Closeable;)V

    .line 159
    throw p0

    .line 162
    :cond_96
    sget-object p0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string p1, "Init user library ok!"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_a5

    .line 166
    :cond_9e
    sget-object p0, Lorg/ansj/util/MyStaticValue;->LIBRARYLOG:Lorg/slf4j/Logger;

    const-string v0, "Init user library  error :{} because : not find that file !"

    invoke-interface {p0, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a5
    return-void
.end method
