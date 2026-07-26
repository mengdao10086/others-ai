.class public Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Holder;
    }
.end annotation


# static fields
.field private static final ACTION_MIRROR_DEVICE_CHANGED:Ljava/lang/String; = "miui.intent.action.MIRROR_DEVICE_CHANGED"

.field private static final ACTION_MISHARE_ONEHOP:Ljava/lang/String; = "com.miui.mishare.action.NFC_TOUCH_TRANSFER"

.field private static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final EXTRA_DEVICE_MANUFACTURER:Ljava/lang/String; = "device_manufacturer"

.field private static final EXTRA_DEVICE_STATE:Ljava/lang/String; = "device_state"

.field public static final PACKAGE_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field public static final SEND_APP_FAIL_APP_SENDING:I = -0x2

.field public static final SEND_APP_FAIL_DEVICE_DISCONNECT:I = -0x5

.field public static final SEND_APP_FAIL_PARAMETER_ERROR:I = -0x1

.field public static final SEND_APP_FAIL_REMOTE_ADV_ERROR:I = -0x7

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MIPLAY:I = -0x67

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MIRROR:I = -0x66

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MISHARE:I = -0x65

.field public static final SEND_APP_FAIL_REMOTE_BUSY_OTHERS:I = -0x64

.field public static final SEND_APP_FAIL_REMOTE_BUSY_WORLD:I = -0x68

.field public static final SEND_APP_FAIL_REMOTE_MAX_SCREEN_COUNT:I = -0xa

.field public static final SEND_APP_FAIL_REMOTE_PKG_ERROR:I = -0x9

.field public static final SEND_APP_FAIL_REMOTE_SYNC_ERROR:I = -0x8

.field public static final SEND_APP_FAIL_REMOTE_UNKNOWN:I = -0x6

.field public static final SEND_APP_FAIL_SELF_DEVICE:I = -0x3

.field public static final SEND_APP_FAIL_UNKNOWN:I = 0x0

.field public static final SEND_APP_FAIL_WAIT_TIMEOUT:I = -0x4

.field private static final SEND_APP_SUCCESS:I = 0x1

.field public static final SYNERGY_ERR:I = -0x1

.field public static final SYNERGY_OK:I = 0x0

.field public static final SYNERGY_SOFTAP_ALREADY_CONNECTED:I = 0x2

.field public static final SYNERGY_SOFTAP_ALREADY_CONNECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiSynergy"

.field private static final VALUE_DEVICE_STATE_EXIT:I = 0x2

.field private static final VALUE_DEVICE_STATE_JOIN:I = 0x0

.field private static final VALUE_DEVICE_STATE_UPDATE:I = 0x1


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

.field private mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRelayAppCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

.field private mShareCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/mirror/synergy/MirrorShareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mShareCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
    .registers 1

    .line 0
    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Holder;->INSTANCE:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Holder;->access$000()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.xiaomi.mirror.callprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "remoteHistory"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "remoteDeviceManufacturer"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "queryRemoteDevices"

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "remoteDevices"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_33

    if-nez p2, :cond_32

    goto :goto_33

    :cond_32
    return-object p1

    :catch_33
    :cond_33
    :goto_33
    return-object v0
.end method

.method private setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .registers 4

    .line 0
    if-eqz p3, :cond_6

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->addRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    goto :goto_b

    :cond_6
    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->removeRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    :goto_b
    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    return-void
.end method


