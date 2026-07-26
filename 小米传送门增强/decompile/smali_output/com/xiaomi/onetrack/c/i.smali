.class public Lcom/xiaomi/onetrack/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:J = 0x0L

.field public static final b:J = 0x1L

.field public static final c:J = 0x2L

.field public static final d:Ljava/lang/String; = "eventName"

.field public static final e:Ljava/lang/String; = "data"

.field private static final f:Ljava/lang/String; = "NetworkAccessManager"

.field private static final g:Ljava/lang/String; = "networkAccess"

.field private static h:Ljava/lang/String; = "onetrack_netaccess_%s"

.field private static i:Ljava/text/SimpleDateFormat;

.field private static j:Z

.field private static volatile k:Z

.field private static volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/xiaomi/onetrack/c/i;->j:Z

    const/4 v1, 0x1

    .line 45
    sput-boolean v1, Lcom/xiaomi/onetrack/c/i;->k:Z

    .line 46
    sput-boolean v0, Lcom/xiaomi/onetrack/c/i;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/xiaomi/onetrack/api/j;)V
    .registers 3

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 223
    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->d()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_21

    if-nez v1, :cond_b

    .line 224
    monitor-exit v0

    return-void

    :cond_b
    if-eqz p0, :cond_23

    .line 226
    :try_start_d
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_23

    :cond_14
    const/4 v1, 0x1

    .line 230
    sput-boolean v1, Lcom/xiaomi/onetrack/c/i;->l:Z

    .line 231
    new-instance v1, Lcom/xiaomi/onetrack/c/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/c/k;-><init>(Lcom/xiaomi/onetrack/api/j;)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_21

    .line 250
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 227
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 92
    new-instance v0, Lcom/xiaomi/onetrack/c/j;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 53
    sput-boolean p0, Lcom/xiaomi/onetrack/c/i;->j:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 49
    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->j:Z

    return v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .registers 5

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_allowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".ot_net_disallowed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p0, :cond_2f

    .line 66
    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_57

    :catch_2d
    move-exception v0

    goto :goto_3c

    .line 71
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_3b} :catch_2d

    goto :goto_57

    .line 77
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkAccessStateEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "failed "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkAccessManager"

    invoke-static {v1, p0, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public static b()Z
    .registers 3

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".ot_net_disallowed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static declared-synchronized c()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 178
    :try_start_3
    sget-object v1, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 179
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5c

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    .line 182
    monitor-exit v0

    return-object v3

    .line 184
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_5c

    .line 188
    :try_start_2f
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_68
    .catchall {:try_start_2f .. :try_end_34} :catchall_65

    .line 189
    :try_start_34
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_60
    .catchall {:try_start_34 .. :try_end_39} :catchall_5e

    .line 191
    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 192
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 193
    invoke-static {v3}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4f} :catch_53
    .catchall {:try_start_39 .. :try_end_4f} :catchall_50

    goto :goto_39

    :catchall_50
    move-exception v1

    move-object v3, v2

    goto :goto_ad

    :catch_53
    move-exception v3

    goto :goto_6c

    .line 201
    :cond_55
    :try_start_55
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 202
    :goto_58
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5c

    goto :goto_8d

    :catchall_5c
    move-exception v1

    goto :goto_b4

    :catchall_5e
    move-exception v1

    goto :goto_ad

    :catch_60
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_6c

    :catchall_65
    move-exception v1

    move-object v4, v3

    goto :goto_ad

    :catch_68
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    .line 198
    :goto_6c
    :try_start_6c
    const-string v5, "NetworkAccessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cta getCacheData error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_6c .. :try_end_89} :catchall_50

    .line 201
    :try_start_89
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    goto :goto_58

    .line 205
    :goto_8d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_a2

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 208
    :cond_a2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ab

    const/4 v2, 0x1

    .line 209
    sput-boolean v2, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_ab
    .catchall {:try_start_89 .. :try_end_ab} :catchall_5c

    .line 211
    :cond_ab
    monitor-exit v0

    return-object v1

    .line 201
    :goto_ad
    :try_start_ad
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 203
    throw v1

    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_5c

    throw v1
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 103
    :try_start_3
    sget-object v1, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_85

    const/4 v1, 0x0

    .line 110
    :try_start_22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_50

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_50

    :catchall_36
    move-exception p0

    move-object p1, v1

    goto/16 :goto_b3

    :catch_3a
    move-exception p0

    move-object p1, v1

    goto :goto_90

    .line 115
    :cond_3d
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 121
    :cond_50
    :goto_50
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v4, "eventName"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string p0, "data"

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 126
    new-instance p1, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6d} :catch_3a
    .catchall {:try_start_22 .. :try_end_6d} :catchall_36

    .line 127
    :try_start_6d
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_72} :catch_8f
    .catchall {:try_start_6d .. :try_end_72} :catchall_8d

    .line 128
    :try_start_72
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 131
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7e} :catch_8a
    .catchall {:try_start_72 .. :try_end_7e} :catchall_87

    .line 136
    :try_start_7e
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 137
    :goto_81
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_85

    goto :goto_b1

    :catchall_85
    move-exception p0

    goto :goto_ba

    :catchall_87
    move-exception p0

    move-object v1, v2

    goto :goto_b3

    :catch_8a
    move-exception p0

    move-object v1, v2

    goto :goto_90

    :catchall_8d
    move-exception p0

    goto :goto_b3

    :catch_8f
    move-exception p0

    .line 133
    :goto_90
    :try_start_90
    const-string v2, "NetworkAccessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cta doSaveData error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_8d

    .line 136
    :try_start_ad
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_85

    goto :goto_81

    .line 139
    :goto_b1
    monitor-exit v0

    return-void

    .line 136
    :goto_b3
    :try_start_b3
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 137
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 138
    throw p0

    :goto_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_85

    throw p0
.end method

.method public static declared-synchronized c(Z)V
    .registers 8

    const-class v0, Lcom/xiaomi/onetrack/c/i;

    monitor-enter v0

    .line 150
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_64

    .line 155
    :cond_1a
    sget-object v2, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 156
    sget-object v4, Lcom/xiaomi/onetrack/c/i;->h:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v5, v3

    .line 158
    :goto_34
    array-length v6, v4

    if-ge v5, v6, :cond_5a

    .line 160
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_57

    if-nez p0, :cond_52

    .line 161
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_57

    :catchall_4e
    move-exception p0

    goto :goto_87

    :catch_50
    move-exception p0

    goto :goto_68

    .line 164
    :cond_52
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 167
    :cond_5a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 168
    array-length p0, p0

    if-nez p0, :cond_85

    .line 169
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z

    goto :goto_85

    .line 152
    :cond_64
    :goto_64
    sput-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_66} :catch_50
    .catchall {:try_start_3 .. :try_end_66} :catchall_4e

    .line 153
    monitor-exit v0

    return-void

    .line 172
    :goto_68
    :try_start_68
    const-string v1, "NetworkAccessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cta removeObsoleteEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_4e

    .line 175
    :cond_85
    :goto_85
    monitor-exit v0

    return-void

    :goto_87
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_4e

    throw p0
.end method

.method public static d()Z
    .registers 1

    .line 215
    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->l:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/xiaomi/onetrack/c/i;->k:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/xiaomi/onetrack/c/i;->l:Z

    return p0
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "networkAccess"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
