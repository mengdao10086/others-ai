.class public Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;,
        Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    }
.end annotation


# static fields
.field private static final URI_RELAY_RESULT:Landroid/net/Uri;

.field private static final URI_UPDATE:Landroid/net/Uri;

.field private static final URI_VISIBLE:Landroid/net/Uri;


# instance fields
.field private mAliveBinder:Landroid/os/IBinder;

.field private volatile mIsRegister:Z

.field private mRefCallback:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaomi/mirror/synergy/RelayIconCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayResultObserver:Landroid/database/ContentObserver;

.field private mUpdateObserver:Landroid/database/ContentObserver;

.field private mVisibleObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    const-string v0, "mirror_relay_icon_visible"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    const-string v0, "mirror_relay_icon_update"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    const-string v0, "mirror_relay_result"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    move-result-object p0

    return-object p0
.end method

.method private checkRemoteProcess(Landroid/content/Context;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getAliveBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    :try_start_12
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .registers 12

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getUpdateIcon"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_18

    return-object p2

    :cond_18
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "remote_device_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "remote_device_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "remote_device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "remote_support_handoff"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4c} :catch_4d

    return-object p1

    :catch_4d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2
.end method

.method private getRelayResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getRelayResult"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_18

    return-object p2

    :cond_18
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    const-string v1, "relay_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;-><init>(I)V

    goto :goto_41

    :catch_2d
    move-exception p1

    goto :goto_42

    :cond_2f
    const-string v0, "relay_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "relay_error_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;-><init>(ILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_2d

    move-object v0, v1

    :goto_41
    return-object v0

    :goto_42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2
.end method

.method private notifyUpdateIcon(Landroid/content/Context;)V
    .registers 4

    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notifyUpdateIcon"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

.method private performRelayIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "performRelayIconClick"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-interface {v0}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconHide()V

    :cond_15
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_20
    return-void
.end method

.method public performIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->performRelayIconClick(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
    .registers 7

    .line 0
    if-nez p2, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->notifyUpdateIcon(Landroid/content/Context;)V

    return-void
.end method

.method public unRegisterCallback(Landroid/content/Context;)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    :cond_13
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    :cond_22
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    :cond_31
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_3a

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_3a
    return-void
.end method
