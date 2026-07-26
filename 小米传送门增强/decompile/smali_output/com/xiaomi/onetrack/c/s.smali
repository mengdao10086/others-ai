.class public Lcom/xiaomi/onetrack/c/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/s$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "config"

.field public static final b:Ljava/lang/String; = "appId"

.field public static final c:Ljava/lang/String; = "version"

.field private static final d:Ljava/lang/String; = "UploaderEngine"

.field private static final e:Ljava/lang/String; = "code"

.field private static final f:Ljava/lang/String; = "UTF-8"


# instance fields
.field private g:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/s;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/c/t;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/s;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/c/s;
    .registers 1

    .line 40
    invoke-static {}, Lcom/xiaomi/onetrack/c/s$a;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .registers 8

    .line 104
    const-string v0, "UploaderEngine"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/util/x;->b()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/s;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/onetrack/c/s;->a([B)[B

    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before zip and encrypt, len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", after="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v3

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataToServer response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    goto :goto_76

    .line 120
    :cond_6b
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/s;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_70

    goto :goto_76

    :catch_70
    move-exception p1

    .line 123
    const-string v2, "Exception while uploading "

    invoke-static {v0, v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    return v1
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 7

    .line 137
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 141
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_35
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    .line 142
    :try_start_d
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_2f
    .catchall {:try_start_d .. :try_end_12} :catchall_2c

    .line 143
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 145
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_2a
    .catchall {:try_start_12 .. :try_end_20} :catchall_27

    .line 149
    :goto_20
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 150
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    goto :goto_53

    :catchall_27
    move-exception p0

    :goto_28
    move-object v1, v2

    goto :goto_54

    :catch_2a
    move-exception p0

    goto :goto_38

    :catchall_2c
    move-exception p0

    move-object v3, v1

    goto :goto_28

    :catch_2f
    move-exception p0

    move-object v3, v1

    goto :goto_38

    :catchall_32
    move-exception p0

    move-object v3, v1

    goto :goto_54

    :catch_35
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    .line 147
    :goto_38
    :try_start_38
    const-string v0, "UploaderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_27

    goto :goto_20

    :goto_53
    return-object v1

    .line 149
    :goto_54
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 150
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 151
    throw p0
.end method

.method private a([B)[B
    .registers 4

    if-nez p1, :cond_b

    .line 158
    const-string p1, "UploaderEngine"

    const-string v0, "content is null"

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 163
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 3

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "onetrack_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    new-instance v1, Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/p;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/c/s;->g:Lcom/xiaomi/onetrack/c/p;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .line 168
    const-string v0, "UploaderEngine"

    const/4 v1, 0x0

    .line 170
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    const-string p1, "code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_20

    .line 174
    const-string p1, "\u6210\u529f\u53d1\u9001\u6570\u636e\u5230\u670d\u52a1\u7aef"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    goto :goto_4a

    :catch_1e
    move-exception p1

    goto :goto_45

    :cond_20
    const/4 v2, -0x3

    if-ne p1, v2, :cond_30

    .line 180
    const-string p1, "signature expired, will update"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/d/f;->c()Lorg/json/JSONObject;

    goto :goto_4a

    .line 184
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: status code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_1e

    goto :goto_4a

    .line 189
    :goto_45
    const-string v2, "parseUploadingResult exception "

    invoke-static {v0, v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    return v1
.end method


# virtual methods
.method public declared-synchronized a(IZ)V
    .registers 4

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/s;->g:Lcom/xiaomi/onetrack/c/p;

    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/c/p;->a(IZ)V

    goto :goto_12

    :catchall_9
    move-exception p1

    goto :goto_14

    .line 47
    :cond_b
    const-string p1, "UploaderEngine"

    const-string p2, "*** impossible, upload timer should not be null"

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_9

    .line 49
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    throw p1
.end method

.method public a(Z)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/s;->g:Lcom/xiaomi/onetrack/c/p;

    if-eqz v0, :cond_8

    .line 53
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/c/p;->a(Z)V

    goto :goto_f

    .line 55
    :cond_8
    const-string p1, "UploaderEngine"

    const-string v0, "*** impossible, upload timer should not be null"

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public a(I)Z
    .registers 9

    .line 65
    const-string v0, "\u5373\u5c06\u8bfb\u53d6\u6570\u636e\u5e93\u5e76\u4e0a\u4f20\u6570\u636e"

    const-string v1, "UploaderEngine"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_7
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/c/c;->a(I)Lcom/xiaomi/onetrack/c/h;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ee1\u8db3\u6761\u4ef6\u7684\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de, priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 75
    :cond_27
    iget-object v3, v0, Lcom/xiaomi/onetrack/c/h;->c:Ljava/util/ArrayList;

    .line 76
    iget-object v4, v0, Lcom/xiaomi/onetrack/c/h;->a:Lorg/json/JSONArray;

    .line 78
    invoke-direct {p0, v4}, Lcom/xiaomi/onetrack/c/s;->a(Lorg/json/JSONArray;)Z

    move-result v4

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_47

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_47
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_5c

    .line 86
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "delete DB failed!"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    .line 91
    :cond_5c
    iget-boolean v0, v0, Lcom/xiaomi/onetrack/c/h;->d:Z

    if-eqz v0, :cond_7

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more records for prio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    return v2
.end method
