.class public Lcom/xiaomi/onetrack/util/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field private static final b:Ljava/lang/String; = "onetrack"

.field private static final c:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 53
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    .line 61
    :goto_4
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_12

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 70
    const-string p0, ""

    return-object p0

    .line 72
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_35

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2f

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 78
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 80
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 39
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 42
    const-string v0, "onetrack"

    const-string v1, "closeQuietly e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 21
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 24
    const-string v0, "onetrack"

    const-string v1, "close e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_12

    .line 84
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_12

    .line 86
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    .line 88
    const-string v0, "onetrack"

    const-string v1, "closeSafely e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
