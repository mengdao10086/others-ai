.class public Lorg/nlpcn/commons/lang/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field public static final LINEBYTE:[B

.field public static final TABBYTE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-string v0, "\t"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/nlpcn/commons/lang/util/IOUtil;->TABBYTE:[B

    .line 18
    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/nlpcn/commons/lang/util/IOUtil;->LINEBYTE:[B

    return-void
.end method

.method public static getReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method public static getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static instanceFileIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/nlpcn/commons/lang/util/FileIterator;
    .registers 3

    .line 231
    :try_start_0
    new-instance v0, Lorg/nlpcn/commons/lang/util/FileIterator;

    invoke-direct {v0, p0, p1}, Lorg/nlpcn/commons/lang/util/FileIterator;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    goto :goto_a

    :catch_8
    move-exception p0

    goto :goto_e

    .line 237
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    .line 234
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method