# virtual methods
.method public addRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.MIRROR_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2a
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public chooseFileOnSynergy(Landroid/app/Activity;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const-string v2, "displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$2;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$2;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public closeMirrorFromClient(Landroid/content/Context;)I
    .registers 4

    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "closeMirrorFromClient"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    const/4 p1, 0x0

    return p1

    :catch_c
    const/4 p1, -0x1

    return p1
.end method

.method public closeRemoteDeviceMirror(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "closeRemoteDeviceMirror"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_16

    const/4 p1, 0x0

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public closeRemoteDeviceMirror2(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method_version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "closeRemoteDeviceMirror"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_21

    const/4 p1, 0x0

    return p1

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public connectSameAccountAp(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apSsid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "connectSameAccountAp"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_1f

    :cond_19
    const-string v0, "softApState"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20

    :goto_1f
    return p2

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public getAliveBinder(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 4

    .line 0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getAliveBinder"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_e

    return-object v1

    :cond_e
    const-string v0, "binder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public getCallRelayService(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/CallRelayService;
    .registers 4

    .line 0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getCallRelayService"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_e

    return-object v1

    :cond_e
    const-string v0, "binder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_17

    return-object v1

    :cond_17
    new-instance v0, Lcom/xiaomi/mirror/synergy/CallRelayService;

    invoke-direct {v0, p1}, Lcom/xiaomi/mirror/synergy/CallRelayService;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getInt(Landroid/content/Context;Landroid/net/Uri;I)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    :catch_c
    :cond_c
    return p3
.end method

.method public getMirrorAdvConnection(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)I
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v3, "callback"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getMirrorAdvConnection"

    invoke-static {p1, v0, v2, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2b

    if-eqz p1, :cond_2b

    const/4 v1, 0x0

    :catch_2b
    :cond_2b
    return v1
.end method

.method public getRemotePackageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getRemotePackageInfo"

    invoke-static {p1, v1, p3, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string p3, "result"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_40

    const-string p3, "packageInfo"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_29

    return-object p1

    :cond_29
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found in remote device"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    const-string p2, "message"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "local miui+ not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShareStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getShareStatus"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "local miui+ not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShowMirrorType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "getShowMirrorType"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string p2, "value"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    return p1

    :catch_1e
    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method public getString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "get"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_18

    return-object p3

    :cond_18
    const-string p2, "value"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p3
.end method

.method public getSubScreenAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getSubScreenAppName"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    :cond_1e
    return-object p2
.end method

.method public getSubScreenPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getSubScreenPackageName"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    :cond_1e
    return-object p2
.end method

.method public getSynergyDevices(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/SynergyDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getSynergyDevices"

    invoke-static {p1, v1, v0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v1, Lcom/xiaomi/mirror/SynergyDeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "remoteDevices"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_24

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    return-object p1

    :catch_24
    :cond_24
    :goto_24
    return-object v0
.end method

.method public isAgreePrivacy(Landroid/content/Context;)Z
    .registers 6

    .line 0
    const-string v0, "isAgreePrivacy"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3, v3}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string p1, "MiuiSynergy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAgreePrivacy, fix binder error, result="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_2d
    move-exception p1

    goto :goto_3b

    :cond_2f
    :goto_2f
    if-eqz v2, :cond_3a

    const-string p1, "enable"

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_2d

    if-eqz p1, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public isFloatWindowShow(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const-string v0, "isFloatWindowShow"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_16

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_19

    :cond_18
    :goto_18
    return v1

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public isFreedomWindow(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isFreedomWindow"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_17

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :catch_17
    :cond_17
    return v0
.end method

.method public isP2PWorking(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isP2PWorking"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :catch_18
    move-exception p1

    goto :goto_1b

    :cond_1a
    :goto_1a
    return v0

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isShowMirrorFromPhone(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isShowMirrorFromPhone"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_17

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :catch_17
    :cond_17
    return v0
.end method

.method public isSplitWindow(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isSplitWindow"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_17

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :catch_17
    :cond_17
    return v0
.end method

.method public isSupportSendApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 0
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isSupportSendApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportSendApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "deviceType"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "isSupportSendApp"

    const/4 v1, 0x0

    invoke-static {p1, p3, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string p3, "enable"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_27

    if-eqz p1, :cond_29

    const/4 p2, 0x1

    goto :goto_29

    :catch_27
    move-exception p1

    goto :goto_2a

    :cond_29
    :goto_29
    return p2

    :goto_2a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public isSupportSendAppToPhone(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isSupportSendAppToPhone"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_24

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_22

    if-eqz p1, :cond_24

    const/4 p2, 0x1

    goto :goto_24

    :catch_22
    move-exception p1

    goto :goto_25

    :cond_24
    :goto_24
    return p2

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public isSupportTakePhoto(Landroid/content/Context;)Z
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isSupportTakePhoto(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public isSupportTakePhoto(Landroid/content/Context;Z)Z
    .registers 6

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "includeLyra"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "isSupportTakePhoto"

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_24

    const-string p2, "enable"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :catch_22
    move-exception p1

    goto :goto_25

    :cond_24
    :goto_24
    return v0

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isSynergyEnable(Landroid/content/Context;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "isSynergyEnable"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v1, "enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :catch_18
    move-exception p1

    goto :goto_1b

    :cond_1a
    :goto_1a
    return v0

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isTakingPhoto(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "isTakingPhoto"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string p2, "value"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "current miui+ version not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openDirect(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "openDirect"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_21

    :cond_18
    const-string p2, "fileDescriptor"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22

    :goto_21
    return-object v1

    :catch_22
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string v0, "open failed"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public openMiCloudOnSynergy(Landroid/content/Context;)I
    .registers 4

    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "openMiCloudOnSynergy"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    const/4 p1, 0x0

    return p1

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public openOnSynergy(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "extra"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    const-string p3, "displayId"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "openOnSynergy"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_30

    const/4 p1, 0x0

    return p1

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public openRemoteDeviceMirror(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openRemoteDeviceMirror2(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .registers 7

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method_version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$9;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$9;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openRemoteDeviceMirrorByBtMac(Landroid/content/Context;Ljava/lang/String;ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;Z)V
    .registers 8

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "btMac"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "remoteSupportLyra"

    invoke-virtual {v0, p3, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$7;

    invoke-direct {p4, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$7;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryAllRemoteDevices(Landroid/content/Context;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryMirrorDesktopDevices(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "queryMirrorDeviceList"

    invoke-static {p1, v2, v0, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v1, Lcom/xiaomi/mirror/MirrorDesktopInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "mirrorDevice"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_29

    if-nez v1, :cond_28

    goto :goto_29

    :cond_28
    return-object p1

    :catch_29
    :cond_29
    :goto_29
    return-object v0
.end method

.method public queryMirrorDesktopInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorDesktopInfo;
    .registers 5

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "queryMirrorDesktopInfo"

    invoke-static {p1, v2, v0, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v1, Lcom/xiaomi/mirror/MirrorDesktopInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "mirrorDesktopInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/MirrorDesktopInfo;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    return-object v0
.end method

.method public queryOpenOnSynergy(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extension"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public queryRemoteDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mirror/RemoteDeviceInfo;
    .registers 6

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "remoteDeviceId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "queryRemoteDevice"

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "remoteDevice"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/RemoteDeviceInfo;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    return-object v0
.end method

.method public queryRemoteDevices(Landroid/content/Context;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "xiaomi"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public querySameAccountApInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;
    .registers 4

    .line 0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "querySameAccountAp"

    invoke-static {p1, v1, v0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_20

    const-string v1, "apSsid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_20

    :cond_1a
    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {v1, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;-><init>(Landroid/os/Bundle;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    :cond_20
    :goto_20
    return-object v0
.end method

.method public registerSameAccountApCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;)I
    .registers 6

    .line 0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apCallback"

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "registerApCallback"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p1, 0x0

    return p1

    :catch_1e
    const/4 p1, -0x1

    return p1
.end method

.method public registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    new-instance v0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    invoke-direct {v0}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I

    move-result p1

    return p1
.end method

.method public releaseMirrorAdvConnection(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)I
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    if-eqz v0, :cond_2d

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->access$700(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_f

    goto :goto_2d

    :cond_f
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "releaseMirrorAdvConnection"

    invoke-static {p1, v1, v0, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_29

    :catch_29
    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, -0x1

    return p1
.end method

.method public removeRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_20
    return-void
.end method

.method public saveToSynergy(Landroid/app/Activity;Landroid/content/ClipData;Ljava/lang/String;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clipData"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "extra"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    const-string p3, "displayId"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "saveToSynergy"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_30

    const/4 p1, 0x0

    return p1

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .registers 17

    .line 0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    return-void
.end method

.method public sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .registers 11

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "taskId"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "package"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appName"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ref"

    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "onlyCast"

    invoke-virtual {v0, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;

    invoke-direct {p3, p0, p1, v0, p8}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFileToDeviceByBtMac(Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;I)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;I)I"
        }
    .end annotation

    .line 0
    const-string v0, "fileList"

    const-string v1, "deviceType"

    const-string v2, "btMac"

    const-string v3, "MiuiSynergy"

    if-nez p5, :cond_2c

    const-string p5, "oneHopSendFileByMirror"

    invoke-static {v3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p5, v0, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;

    invoke-direct {p3, p0, p1, p5}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_78

    :cond_2c
    const/4 v4, 0x1

    if-ne p5, v4, :cond_78

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string v5, "oneHopSendFileByMiShare"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.miui.mishare.action.NFC_TOUCH_TRANSFER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.miui.mishare.connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_57
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1, v5, v2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_57

    :cond_67
    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "oneHopSharePackage"

    invoke-virtual {v6, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_78
    :goto_78
    const/4 p1, 0x0

    return p1
.end method

.method public setAgreePrivacy(Landroid/content/Context;Z)I
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "setAgreePrivacy"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_16

    const/4 p1, 0x0

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setAllRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    return-void
.end method

.method public setRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const-string v0, "xiaomi"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    return-void
.end method

.method public setShareCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V
    .registers 5

    .line 0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mShareCallback:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;

    invoke-direct {p2, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v1, "shareCallback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "setShareCallback"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_28

    return-void

    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "local miui+ not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startRemoteMainMirrorDisplay(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startShare(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isStart"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "startShare"

    invoke-static {p1, p3, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string p2, "enable"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "local miui+ not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public takePhotoCancel(Landroid/app/Activity;)I
    .registers 3

    .line 0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->takePhotoCancel(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public takePhotoCancel(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 6

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const-string v2, "displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_29
    const-string p2, "takePhotoCancel"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_31

    const/4 p1, 0x0

    return p1

    :catch_31
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public takePhotoOnSynergy(Landroid/app/Activity;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .registers 4

    .line 0
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->takePhotoOnSynergy(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I

    move-result p1

    return p1
.end method

.method public takePhotoOnSynergy(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .registers 7

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const-string v2, "displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$4;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$4;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterSameAccountApCallback(Landroid/content/Context;)I
    .registers 4

    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "unRegisterApCallback"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p1, 0x0

    return p1

    :catch_e
    const/4 p1, -0x1

    return p1
.end method

.method public unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I

    move-result p1

    return p1
.end method

.method public updateTitle(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "updateTitle"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_16

    const/4 p1, 0x0

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method
