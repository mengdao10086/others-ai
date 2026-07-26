.class public Lcom/miui/contentextension/App;
.super Lmiuix/autodensity/MiuixApplication;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/App$NetworkReceiver;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

.field private static mIsMiuiLiteRom:Ljava/lang/Boolean;

.field private static sInstance:Lcom/miui/contentextension/App;


# instance fields
.field private final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static bridge synthetic -$$Nest$mregisterGlobalReceiver(Lcom/miui/contentextension/App;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/App;->registerGlobalReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/miui/contentextension/App;->mIsMiuiLiteRom:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lmiuix/autodensity/MiuixApplication;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/App;->mActivities:Ljava/util/ArrayList;

    return-void
.end method

.method public static getHandler()Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;
    .registers 1

    .line 189
    sget-object v0, Lcom/miui/contentextension/App;->mHandler:Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/contentextension/App;
    .registers 1

    .line 181
    sget-object v0, Lcom/miui/contentextension/App;->sInstance:Lcom/miui/contentextension/App;

    return-object v0
.end method

.method private initRxJavaPlugins()V
    .registers 2

    .line 168
    new-instance v0, Lcom/miui/contentextension/App$4;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/App$4;-><init>(Lcom/miui/contentextension/App;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public static isMiuiLiteRom()Z
    .registers 1

    .line 193
    sget-object v0, Lcom/miui/contentextension/App;->mIsMiuiLiteRom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private registerGlobalReceiver()V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/miui/contentextension/App;->mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

    if-nez v0, :cond_c

    .line 104
    new-instance v0, Lcom/miui/contentextension/App$NetworkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/App$NetworkReceiver;-><init>(Lcom/miui/contentextension/App-IA;)V

    iput-object v0, p0, Lcom/miui/contentextension/App;->mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

    .line 106
    :cond_c
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/App;->mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/miui/contentextension/App;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_28

    .line 108
    new-instance v0, Lcom/miui/contentextension/App$3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/App$3;-><init>(Lcom/miui/contentextension/App;)V

    iput-object v0, p0, Lcom/miui/contentextension/App;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    :cond_28
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3d

    .line 119
    iget-object v1, p0, Lcom/miui/contentextension/App;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3d
    return-void
.end method

.method public static resetWhitelistToSettingProviderIfNeed(Landroid/content/Context;)V
    .registers 4

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "taplus_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "Taplus.App"

    if-eqz v0, :cond_18

    .line 155
    const-string p0, "reset setting provider whitelist null, return"

    invoke-static {v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_18
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_42

    .line 160
    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    move-exception p0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save blacklist error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method private static setHandler(Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;)V
    .registers 1

    .line 185
    sput-object p0, Lcom/miui/contentextension/App;->mHandler:Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    return-void
.end method

.method private static setInstance(Lcom/miui/contentextension/App;)V
    .registers 1

    .line 177
    sput-object p0, Lcom/miui/contentextension/App;->sInstance:Lcom/miui/contentextension/App;

    return-void
.end method

.method private unRegisterGlobalReceiver()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/miui/contentextension/App;->mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

    if-eqz v0, :cond_d

    .line 125
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/App;->mNetworkReceiver:Lcom/miui/contentextension/App$NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/miui/contentextension/App;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_25

    .line 128
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_25

    .line 130
    iget-object v1, p0, Lcom/miui/contentextension/App;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_25
    return-void
.end method


# virtual methods
.method public destroyAllActivity()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/miui/contentextension/App;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 98
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/miui/contentextension/App;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/miui/contentextension/App;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 54
    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->onCreate()V

    .line 55
    invoke-static {p0}, Lcom/miui/contentextension/App;->setInstance(Lcom/miui/contentextension/App;)V

    .line 56
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->refreshKeepCatcherProcessAliveEnable(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/contentextension/App;->setHandler(Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;)V

    .line 58
    invoke-direct {p0}, Lcom/miui/contentextension/App;->initRxJavaPlugins()V

    .line 59
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->initialize(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/miui/contentextension/utils/Utilities;->VMRuntime_clearGrowthLimit()V

    .line 61
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/analy/Analy;->init(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/App$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/App$1;-><init>(Lcom/miui/contentextension/App;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->runInBackgroud(Ljava/lang/Runnable;)V

    .line 72
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/App$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/App$2;-><init>(Lcom/miui/contentextension/App;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceConfig;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/App;->mIsMiuiLiteRom:Ljava/lang/Boolean;

    return-void
.end method

.method public onTerminate()V
    .registers 1

    .line 84
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 85
    invoke-direct {p0}, Lcom/miui/contentextension/App;->unRegisterGlobalReceiver()V

    return-void
.end method
