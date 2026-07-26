.class public Lcom/xiaomi/onetrack/g/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x2710

.field public static final b:I = 0x3a98

.field public static final c:Ljava/lang/String; = "OT_SID"

.field public static final d:Ljava/lang/String; = "OT_ts"

.field public static final e:Ljava/lang/String; = "OT_net"

.field public static final f:Ljava/lang/String; = "OT_sender"

.field public static final g:Ljava/lang/String; = "OT_protocol"

.field private static h:Ljava/lang/String; = "HttpUtil"

.field private static final i:Ljava/lang/String; = "GET"

.field private static final j:Ljava/lang/String; = "POST"

.field private static final k:Ljava/lang/String; = "&"

.field private static final l:Ljava/lang/String; = "="

.field private static final m:Ljava/lang/String; = "UTF-8"

.field private static final n:Ljava/lang/String; = "miui_sdkconfig_jafej!@#)(*e@!#"

.field private static final o:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 117
    const-string v0, "POST"

    const-string v1, "GET"

    const/4 v2, 0x0

    if-nez p2, :cond_9

    move-object p2, v2

    goto :goto_d

    .line 123
    :cond_9
    :try_start_9
    invoke-static {p2, p3}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    .line 124
    :goto_d
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_35

    if-eqz p2, :cond_35

    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "? "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_36

    :catchall_2a
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    goto/16 :goto_cf

    :catch_2f
    move-exception p0

    move-object p2, v2

    move-object p3, p2

    move-object v0, p3

    goto/16 :goto_be

    :cond_35
    move-object p3, p1

    .line 127
    :goto_36
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_2f
    .catchall {:try_start_9 .. :try_end_41} :catchall_2a

    const/16 v3, 0x2710

    .line 128
    :try_start_43
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3a98

    .line 129
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_5b
    .catchall {:try_start_43 .. :try_end_4f} :catchall_57

    const-string v4, "UTF-8"

    if-eqz v3, :cond_5f

    .line 131
    :try_start_53
    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_8b

    :catchall_57
    move-exception p0

    move-object p2, v2

    goto/16 :goto_cf

    :catch_5b
    move-exception p0

    move-object p2, v2

    move-object v0, p2

    goto :goto_be

    .line 132
    :cond_5f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    if-eqz p2, :cond_8b

    .line 133
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 134
    const-string p0, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p3, p0, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 135
    invoke-virtual {p3, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 136
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 137
    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7d} :catch_5b
    .catchall {:try_start_53 .. :try_end_7d} :catchall_57

    .line 138
    :try_start_7d
    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_8c

    :catchall_86
    move-exception p0

    goto :goto_cf

    :catch_88
    move-exception p0

    move-object v0, v2

    goto :goto_be

    :cond_8b
    :goto_8b
    move-object p2, v2

    .line 141
    :goto_8c
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 142
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_94} :catch_88
    .catchall {:try_start_7d .. :try_end_94} :catchall_86

    .line 143
    :try_start_94
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 144
    sget-object v3, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v5, "HttpUtils POST \u4e0a\u4f20\u6210\u529f url: %s, code: %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b0} :catch_bd
    .catchall {:try_start_94 .. :try_end_b0} :catchall_ba

    .line 149
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 151
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object p0

    :catchall_ba
    move-exception p0

    move-object v2, v0

    goto :goto_cf

    :catch_bd
    move-exception p0

    .line 147
    :goto_be
    :try_start_be
    sget-object p1, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v1, "HttpUtils POST \u4e0a\u4f20\u5f02\u5e38"

    invoke-static {p1, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_ba

    .line 149
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 151
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object v2

    .line 149
    :goto_cf
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 150
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 151
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    .line 152
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 101
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-string v0, "GET"

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPost url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    :try_start_20
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_e9
    .catchall {:try_start_20 .. :try_end_2b} :catchall_e5

    const/16 v2, 0x2710

    .line 60
    :try_start_2d
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    .line 61
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 63
    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 68
    const-string v3, "OT_SID"

    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "OT_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "OT_net"

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "OT_sender"

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "OT_protocol"

    const-string v4, "3.0"

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v3, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_9c} :catch_e1
    .catchall {:try_start_2d .. :try_end_9c} :catchall_de

    .line 77
    :try_start_9c
    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 80
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 81
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_ac} :catch_db
    .catchall {:try_start_9c .. :try_end_ac} :catchall_d9

    .line 82
    :try_start_ac
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 83
    sget-object v5, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v6, "HttpUtils POST \u4e0a\u4f20\u6210\u529f url: %s, code: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ca} :catch_d7
    .catchall {:try_start_ac .. :try_end_ca} :catchall_d4

    .line 88
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 89
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 90
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object p1

    :catchall_d4
    move-exception p0

    move-object v0, v3

    goto :goto_10a

    :catch_d7
    move-exception p1

    goto :goto_ed

    :catchall_d9
    move-exception p0

    goto :goto_10a

    :catch_db
    move-exception p1

    move-object v3, v0

    goto :goto_ed

    :catchall_de
    move-exception p0

    move-object v2, v0

    goto :goto_10a

    :catch_e1
    move-exception p1

    move-object v2, v0

    :goto_e3
    move-object v3, v2

    goto :goto_ed

    :catchall_e5
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_10a

    :catch_e9
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_e3

    .line 86
    :goto_ed
    :try_start_ed
    sget-object v4, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v5, "HttpUtils POST \u4e0a\u4f20\u5931\u8d25, url: %s, error: %s"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_ed .. :try_end_100} :catchall_d4

    .line 88
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 89
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 90
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    .line 88
    :goto_10a
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/InputStream;)V

    .line 89
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 90
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V

    .line 91
    throw p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_37

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_17

    .line 196
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 200
    :cond_37
    const-string p0, "miui_sdkconfig_jafej!@#)(*e@!#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    :goto_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_11} :catch_7f

    const-string v3, "="

    const-string v4, "&"

    const-string v5, "UTF-8"

    if-eqz v2, :cond_5c

    .line 161
    :try_start_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_d

    .line 165
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4e

    const-string v2, "null"

    goto :goto_54

    :cond_4e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_54
    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_5c
    if-eqz p1, :cond_86

    .line 173
    invoke-static {p0}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6b

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_6b
    const-string p1, "sign"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_7e} :catch_7f

    goto :goto_86

    .line 182
    :catch_7f
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string p1, "format params failed"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_86
    :goto_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 109
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const-string v0, "POST"

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 11

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 208
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v0, "doGetAdMonitor dbUrl is null"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    :goto_13
    const/4 v5, 0x3

    if-lt v3, v5, :cond_2a

    .line 216
    :try_start_16
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v3, "redirectCount >= 3, return true"

    invoke-static {p0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_1d} :catch_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_24
    .catchall {:try_start_16 .. :try_end_1d} :catchall_21

    .line 247
    :try_start_1d
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    return v1

    :catchall_21
    move-exception p0

    goto/16 :goto_ee

    :catch_24
    move-exception p0

    goto/16 :goto_ae

    :catch_27
    move-exception p0

    goto/16 :goto_cc

    .line 219
    :cond_2a
    :try_start_2a
    div-int/lit8 v4, v4, 0x64

    if-ne v4, v5, :cond_4c

    add-int/lit8 v3, v3, 0x1

    .line 221
    const-string p0, "Location"

    invoke-virtual {v2, p0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    sget-object v4, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirect url is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_4c
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_57
    .catch Ljava/net/ProtocolException; {:try_start_2a .. :try_end_57} :catch_27
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_57} :catch_24
    .catchall {:try_start_2a .. :try_end_57} :catchall_21

    .line 225
    :try_start_57
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    const-string v2, "GET"

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 227
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    .line 228
    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 229
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 230
    sget-object v6, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdMonitor get \u8bf7\u6c42url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ResponseCode\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    div-int/lit8 v6, v2, 0x64

    const/4 v7, 0x5

    if-eq v6, v7, :cond_a1

    div-int/lit8 v6, v2, 0x64
    :try_end_92
    .catch Ljava/net/ProtocolException; {:try_start_57 .. :try_end_92} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_92} :catch_9b
    .catchall {:try_start_57 .. :try_end_92} :catchall_98

    if-eq v6, v5, :cond_a1

    .line 247
    :try_start_94
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_97

    :catch_97
    return v1

    :catchall_98
    move-exception p0

    move-object v2, v4

    goto :goto_ee

    :catch_9b
    move-exception p0

    move-object v2, v4

    goto :goto_ae

    :catch_9e
    move-exception p0

    move-object v2, v4

    goto :goto_cc

    .line 235
    :cond_a1
    :try_start_a1
    div-int/lit8 v6, v2, 0x64
    :try_end_a3
    .catch Ljava/net/ProtocolException; {:try_start_a1 .. :try_end_a3} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a3} :catch_9b
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_98

    if-eq v6, v5, :cond_a9

    .line 247
    :try_start_a5
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_ed

    goto :goto_ed

    :cond_a9
    move-object v9, v4

    move v4, v2

    move-object v2, v9

    goto/16 :goto_13

    .line 244
    :goto_ae
    :try_start_ae
    sget-object v1, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpUtils doGetAdMonitor \u4e0a\u4f20\u5f02\u5e38:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_21

    .line 247
    :cond_c8
    :try_start_c8
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_ed

    goto :goto_ed

    .line 237
    :goto_cc
    :try_start_cc
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 238
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "200 OK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c8

    .line 239
    sget-object p0, Lcom/xiaomi/onetrack/g/b;->h:Ljava/lang/String;

    const-string v0, "response code is 200, bug status line is invalid."

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_cc .. :try_end_e9} :catchall_21

    .line 247
    :try_start_e9
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ec

    :catch_ec
    return v1

    :catch_ed
    :goto_ed
    return v0

    :goto_ee
    :try_start_ee
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/net/HttpURLConnection;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_f1

    .line 251
    :catch_f1
    throw p0
.end method
