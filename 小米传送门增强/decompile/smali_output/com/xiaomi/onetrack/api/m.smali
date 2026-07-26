.class public Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/api/j;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/api/k;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Lcom/xiaomi/onetrack/util/v;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->d:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->b(Landroid/content/Context;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OneTrackImp init : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneTrackImp"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string p1, "OneTrackImp sdk ver : 2.1.1"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 825
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 826
    const-string v1, "last_ver_name"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    const-string p3, "last_ver_code"

    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 828
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->e(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    .line 513
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/u;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5

    .line 491
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/t;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 10

    .line 89
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()V

    .line 91
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    .line 92
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2f

    .line 93
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 98
    :cond_2f
    new-instance v0, Lcom/xiaomi/onetrack/util/v;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/v;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 99
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->g()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->e()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 100
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 101
    new-instance v0, Lcom/xiaomi/onetrack/api/ao;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/api/ao;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    goto :goto_73

    .line 103
    :cond_5f
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 104
    new-instance v0, Lcom/xiaomi/onetrack/api/am;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/am;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 106
    :goto_73
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_a4

    .line 108
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->c(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 111
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V

    .line 112
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 113
    new-instance p1, Lcom/xiaomi/onetrack/api/k;

    invoke-direct {p1}, Lcom/xiaomi/onetrack/api/k;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Lcom/xiaomi/onetrack/api/k;

    .line 114
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/api/k;->a()V

    .line 118
    :cond_a4
    sget-object p1, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/api/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/n;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 3

    .line 388
    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/api/r;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/r;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/m;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->m()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Z
    .registers 4

    .line 622
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 624
    const-string v1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    return-object p0
.end method

.method private e(Z)V
    .registers 4

    .line 532
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/v;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Z
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 148
    :cond_a
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 4

    .line 630
    const-string v0, "onetrack_dau"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "ot_login"

    .line 631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "ot_logout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_39

    .line 635
    :cond_21
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 637
    const-string v1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    xor-int/lit8 p1, v0, 0x1

    return p1

    :cond_39
    :goto_39
    const/4 p1, 0x0

    return p1
.end method

.method private f(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    .line 698
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_d

    :catch_a
    move-exception p1

    goto :goto_2e

    :cond_c
    move-object p1, v0

    :goto_d
    const/4 v1, 0x0

    .line 699
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 701
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 703
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v2, v0

    .line 705
    :goto_29
    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_a

    return-object p1

    .line 707
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonProperty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()V
    .registers 3

    .line 472
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/s;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/m;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    return p0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/m;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->f()V

    return-void
.end method

.method private g()Z
    .registers 3

    .line 554
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_36

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportEmptyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "_isSupportAdMonitor():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_36
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->i()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->j()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    return v0
.end method

.method static synthetic h(Lcom/xiaomi/onetrack/api/m;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->l()V

    return-void
.end method

.method private h()Z
    .registers 4

    .line 562
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    if-nez v0, :cond_36

    :cond_1a
    return v1

    :catch_1b
    move-exception v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private static i()Z
    .registers 5

    .line 577
    const-string v0, "OneTrackImp"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 578
    const-string v3, "com.miui.analytics"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 579
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x7867b6b4

    if-lt v2, v3, :cond_1a

    const/4 v0, 0x1

    return v0

    .line 583
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

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

    .line 585
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

.method private j()Z
    .registers 7

    .line 594
    const-string v0, "OneTrackImp"

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    .line 600
    :cond_10
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    .line 604
    :cond_17
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 605
    const-string v3, "com.miui.analytics"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 606
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system analytics version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_43

    const v0, 0x7885ed14

    if-lt v2, v0, :cond_42

    return v1

    :cond_42
    return v4

    :catchall_43
    move-exception v2

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportAdMonitor error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private k()V
    .registers 3

    .line 769
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/ac;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .registers 3

    .line 784
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 785
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/ad;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private m()V
    .registers 14

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_b

    return-void

    .line 799
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()I

    move-result v0

    int-to-long v4, v0

    .line 800
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/api/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->A()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 805
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    return-void

    :catch_26
    move-exception v0

    goto :goto_5e

    .line 809
    :cond_28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 810
    const-string v1, "last_ver_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 811
    const-string v1, "last_ver_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_78

    .line 814
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->f()J

    move-result-wide v8

    .line 816
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v10, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v11, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    iget-boolean v12, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-static/range {v1 .. v11}, Lcom/xiaomi/onetrack/api/h;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    const-string v2, "onetrack_upgrade"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_26

    goto :goto_78

    .line 820
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackUpgradeEvent error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 733
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 736
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 734
    :cond_b
    new-instance p1, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p1, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 862
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_26

    if-eqz p1, :cond_1c

    .line 865
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->a()Lcom/xiaomi/onetrack/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/a;->c()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 869
    :cond_13
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->a()Lcom/xiaomi/onetrack/api/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 866
    :cond_1c
    :goto_1c
    const-string p1, "OneTrackImp"

    const-string v0, "Not allowed to call,intent is null or Not specify the package name"

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string p1, ""

    return-object p1

    .line 863
    :cond_26
    new-instance p1, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p1, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 3

    .line 666
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/x;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .registers 3

    .line 833
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 834
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 751
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ab;-><init>(Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 223
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ah;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ah;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/api/al;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/al;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 5

    .line 346
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/p;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 285
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ak;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/ak;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 19

    .line 254
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/xiaomi/onetrack/api/ai;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/y;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/api/y;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/af;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/af;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/ag;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/aj;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/aj;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/q;-><init>(Lcom/xiaomi/onetrack/api/m;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 765
    sput-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 726
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 729
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :cond_f
    new-instance v0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v1, "Can\'t call this method on main thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 675
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/z;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/z;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/o;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 839
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 843
    :cond_9
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ae;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ae;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .registers 1

    .line 740
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 713
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/aa;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/aa;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 646
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/w;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/w;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 853
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    return-void
.end method

.method public d(Z)V
    .registers 3

    .line 857
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Z)V

    return-void
.end method

.method public d()Z
    .registers 2

    .line 744
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->f()Z

    move-result v0

    return v0
.end method
