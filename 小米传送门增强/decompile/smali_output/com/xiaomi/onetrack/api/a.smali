.class public Lcom/xiaomi/onetrack/api/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "action"

.field private static final b:Ljava/lang/String; = "AppActiveBroadcastManager"

.field private static volatile c:Lcom/xiaomi/onetrack/api/a; = null

.field private static final d:Ljava/lang/String; = "content://com.miui.analytics.OneTrackProvider/traceId"

.field private static final e:Ljava/lang/String; = "traceId"

.field private static final f:Ljava/lang/String; = "pkg"

.field private static final g:Ljava/lang/String; = "sign"

.field private static j:Ljava/lang/String; = null

.field private static final k:Ljava/lang/String; = "package"

.field private static final l:Ljava/lang/String; = "installer"

.field private static final m:Ljava/lang/String; = "userId"

.field private static final n:Ljava/lang/String; = "miuiActiveId"

.field private static final o:Ljava/lang/String; = "miuiActiveTime"

.field private static final p:Ljava/lang/String; = "activeTime"

.field private static final q:Ljava/lang/String; = "queryTime"

.field private static final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.xiaomi.market"

    const-string v2, "com.miui.packageinstaller"

    const-string v3, "com.xiaomi.xmsf"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/a;->r:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/a;->h:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/a;->i:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/a;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/api/a;
    .registers 1

    .line 48
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v0, :cond_7

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->b()V

    .line 51
    :cond_7
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    return-object v0
.end method

.method public static b()V
    .registers 2

    .line 55
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v0, :cond_19

    .line 56
    const-class v0, Lcom/xiaomi/onetrack/api/a;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v1, :cond_15

    .line 58
    new-instance v1, Lcom/xiaomi/onetrack/api/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 60
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

.method static synthetic d()Z
    .registers 1

    .line 24
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Z
    .registers 5

    .line 137
    const-string v0, "AppActiveBroadcastManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 138
    const-string v3, "com.miui.analytics"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 139
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x7894affc

    if-lt v2, v3, :cond_1a

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support getTraceId versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    goto :goto_48

    :catchall_2f
    move-exception v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportEmptyEvent error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return v1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 12

    .line 75
    const-string v0, "  _tid:"

    const-string v1, "packageName:"

    const-string v2, "AppActiveBroadcastManager"

    const-string v3, ""

    .line 76
    new-instance v4, Lcom/xiaomi/onetrack/api/b;

    invoke-direct {v4, p0, p1}, Lcom/xiaomi/onetrack/api/b;-><init>(Lcom/xiaomi/onetrack/api/a;Landroid/content/Intent;)V

    .line 120
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 122
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 124
    :try_start_19
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-virtual {p1, v7, v8, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_50

    .line 125
    :try_start_23
    sget-boolean v3, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v3, :cond_6c

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " _start ------getTraceId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4d} :catch_4e

    goto :goto_6c

    :catch_4e
    move-exception v3

    goto :goto_54

    :catch_50
    move-exception p1

    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    .line 129
    :goto_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTraceId error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_6c
    :goto_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _end ------getTraceId:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diffTime:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Z
    .registers 3

    .line 71
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->r:Ljava/util/Set;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
