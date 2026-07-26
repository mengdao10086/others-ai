.class public Lcom/xiaomi/onetrack/OneTrackDebugger;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/onetrack/OneTrackDebugger; = null

.field private static b:Ljava/lang/String; = "com.xiaomi.onetrack.otdebugger.FloatWindowService"


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/onetrack/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;
    .registers 2

    .line 21
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    if-nez v0, :cond_19

    .line 22
    const-class v0, Lcom/xiaomi/onetrack/OneTrackDebugger;

    monitor-enter v0

    .line 23
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    if-nez v1, :cond_15

    .line 24
    new-instance v1, Lcom/xiaomi/onetrack/OneTrackDebugger;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/OneTrackDebugger;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 26
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 28
    :cond_19
    :goto_19
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->a:Lcom/xiaomi/onetrack/OneTrackDebugger;

    return-object v0
.end method


# virtual methods
.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 56
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 52
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkConfig()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/onetrack/Configuration;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public setSdkConfig(Lcom/xiaomi/onetrack/Configuration;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrackDebugger;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startDebugger()V
    .registers 5

    .line 43
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/OneTrackDebugger;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_21

    :catchall_17
    move-exception v0

    .line 46
    const-string v1, "startDebugger"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method
