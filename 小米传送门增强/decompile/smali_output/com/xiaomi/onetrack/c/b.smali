.class public Lcom/xiaomi/onetrack/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DbExecutor"

.field private static b:Ljava/lang/String; = "onetrack_db"

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 3

    .line 14
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_27

    .line 15
    const-class v0, Lcom/xiaomi/onetrack/c/b;

    monitor-enter v0

    .line 16
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v1, :cond_23

    .line 17
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/c/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_25

    .line 21
    :cond_23
    :goto_23
    monitor-exit v0

    goto :goto_27

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_21

    throw v1

    :cond_27
    :goto_27
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 27
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()V

    .line 28
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception p0

    .line 30
    const-string v0, "DbExecutor"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .registers 4

    .line 36
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()V

    .line 37
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception p0

    .line 39
    const-string p1, "DbExecutor"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method
