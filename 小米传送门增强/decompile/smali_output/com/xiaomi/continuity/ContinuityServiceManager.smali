.class public Lcom/xiaomi/continuity/ContinuityServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sServiceManager:Lcom/xiaomi/continuity/ContinuityServiceManager;


# instance fields
.field private final mConnector:Lcom/xiaomi/continuity/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/infra/ServiceConnector<",
            "Lcom/xiaomi/continuity/IContinuityServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/continuity/ContinuityServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DVClajHfYDsDmCy-jKCinzQQtEk(Ljava/lang/String;Lcom/xiaomi/continuity/IContinuityServiceManager;)Landroid/os/IBinder;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->lambda$getService$0(Ljava/lang/String;Lcom/xiaomi/continuity/IContinuityServiceManager;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/xiaomi/continuity/ContinuityServiceManagerConnector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/continuity/ContinuityServiceManagerConnector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mConnector:Lcom/xiaomi/continuity/infra/ServiceConnector;

    new-instance p1, Lcom/xiaomi/continuity/ContinuityServiceManager$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/continuity/ContinuityServiceManager$1;-><init>(Lcom/xiaomi/continuity/ContinuityServiceManager;)V

    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/continuity/ContinuityServiceManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static declared-synchronized getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;
    .registers 3

    .line 0
    const-class v0, Lcom/xiaomi/continuity/ContinuityServiceManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/continuity/ContinuityServiceManager;->sServiceManager:Lcom/xiaomi/continuity/ContinuityServiceManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/xiaomi/continuity/ContinuityServiceManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/ContinuityServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/continuity/ContinuityServiceManager;->sServiceManager:Lcom/xiaomi/continuity/ContinuityServiceManager;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->sServiceManager:Lcom/xiaomi/continuity/ContinuityServiceManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method

.method private static synthetic lambda$getService$0(Ljava/lang/String;Lcom/xiaomi/continuity/IContinuityServiceManager;)Landroid/os/IBinder;
    .registers 2

    .line 0
    invoke-interface {p1, p0}, Lcom/xiaomi/continuity/IContinuityServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V
    .registers 3

    .line 0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 8

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_26

    :try_start_5
    iget-object v2, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mConnector:Lcom/xiaomi/continuity/infra/ServiceConnector;

    new-instance v3, Lcom/xiaomi/continuity/ContinuityServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/xiaomi/continuity/ContinuityServiceManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/xiaomi/continuity/infra/ServiceConnector;->postForResult(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1c

    move-object v0, v2

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    if-eqz v0, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    :goto_26
    return-object v0
.end method

.method public removeServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
