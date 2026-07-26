.class public final Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final action:Ljava/lang/String;

.field private app:Landroid/content/Context;

.field private final binderDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final component:Landroid/content/ComponentName;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile connectState:I

.field private volatile iBinder:Landroid/os/IBinder;

.field private final mainHandler:Landroid/os/Handler;

.field private final serviceConnection:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;

.field private final timeout:J


# direct methods
.method public static synthetic $r8$lambda$6Uex4HjbW1lsUO44fK8PV5JxysY(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->binderDeathRecipient$lambda$0(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0W8qCoENPm-PawwDhfUeHsX_Iw(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch$lambda$10(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs7HVtTxas8851c2PZkdomfxNRY(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll$lambda$12(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->Companion:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;J)V
    .registers 6

    const-string v0, "component"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->component:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->timeout:J

    .line 2
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ServiceConnector"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->mainHandler:Landroid/os/Handler;

    .line 17
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 20
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    new-instance p1, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;-><init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->serviceConnection:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;

    .line 47
    new-instance p1, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->binderDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static final synthetic access$dispatchAll(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll(IILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBinderDeathRecipient$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->binderDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static final synthetic access$getConnectLatch$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setIBinder$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Landroid/os/IBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static final synthetic access$setState(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V

    return-void
.end method

.method private static final binderDeathRecipient$lambda$0(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->destroy()V

    return-void
.end method

.method private final dispatch(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda0;-><init>(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic dispatch$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 1
    const-string p4, ""

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;)V

    return-void
.end method

.method private static final dispatch$lambda$10(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    return-void

    .line 1
    :cond_c
    invoke-interface {p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnectFailed(ILjava/lang/String;)V

    return-void

    .line 2
    :cond_10
    invoke-interface {p1}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnecting()V

    return-void

    .line 3
    :cond_14
    invoke-interface {p1}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnected()V

    return-void

    .line 4
    :cond_18
    invoke-interface {p1}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onDisconnected()V

    return-void
.end method

.method private final dispatchAll(IILjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda2;-><init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic dispatchAll$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    .line 1
    const-string p3, ""

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll(IILjava/lang/String;)V

    return-void
.end method

.method private static final dispatchAll$lambda$12(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V
    .registers 6

    .line 1
    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    goto :goto_6

    .line 14
    :cond_1e
    invoke-interface {v0, p2, p3}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnectFailed(ILjava/lang/String;)V

    goto :goto_6

    .line 15
    :cond_22
    invoke-interface {v0}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnecting()V

    goto :goto_6

    .line 16
    :cond_26
    invoke-interface {v0}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onConnected()V

    goto :goto_6

    .line 17
    :cond_2a
    invoke-interface {v0}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;->onDisconnected()V

    goto :goto_6

    :cond_2e
    return-void
.end method

.method private final setState(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectState:I

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bind(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    :goto_15
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->app:Landroid/content/Context;

    if-nez p1, :cond_1b

    .line 5
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->app:Landroid/content/Context;

    :cond_1b
    if-eqz p2, :cond_20

    .line 7
    invoke-virtual {p0, p2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->addCallback(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;)V

    .line 8
    :cond_20
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 9
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string p3, "init service connecting..."

    invoke-static {p1, p3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_db

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_3b
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 14
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string p3, "init service connected"

    invoke-static {p1, p3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_db

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 18
    :cond_56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/common/AIVersion;->isServiceSupport(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x3

    if-nez p1, :cond_72

    .line 19
    invoke-direct {p0, v1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V

    .line 21
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string p3, "init service not support!"

    invoke-static {p1, p3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_db

    const/16 p1, 0x2774

    .line 23
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;)V

    return-void

    .line 33
    :cond_72
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string v2, "init service bind start"

    invoke-static {p1, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->action:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p3, :cond_8a

    .line 36
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    :cond_8a
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->formatTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :try_start_91
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt p3, v2, :cond_9a

    const/16 p3, 0x201

    goto :goto_9b

    :cond_9a
    const/4 p3, 0x1

    .line 43
    :goto_9b
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->serviceConnection:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;

    invoke-virtual {v0, p1, v2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 p1, 0x2

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;ILjava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_91 .. :try_end_ad} :catchall_ae

    return-void

    :catchall_ae
    move-exception p1

    .line 47
    invoke-direct {p0, v1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V

    .line 48
    iget-object p3, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init bind service error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_db

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d6

    const-string p1, ""

    :cond_d6
    const/16 p3, 0x2779

    invoke-direct {p0, p2, v1, p3, p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatch(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;IILjava/lang/String;)V

    :cond_db
    return-void
.end method

.method public final declared-synchronized connect(Landroid/content/Context;Landroid/os/Bundle;)Lkotlin/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->getService()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string p2, "connect connected."

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    goto/16 :goto_ee

    .line 7
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string p2, "connect on main thread!"

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->getService()Landroid/os/IBinder;

    move-result-object p2

    const/16 v0, 0x283c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_25

    monitor-exit p0

    return-object p1

    .line 11
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string v2, "connect start"

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 14
    new-instance v2, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$connect$cb$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$connect$cb$1;-><init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 29
    invoke-virtual {p0, p1, v2, p2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->bind(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;Landroid/os/Bundle;)V
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_25

    .line 31
    :try_start_62
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v3, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->timeout:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6b} :catch_6c
    .catchall {:try_start_62 .. :try_end_6b} :catchall_25

    goto :goto_8f

    :catch_6c
    move-exception p1

    .line 33
    :try_start_6d
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect await error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    if-nez p1, :cond_8f

    const/16 p1, 0x283d

    .line 35
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 38
    :cond_8f
    :goto_8f
    invoke-virtual {p0, v2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->removeCallback(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;)V

    .line 39
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    if-nez p1, :cond_b7

    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_b7

    const/16 p1, 0x283e

    .line 40
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 41
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->timeout:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect await timeout "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 42
    :cond_b7
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_bd

    .line 43
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 45
    :cond_bd
    :goto_bd
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect end. service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " code =  "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lkotlin/Pair;

    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ec
    .catchall {:try_start_6d .. :try_end_ec} :catchall_25

    monitor-exit p0

    return-object p1

    :goto_ee
    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_25

    throw p1
.end method

.method public final destroy()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_68

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 5
    :try_start_1b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_29

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->binderDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_3b

    .line 9
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->app:Landroid/content/Context;

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->serviceConnection:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_36

    :cond_35
    move-object v0, v1

    .line 10
    :goto_36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_27

    goto :goto_45

    :goto_3b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    :goto_45
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 16
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlinkToDeath or unbindService error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_65
    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    goto :goto_6f

    .line 20
    :cond_68
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;

    const-string v1, "destroy has disconnected"

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_6f
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final getService()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public final isConnected()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->iBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-ne v0, v1, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnecting()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final isDisconnected()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectState:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connectState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0
.end method

.method public final removeCallback(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->callbackSets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
