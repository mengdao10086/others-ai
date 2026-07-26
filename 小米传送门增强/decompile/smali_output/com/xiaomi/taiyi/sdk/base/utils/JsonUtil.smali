.class public final Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;

.field private static final gson:Lcom/google/gson/Gson;

.field private static final printGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->INSTANCE:Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->gson:Lcom/google/gson/Gson;

    .line 2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->printGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromFile(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, "fromFile "

    const-string v1, "JsonUtil"

    const-string v2, "filePath"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    :try_start_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file not exist!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_32
    move-exception p1

    goto :goto_40

    :catch_34
    move-exception p1

    goto :goto_5f

    :cond_36
    const/4 v4, 0x1

    .line 6
    invoke-static {v3, v2, v4, v2}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3f} :catch_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3f} :catch_32

    return-object p0

    .line 11
    :goto_40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Exception! "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->eMask(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 12
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IOException! "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->eMask(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "JsonUtil"

    const-string v1, "fromJson "

    const-string v2, "json"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clazz"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_e
    sget-object v2, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_14} :catch_19
    .catch Lcom/google/gson/JsonIOException; {:try_start_e .. :try_end_14} :catch_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p1

    goto :goto_1b

    :catch_17
    move-exception p1

    goto :goto_3a

    :catch_19
    move-exception p1

    goto :goto_59

    .line 9
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Exception! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 10
    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " JsonIOException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 11
    :goto_59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " JsonSyntaxException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_77
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, "JsonUtil"

    const-string v1, "fromJson "

    const-string v2, "json"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_e
    sget-object v2, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_14} :catch_19
    .catch Lcom/google/gson/JsonIOException; {:try_start_e .. :try_end_14} :catch_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p1

    goto :goto_1b

    :catch_17
    move-exception p1

    goto :goto_3a

    :catch_19
    move-exception p1

    goto :goto_59

    .line 20
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Exception! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 21
    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " JsonIOException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 22
    :goto_59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " JsonSyntaxException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_77
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final fromStream(Ljava/io/InputStream;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, "JsonUtil"

    const-string v1, "input"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_d
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catch Lcom/google/gson/JsonParseException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_25

    .line 2
    :try_start_14
    sget-object p0, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v3}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_29

    .line 3
    :try_start_1a
    invoke-virtual {p0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2b

    .line 4
    :try_start_1e
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    .line 5
    :try_start_21
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_24
    .catch Lcom/google/gson/JsonParseException; {:try_start_21 .. :try_end_24} :catch_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    goto :goto_38

    :catch_27
    move-exception p0

    goto :goto_51

    :catchall_29
    move-exception p0

    goto :goto_32

    :catchall_2b
    move-exception p0

    .line 6
    :try_start_2c
    throw p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_29

    .line 7
    :goto_32
    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p1

    :try_start_34
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_38
    .catch Lcom/google/gson/JsonParseException; {:try_start_34 .. :try_end_38} :catch_27
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_25

    .line 19
    :goto_38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromStream Exception! "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 20
    :goto_51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromStream JsonParseException! "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-object v1
.end method

.method public static final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 3
    :cond_5
    :try_start_5
    sget-object v1, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Lcom/google/gson/JsonIOException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJson "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " JsonIOException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "JsonUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toPrettyJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 3
    :cond_5
    :try_start_5
    sget-object v1, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->printGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Lcom/google/gson/JsonIOException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toPrettyJson "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " JsonIOException! "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "JsonUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final fromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->fromStream(Ljava/io/InputStream;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_23

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_23
    move-exception p2

    :try_start_24
    throw p2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final toFile(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 11

    const-string v0, " -> "

    const-string v1, "filePath"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_b

    return v1

    .line 1
    :cond_b
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->toPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "JsonUtil"

    const-string v5, "toFile "

    if-nez v3, :cond_31

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " json is empty!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_31
    :try_start_31
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_47

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_4a

    :catch_40
    move-exception v2

    goto :goto_76

    :catch_42
    move-exception v2

    goto :goto_9b

    :catch_44
    move-exception v2

    goto/16 :goto_c0

    .line 11
    :cond_47
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 13
    :goto_4a
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_4f} :catch_44
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4f} :catch_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_40

    .line 14
    :try_start_4f
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_67

    .line 15
    :try_start_56
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 17
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_69

    const/4 v2, 0x0

    .line 18
    :try_start_5f
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_67

    .line 19
    :try_start_62
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_65} :catch_44
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_42
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_40

    const/4 p1, 0x1

    return p1

    :catchall_67
    move-exception v2

    goto :goto_70

    :catchall_69
    move-exception v2

    .line 20
    :try_start_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v7

    :try_start_6c
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_67

    .line 21
    :goto_70
    :try_start_70
    throw v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v3

    :try_start_72
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_76} :catch_44
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_42
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_40

    .line 35
    :goto_76
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception! "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->eMask(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 36
    :goto_9b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IOException! "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->eMask(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 37
    :goto_c0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SecurityException! "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->eMask(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e4
    return v1
.end method
