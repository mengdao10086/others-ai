.class Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityConnection.Manager"

.field private static sInstance:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private final mServerChannelListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/continuity/ServiceName;",
            "Lcom/xiaomi/continuity/channel/ChannelListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;


# direct methods
.method private constructor <init>(Lcom/xiaomi/continuity/IContinuityConnectionManager;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    iput-object p2, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mPackageName:Ljava/lang/String;

    new-instance p1, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;-><init>(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;Lcom/xiaomi/continuity/IContinuityConnectionManager;)Lcom/xiaomi/continuity/IContinuityConnectionManager;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;
    .registers 4

    .line 0
    const-class v0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->sInstance:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    if-nez v1, :cond_19

    invoke-static {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getSystemService(Landroid/content/Context;)Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;-><init>(Lcom/xiaomi/continuity/IContinuityConnectionManager;Landroid/content/Context;)V

    sput-object v2, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->sInstance:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1d

    :cond_19
    :goto_19
    sget-object p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->sInstance:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_17

    monitor-exit v0

    return-object p0

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_17

    throw p0
.end method

.method private getRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;
    .registers 4

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;
    .registers 3

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_1e

    :catchall_1c
    move-exception v0

    goto :goto_35

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getSystemService(Landroid/content/Context;)Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    :cond_26
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;

    if-nez v0, :cond_31

    const-string v0, "ContinuityConnection.Manager"

    const-string v1, "get Service binder fail"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_1c

    monitor-exit p0

    return-object v0

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1c

    throw v0
.end method

.method private static getSystemService(Landroid/content/Context;)Lcom/xiaomi/continuity/IContinuityConnectionManager;
    .registers 2

    .line 0
    invoke-static {p0}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;

    move-result-object p0

    const-string v0, "continuity_connection"

    invoke-virtual {p0, v0}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "ContinuityConnection.Manager"

    const-string v0, "getSystemService fail"

    invoke-static {p0, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method

.method public confirmChannel(II)I
    .registers 5

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    const-string v1, "ContinuityConnection.Manager"

    if-eqz v0, :cond_f

    :try_start_8
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->confirmChannel(II)V

    const/4 p1, 0x0

    return p1

    :catch_d
    move-exception p1

    goto :goto_15

    :cond_f
    const-string p1, "Cannot confirm channel because service not bind."

    invoke-static {v1, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_d

    goto :goto_1a

    :goto_15
    const-string p2, "confirmChannel:"

    invoke-static {v1, p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    const p1, 0x10ccc8

    return p1
.end method

.method public createChannel(Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelInnerListener;Ljava/util/concurrent/Executor;)I
    .registers 13

    .line 0
    const-string v0, "deviceId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "serviceName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "options must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_19
    new-instance v6, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$3;

    invoke-virtual {p3}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->getTrustLevel()I

    move-result p5

    invoke-direct {v6, p0, p5, p4}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$3;-><init>(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;ILcom/xiaomi/continuity/channel/ChannelInnerListener;)V

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mPackageName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->createChannelbyAddress(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_32

    return p1

    :catch_32
    move-exception p1

    const-string p2, "ContinuityConnection.Manager"

    const-string p3, "createChannel:"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    const/4 p1, -0x3

    return p1
.end method

.method public createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelInnerListener;Ljava/util/concurrent/Executor;)I
    .registers 13

    .line 0
    const-string v0, "deviceId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "serviceName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "options must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_19
    new-instance v6, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$2;

    invoke-virtual {p3}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->getTrustLevel()I

    move-result p5

    invoke-direct {v6, p0, p5, p4}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$2;-><init>(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;ILcom/xiaomi/continuity/channel/ChannelInnerListener;)V

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mPackageName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->createChannel(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_32

    return p1

    :catch_32
    move-exception p1

    const-string p2, "ContinuityConnection.Manager"

    const-string p3, "createChannel:"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    const/4 p1, -0x3

    return p1
.end method

.method public destroyChannel(I)I
    .registers 5

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    const v1, 0x10ccc8

    const-string v2, "ContinuityConnection.Manager"

    if-eqz v0, :cond_14

    :try_start_b
    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->destroyChannel(I)V

    const p1, 0x10d0b0

    return p1

    :catch_12
    move-exception p1

    goto :goto_1a

    :cond_14
    const-string p1, "Cannot destroy channel because service not bind."

    invoke-static {v2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_12

    return v1

    :goto_1a
    const-string v0, "destroyChannel:"

    invoke-static {v2, v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getApiFeature()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_6
    invoke-interface {v0}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->getApiFeature()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 1
    const-string v1, "getApiFeature RemoteException error : "

    invoke-static {v1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection.Manager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelInfoExt(II)Landroid/os/Bundle;
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->getChannelInfoExt(II)Landroid/os/Bundle;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    const-string p2, "ContinuityConnection.Manager"

    const-string v0, "getChannelInfoExt:"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "result"

    const v0, 0x10ccc8

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public notifyChannelServerCreateFailed(I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    const-string v1, "ContinuityConnection.Manager"

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    :try_start_9
    invoke-interface {v0, p1, v2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->notifyChannelServerCreated(II)V

    goto :goto_1a

    :catch_d
    move-exception p1

    goto :goto_15

    :cond_f
    const-string p1, "Cannot notify channel created failed because service not bind."

    invoke-static {v1, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_d

    goto :goto_1a

    :goto_15
    const-string v0, "notifyChannelServerCreateFailed:"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public notifyChannelServerCreated(II)V
    .registers 6

    .line 0
    const-string v0, "ContinuityConnection.Manager"

    if-lez p2, :cond_22

    const v1, 0xffff

    if-le p2, v1, :cond_a

    goto :goto_22

    :cond_a
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_16

    :try_start_10
    invoke-interface {v1, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->notifyChannelServerCreated(II)V

    goto :goto_21

    :catch_14
    move-exception p1

    goto :goto_1c

    :cond_16
    const-string p1, "Cannot notify channel created success because service not bind."

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_14

    goto :goto_21

    :goto_1c
    const-string p2, "notifyChannelServerCreated:"

    invoke-static {v0, p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    return-void

    :cond_22
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->notifyChannelServerCreateFailed(I)V

    return-void
.end method

.method public registerChannelListener(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelInnerListener;Ljava/util/concurrent/Executor;)I
    .registers 7

    .line 0
    const-string v0, "serviceName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "options must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_14
    iget-object p4, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    monitor-enter p4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_4e

    :try_start_17
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;

    if-nez v0, :cond_44

    new-instance v0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;

    invoke-virtual {p2}, Lcom/xiaomi/continuity/channel/ServerChannelOptions;->getTrustLevel()I

    move-result v1

    invoke-direct {v0, v1, p3}, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;-><init>(ILcom/xiaomi/continuity/channel/ChannelInnerListener;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->registerBinderDeathListener(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V

    iget-object p3, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object p3

    if-eqz p3, :cond_42

    iget-object v1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mPackageName:Ljava/lang/String;

    invoke-interface {p3, v1, p1, p2, v0}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->registerChannelListener(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1

    monitor-exit p4

    return p1

    :catchall_40
    move-exception p1

    goto :goto_4c

    :cond_42
    monitor-exit p4

    goto :goto_56

    :cond_44
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already register"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4c
    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_40

    :try_start_4d
    throw p1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p1

    const-string p2, "ContinuityConnection.Manager"

    const-string p3, "RemoteException registerChannelListener:"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_56
    const p1, 0x10ccc8

    return p1
.end method

.method public removeServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->removeServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method

.method public send(I[BLandroid/os/Bundle;Lcom/xiaomi/continuity/channel/SendResultCallback;Ljava/util/concurrent/Executor;)I
    .registers 10

    .line 0
    const-string v0, "data must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ContinuityConnection.Manager"

    if-eqz v0, :cond_20

    :try_start_14
    new-instance v3, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;

    invoke-direct {v3, p4, p5}, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;-><init>(Lcom/xiaomi/continuity/channel/SendResultCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v3}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->send(I[BLandroid/os/Bundle;Lcom/xiaomi/continuity/channel/ISendResultCallback;)I

    move-result p1

    return p1

    :catch_1e
    move-exception p1

    goto :goto_26

    :cond_20
    const-string p1, "Cannot send data because service not bind."

    invoke-static {v2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_1e

    return v1

    :goto_26
    const-string p2, "send:"

    invoke-static {v2, p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I
    .registers 5

    .line 0
    const-string v0, "serviceName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x10ccc8

    :try_start_8
    iget-object v1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_3d

    :try_start_b
    iget-object v2, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, p0}, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->unregisterBinderDeathListener(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V

    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->getService()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2, p1}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_24
    move-exception p1

    goto :goto_3b

    :cond_26
    const-string p1, "ContinuityConnection.Manager"

    const-string v2, "Cannot unregister channel listener because service not bind."

    invoke-static {p1, v2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v0

    :cond_2f
    const-string p1, "ContinuityConnection.Manager"

    const-string v2, "Cannot unregister channel listener because it is never registered."

    invoke-static {p1, v2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    const p1, 0x10d498

    return p1

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_24

    :try_start_3c
    throw p1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception p1

    const-string v1, "ContinuityConnection.Manager"

    const-string v2, "unregisterChannelListener:"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
