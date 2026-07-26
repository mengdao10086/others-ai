.class public Lorg/ansj/dic/DicReader;
.super Ljava/lang/Object;
.source "DicReader.java"


# static fields
.field public static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lorg/ansj/dic/DicReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/ansj/dic/DicReader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-nez p1, :cond_c

    return-object v0

    .line 58
    :cond_c
    :try_start_c
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method public static getReader(Ljava/lang/String;Landroid/content/Context;)Ljava/io/BufferedReader;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-nez p1, :cond_c

    return-object v0

    .line 35
    :cond_c
    :try_start_c
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_25

    .line 41
    :try_start_10
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p0

    .line 43
    sget-object p1, Lorg/ansj/dic/DicReader;->logger:Lorg/slf4j/Logger;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u7f16\u7801"

    invoke-interface {p1, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_25
    return-object v0
.end method
