.class public Lcom/xiaomi/onetrack/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorDbExecutor"

.field private static b:Ljava/lang/String; = "onetrack_ad_monitor_db"

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

    .line 15
    sget-object v0, Lcom/xiaomi/onetrack/a/a/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_27

    .line 16
    const-class v0, Lcom/xiaomi/onetrack/a/a/a;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/a/a/a;->c:Landroid/os/Handler;

    if-nez v1, :cond_23

    .line 18
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 20
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/a/a/a;->c:Landroid/os/Handler;

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_25

    .line 22
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
    invoke-static {}, Lcom/xiaomi/onetrack/a/a/a;->a()V

    .line 28
    sget-object v0, Lcom/xiaomi/onetrack/a/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .registers 4

    .line 33
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/a/a;->a()V

    .line 34
    sget-object v0, Lcom/xiaomi/onetrack/a/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception p0

    .line 36
    const-string p1, "AdMonitorDbExecutor"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method
