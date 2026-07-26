.class public Lcom/xiaomi/onetrack/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackExceptionHandler"

.field private static final c:Ljava/lang/String; = "tombstone"

.field private static final d:Ljava/lang/String; = ".java.xcrash"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final h:J = 0x2L


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/util/Date;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    const/16 v0, 0x32

    .line 78
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->i:I

    .line 79
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->j:I

    const/16 v0, 0xc8

    .line 80
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->k:I

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->l:Z

    .line 82
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->m:Z

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java"

    invoke-static {v1, p1, v4, v2, v3}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 18

    move-object v1, p0

    .line 84
    const-string v2, "\n\n"

    const-string v3, "JavaCrashHandler close RandomAccessFile failed"

    const-string v4, "OneTrackExceptionHandler"

    const-string v5, "UTF-8"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    .line 89
    :try_start_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s/%s_%020d_%s__%s%s"

    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tombstone"

    iget-object v11, v1, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 90
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".java.xcrash"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v9

    .line 89
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_4d

    .line 92
    :try_start_41
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_54

    .line 93
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_54

    :catch_4b
    move-exception v0

    goto :goto_4f

    :catch_4d
    move-exception v0

    move-object v8, v7

    .line 96
    :goto_4f
    const-string v9, "JavaCrashHandler createLogFile failed"

    invoke-static {v4, v9, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_54
    :goto_54
    :try_start_54
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 105
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5e} :catch_73

    move-object/from16 v10, p2

    .line 106
    :try_start_60
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_70

    move-object/from16 v11, p1

    .line 109
    :try_start_69
    invoke-direct {p0, v6, v11, v9}, Lcom/xiaomi/onetrack/api/k;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_6e

    goto :goto_7d

    :catch_6e
    move-exception v0

    goto :goto_77

    :catch_70
    move-exception v0

    :goto_71
    move-object v9, v7

    goto :goto_77

    :catch_73
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_71

    .line 111
    :goto_77
    const-string v6, "JavaCrashHandler getEmergency failed"

    invoke-static {v4, v6, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_7d
    if-eqz v8, :cond_148

    .line 118
    :try_start_7f
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v11, "rws"

    invoke-direct {v6, v8, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_86} :catch_130
    .catchall {:try_start_7f .. :try_end_86} :catchall_12d

    .line 121
    :try_start_86
    invoke-static {v9}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backtrace feature id:\n\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error reason:\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz v0, :cond_d6

    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_d6

    :catchall_ce
    move-exception v0

    move-object v2, v0

    move-object v7, v6

    goto/16 :goto_13c

    :catch_d3
    move-exception v0

    move-object v7, v6

    goto :goto_131

    .line 134
    :cond_d6
    :goto_d6
    iget v0, v1, Lcom/xiaomi/onetrack/api/k;->k:I

    if-gtz v0, :cond_e2

    iget v2, v1, Lcom/xiaomi/onetrack/api/k;->i:I

    if-gtz v2, :cond_e2

    iget v2, v1, Lcom/xiaomi/onetrack/api/k;->j:I

    if-lez v2, :cond_f1

    .line 135
    :cond_e2
    iget v2, v1, Lcom/xiaomi/onetrack/api/k;->i:I

    iget v7, v1, Lcom/xiaomi/onetrack/api/k;->j:I

    invoke-static {v0, v2, v7}, Lcom/xiaomi/onetrack/util/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 139
    :cond_f1
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/k;->l:Z

    if-eqz v0, :cond_100

    .line 140
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 144
    :cond_100
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/k;->m:Z

    if-eqz v0, :cond_10f

    .line 145
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 149
    :cond_10f
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 152
    const-string v0, "foreground:\nyes\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_123} :catch_d3
    .catchall {:try_start_86 .. :try_end_123} :catchall_ce

    .line 159
    :try_start_123
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_148

    :catch_127
    move-exception v0

    move-object v2, v0

    .line 161
    invoke-static {v4, v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_148

    :catchall_12d
    move-exception v0

    move-object v2, v0

    goto :goto_13c

    :catch_130
    move-exception v0

    .line 155
    :goto_131
    :try_start_131
    const-string v2, "JavaCrashHandler write log file failed"

    invoke-static {v4, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_12d

    if-eqz v7, :cond_148

    .line 159
    :try_start_138
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_127

    goto :goto_148

    :goto_13c
    if-eqz v7, :cond_147

    :try_start_13e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_142

    goto :goto_147

    :catch_142
    move-exception v0

    move-object v5, v0

    .line 161
    invoke-static {v4, v3, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_147
    :goto_147
    throw v2

    :cond_148
    :goto_148
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 43
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/xiaomi/onetrack/api/k;

    if-eqz v1, :cond_9

    return-void

    .line 48
    :cond_9
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 49
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8

    .line 55
    const-string v0, "OneTrackExceptionHandler"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash happened->stacktrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/xiaomi/onetrack/api/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/l;-><init>(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 64
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 65
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 68
    :try_start_2c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_51

    :catch_34
    move-exception v1

    .line 70
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleException error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_51
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_58

    .line 74
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_58
    return-void
.end method
