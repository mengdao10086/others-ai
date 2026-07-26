.class public Lcom/xiaomi/onetrack/c/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "eventName"

.field public static final b:Ljava/lang/String; = "data"

.field private static final c:Ljava/lang/String; = "SystemImpCacheManager"

.field private static final d:Ljava/lang/String; = "systemimp_cache"

.field private static e:Ljava/lang/String; = "systemimp_cache_%s"

.field private static volatile f:Lcom/xiaomi/onetrack/c/l; = null

.field private static g:Ljava/lang/String; = "system_imp_cache_manager"


# instance fields
.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    :try_start_3
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/onetrack/c/l;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_34

    :catchall_19
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemImpCacheManager init Throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemImpCacheManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/c/l;
    .registers 1

    .line 34
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->b()V

    .line 37
    :cond_7
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/onetrack/c/l;

    monitor-enter v0

    const/4 v1, 0x0

    .line 150
    :try_start_4
    sget-object v2, Lcom/xiaomi/onetrack/c/l;->e:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 151
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_69
    .catchall {:try_start_4 .. :try_end_1b} :catchall_61

    if-nez p0, :cond_28

    .line 169
    :try_start_1d
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_25

    .line 153
    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception p0

    goto/16 :goto_98

    .line 155
    :cond_28
    :try_start_28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_69
    .catchall {:try_start_28 .. :try_end_2d} :catchall_61

    .line 156
    :try_start_2d
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_64
    .catchall {:try_start_2d .. :try_end_32} :catchall_61

    .line 157
    :try_start_32
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_5c
    .catchall {:try_start_32 .. :try_end_37} :catchall_5a

    .line 159
    :goto_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 160
    invoke-static {v1}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_51
    .catchall {:try_start_37 .. :try_end_4d} :catchall_4e

    goto :goto_37

    :catchall_4e
    move-exception p0

    move-object v1, v2

    goto :goto_91

    :catch_51
    move-exception v1

    goto :goto_6e

    .line 169
    :cond_53
    :try_start_53
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 170
    :goto_56
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_25

    goto :goto_8f

    :catchall_5a
    move-exception p0

    goto :goto_91

    :catch_5c
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_6e

    :catchall_61
    move-exception p0

    move-object v3, v1

    goto :goto_91

    :catch_64
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_6e

    :catch_69
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    move-object v1, p0

    move-object p0, v3

    .line 166
    :goto_6e
    :try_start_6e
    const-string v4, "SystemImpCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cta getCacheData error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_6e .. :try_end_8b} :catchall_4e

    .line 169
    :try_start_8b
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_25

    goto :goto_56

    .line 172
    :goto_8f
    monitor-exit v0

    return-object p0

    .line 169
    :goto_91
    :try_start_91
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 171
    throw p0

    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_25

    throw p0
.end method

.method public static b()V
    .registers 2

    .line 41
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v0, :cond_19

    .line 42
    const-class v0, Lcom/xiaomi/onetrack/c/l;

    monitor-enter v0

    .line 43
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v1, :cond_15

    .line 44
    new-instance v1, Lcom/xiaomi/onetrack/c/l;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/c/l;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 46
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    :try_start_2
    sget-object v1, Lcom/xiaomi/onetrack/c/l;->e:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_3f

    :catchall_29
    move-exception p1

    move-object p3, v0

    goto :goto_7a

    .line 95
    :cond_2c
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 101
    :cond_3f
    :goto_3f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    const-string v2, "eventName"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string p2, "data"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 106
    new-instance p2, Ljava/io/FileWriter;

    const/4 p3, 0x1

    invoke-direct {p2, v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_29

    .line 107
    :try_start_5c
    new-instance p3, Ljava/io/BufferedWriter;

    invoke-direct {p3, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_77

    .line 108
    :try_start_61
    invoke-static {p1}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_74

    .line 114
    :try_start_6b
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 115
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_72

    goto :goto_9a

    :catchall_72
    move-exception p1

    goto :goto_a4

    :catchall_74
    move-exception p1

    :goto_75
    move-object v0, p2

    goto :goto_7a

    :catchall_77
    move-exception p1

    move-object p3, v0

    goto :goto_75

    .line 112
    :goto_7a
    :try_start_7a
    const-string p2, "SystemImpCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemimp doSaveData error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_9c

    .line 114
    :try_start_94
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_72

    .line 117
    :goto_9a
    monitor-exit p0

    return-void

    :catchall_9c
    move-exception p1

    .line 114
    :try_start_9d
    invoke-static {p3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 116
    throw p1

    :goto_a4
    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_72

    throw p1
.end method

.method private static c()Ljava/lang/String;
    .registers 2

    .line 62
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "systemimp_cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 125
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4a

    .line 129
    :cond_17
    sget-object v1, Lcom/xiaomi/onetrack/c/l;->e:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    :goto_26
    array-length v2, v0

    if-ge v1, v2, :cond_66

    .line 133
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 134
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 135
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_45
    .catchall {:try_start_1 .. :try_end_42} :catchall_43

    goto :goto_66

    :catchall_43
    move-exception p1

    goto :goto_68

    :catch_45
    move-exception p1

    goto :goto_4c

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 127
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-void

    .line 141
    :goto_4c
    :try_start_4c
    const-string v0, "SystemImpCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemimp removeObsoleteEvent error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_43

    .line 143
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_43

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/onetrack/c/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/c/m;-><init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1a

    .line 180
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/onetrack/c/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/c/n;-><init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 198
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    goto :goto_1c

    .line 178
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_18

    throw p1
.end method
