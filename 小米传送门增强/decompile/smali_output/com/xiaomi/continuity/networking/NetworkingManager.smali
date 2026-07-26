.class public Lcom/xiaomi/continuity/networking/NetworkingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/xiaomi/continuity/networking/NetworkingManager;


# instance fields
.field private listerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/networking/ServiceExecutor<",
            "Lcom/xiaomi/continuity/networking/INetworkingManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9n0AYnE6zBRnzSk4TZX0Qix3Gw4()Ljava/lang/Integer;
    .registers 1

    .line 0
    invoke-static {}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$removeServiceInfo$13()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$DeH2PsEgewbhrjvIWL_M4GeSfgs(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$addServiceInfo$10(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pi_CNsXzzcPhJhDGWvs2Kzwii-s(Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$getTrustedDeviceList$5(Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xkf8wa-DIx2zxfNNET2_wr-8qck()Ljava/lang/Integer;
    .registers 1

    .line 0
    invoke-static {}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$addServiceInfo$11()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XoybnkRU0vHDrMJim-sIAtFesaU(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/networking/INetworkingManager;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$getServiceInfo$6(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/networking/INetworkingManager;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aLVYX1zv_oxY_QzneGtQ35s5_BM(Lcom/xiaomi/continuity/networking/NetworkingManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->binderDied()V

    return-void
.end method

.method public static synthetic $r8$lambda$aP2DNyJlkTRFsKRi6OHud3N8vw4(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/networking/NetworkingManager;->lambda$removeServiceInfo$12(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->listerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mDeathList:Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaomi.mi_connect_service"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.continuity.networking.service.NetworkingService"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mPkgName:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/continuity/networking/ServiceExecutor;

    new-instance v5, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/continuity/networking/NetworkingManager;)V

    const-string v4, "TrustedDeviceManager"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/networking/ServiceExecutor;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/xiaomi/continuity/networking/ServiceExecutor$AsInterface;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->postBindService()V

    return-void
.end method

.method private declared-synchronized binderDied()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    const-string v0, "binderDied need notify app.size="

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mDeathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedDeviceManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->listerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mDeathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_2d

    :catchall_3d
    move-exception v0

    goto :goto_41

    :cond_3f
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3d

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/networking/NetworkingManager;
    .registers 3

    .line 0
    const-class v0, Lcom/xiaomi/continuity/networking/NetworkingManager;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/continuity/networking/NetworkingManager;->sInstance:Lcom/xiaomi/continuity/networking/NetworkingManager;

    if-nez v1, :cond_18

    new-instance v1, Lcom/xiaomi/continuity/networking/NetworkingManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/networking/NetworkingManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/continuity/networking/NetworkingManager;->sInstance:Lcom/xiaomi/continuity/networking/NetworkingManager;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1c

    :cond_18
    :goto_18
    sget-object p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->sInstance:Lcom/xiaomi/continuity/networking/NetworkingManager;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_16

    monitor-exit v0

    return-object p0

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw p0
.end method

.method private synthetic lambda$addServiceInfo$10(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;
    .registers 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mPkgName:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/xiaomi/continuity/networking/INetworkingManager;->addServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const p1, 0x13ddf0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$addServiceInfo$11()Ljava/lang/Integer;
    .registers 2

    .line 0
    const-string v0, "TrustedDeviceManager"

    const-string v1, "executor exception"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x13e1d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getServiceInfo$6(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/networking/INetworkingManager;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
    .registers 3

    .line 0
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/xiaomi/continuity/networking/INetworkingManager;->getServiceInfo(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getTrustedDeviceList$5(Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/util/List;
    .registers 1

    .line 0
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/continuity/networking/INetworkingManager;->getTrustedDeviceList()Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$removeServiceInfo$12(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;
    .registers 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mPkgName:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/xiaomi/continuity/networking/INetworkingManager;->removeServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const p1, 0x13ddf0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$removeServiceInfo$13()Ljava/lang/Integer;
    .registers 2

    .line 0
    const-string v0, "TrustedDeviceManager"

    const-string v1, "executor exception"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x13e1d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    new-instance v1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;-><init>(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)V

    new-instance p1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->execute(Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getServiceInfo(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    new-instance v1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->execute(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    return-object p1
.end method

.method public getTrustedDeviceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    new-instance v1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->execute(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public removeServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager;->mExecutor:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    new-instance v1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda4;-><init>(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)V

    new-instance p1, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->execute(Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
