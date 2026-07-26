.class public Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PERMISSION_RECEIVE_REMOTE_BROADCAST:Ljava/lang/String; = "com.xiaomi.mirror.permission.RECEIVE_REMOTE_BROADCAST"

.field private static final PERMISSION_SEND_REMOTE_BROADCAST:Ljava/lang/String; = "com.xiaomi.mirror.permission.SEND_REMOTE_BROADCAST"

.field private static mInstance:Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mInstance:Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    if-nez v1, :cond_15

    new-instance v1, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mInstance:Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    :cond_15
    :goto_15
    sget-object p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mInstance:Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;

    monitor-exit v0

    return-object p0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    throw p0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mAppContext:Landroid/content/Context;

    const-string v1, "com.xiaomi.mirror.permission.SEND_REMOTE_BROADCAST"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)I
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->sendBroadcastAsDevice(Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendBroadcastAsDevice(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "sendRemoteBroadcast"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_2b

    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2b
    return p2
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RemoteBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
