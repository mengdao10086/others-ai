.class public Lorg/nlpcn/commons/lang/util/FileIterator;
.super Ljava/lang/Object;
.source "FileIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private br:Ljava/io/BufferedReader;

.field temp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->br:Ljava/io/BufferedReader;

    .line 25
    invoke-static {p1, p2}, Lorg/nlpcn/commons/lang/util/IOUtil;->getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    iput-object p1, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->br:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->br:Ljava/io/BufferedReader;

    if-eqz v0, :cond_c

    .line 66
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .line 30
    iget-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 32
    :try_start_5
    iget-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :goto_12
    iget-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/util/FileIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/util/FileIterator;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 49
    :try_start_1
    iget-object v1, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 50
    iget-object v1, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->br:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    goto :goto_12

    :catchall_e
    move-exception v1

    goto :goto_1d

    :catch_10
    move-exception v1

    goto :goto_17

    .line 52
    :cond_12
    :goto_12
    iget-object v1, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_10
    .catchall {:try_start_1 .. :try_end_14} :catchall_e

    .line 58
    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    return-object v1

    .line 55
    :goto_17
    :try_start_17
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_e

    .line 58
    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    return-object v0

    :goto_1d
    iput-object v0, p0, Lorg/nlpcn/commons/lang/util/FileIterator;->temp:Ljava/lang/String;

    throw v1
.end method

.method public remove()V
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file iteartor can not remove "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
