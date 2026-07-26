.class public Lcom/miui/contentextension/data/common/ContentExtensionConfig;
.super Ljava/lang/Object;
.source "ContentExtensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;,
        Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;,
        Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;,
        Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;
    }
.end annotation


# static fields
.field private static final DEBUG_INTERNAL:Z

.field private static volatile instance:Lcom/miui/contentextension/data/common/ContentExtensionConfig;

.field private static final sLock:Ljava/lang/Object;

.field private static final sPropertyConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsForbiddenByUser:Z

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-vP8aPrpDMoARaLbEisgGOdNXEA(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getConfig()V

    return-void
.end method

.method public static synthetic $r8$lambda$14LK10kqxr0N9P-JdTFkuhaEZ6c(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rDsjEN2rLZxEl9FYRDwsPlNaXQ0(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->lambda$prepareConfigList$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->sPropertyConfig:Ljava/util/Map;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->sLock:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actionbarvisible"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "isedittext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "isfullscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ismultiscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/cc_internal"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->DEBUG_INTERNAL:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mIsForbiddenByUser:Z

    .line 117
    iput-object p1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;)V
    .registers 4

    .line 256
    sget-object v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const v1, 0x13134d0

    .line 258
    invoke-static {p0, v1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isJobExisting(Landroid/app/job/JobScheduler;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 259
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 260
    const-string p0, "Taplus.Content.presentationConfig"

    const-string v1, "cancelJob: 20002000"

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 262
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method private getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)Ljava/lang/String;
    .registers 11

    .line 511
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    .line 512
    const-string v0, "normal"

    if-eqz p2, :cond_92

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig contain info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->triggers:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "--type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.Content.presentationConfig"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->triggers:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getCurrentPickMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "forbidden"

    if-nez v1, :cond_4f

    return-object v2

    .line 517
    :cond_4f
    iget v1, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mType:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5a

    iget v5, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    if-ne v5, v3, :cond_5a

    return-object v0

    :cond_5a
    if-ne v1, v3, :cond_76

    .line 520
    iget v5, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    if-ne v5, v4, :cond_76

    .line 521
    iget-object v1, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 522
    iget-object p2, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;

    invoke-virtual {p2, v3, p1, p4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->getPresentationType(ILandroid/content/Context;Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_75
    return-object v0

    :cond_76
    if-ne v1, v4, :cond_92

    .line 527
    iget v1, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    if-ne v1, v4, :cond_92

    .line 528
    iget-object v0, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 529
    iget-object p2, p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;

    invoke-virtual {p2, v4, p1, p4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->getPresentationType(ILandroid/content/Context;Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_91
    return-object v2

    :cond_92
    return-object v0
.end method

.method private getConfig()V
    .registers 6

    .line 422
    const-string v0, "Taplus.Content.presentationConfig"

    :try_start_2
    const-string v1, "enter getConfig"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 424
    const-string v2, "_enc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    invoke-static {}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->getInstance()Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    move-result-object v2

    .line 426
    invoke-static {}, Lcom/miui/contentextension/data/http/HostConfig;->getNewCmsHost()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;

    invoke-virtual {v2, v3, v4}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;

    .line 427
    invoke-interface {v2, v1}, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;->blacklistPageConfig(Lorg/json/JSONObject;)Lretrofit2/Call;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;

    if-eqz v1, :cond_5f

    .line 429
    invoke-virtual {v1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->getCode()I

    move-result v2

    if-nez v2, :cond_5f

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get blacklist page cloud config success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->onConfigResult(Ljava/lang/String;)V

    goto :goto_68

    :catch_5d
    move-exception v0

    goto :goto_65

    .line 433
    :cond_5f
    const-string v1, "getConfig finish"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_5d

    goto :goto_68

    .line 436
    :goto_65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_68
    return-void
.end method

.method private getCurrentPickMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 539
    invoke-static {p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 540
    const-string p1, "doublePickMode"

    return-object p1

    .line 542
    :cond_9
    const-string p1, "singlePickMode"

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;
    .registers 3

    .line 121
    sget-object v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->instance:Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    if-nez v0, :cond_1d

    .line 122
    const-class v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    monitor-enter v0

    .line 123
    :try_start_7
    sget-object v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->instance:Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    if-nez v1, :cond_19

    .line 124
    new-instance v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->instance:Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 126
    :cond_19
    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    throw p0

    .line 128
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->instance:Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    return-object p0
.end method

.method private getLastSyncTimeMillis()J
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    const-string v1, "pref_last_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPropertyConfig(Ljava/lang/String;)I
    .registers 2

    .line 137
    sget-object v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->sPropertyConfig:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getRandomIntervalMillis()J
    .registers 4

    .line 251
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x78

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isDebug()Z
    .registers 1

    .line 222
    sget-boolean v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->DEBUG_INTERNAL:Z

    return v0
.end method

.method private static isJobExisting(Landroid/app/job/JobScheduler;I)Z
    .registers 8

    .line 268
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobInfo;

    if-eqz v5, :cond_e

    .line 271
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_e

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_e

    :cond_26
    move v3, v2

    move v4, v3

    :cond_28
    if-le v4, v1, :cond_2e

    .line 278
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_2f

    :cond_2e
    move v2, v3

    .line 281
    :goto_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isJobExisting: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.Content.presentationConfig"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isLastSyncTimeExpired()Z
    .registers 5

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getLastSyncTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private synthetic lambda$init$0()V
    .registers 4

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->initConfigs()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1f

    :catch_4
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.Content.presentationConfig"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method private synthetic lambda$prepareConfigList$1()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    return-void
.end method

.method private needReloadAllConfigs()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {v0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .registers 9

    .line 226
    sget-object v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 228
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->cancelJob(Landroid/content/Context;)V

    goto :goto_10

    :catchall_d
    move-exception p0

    goto/16 :goto_93

    .line 231
    :cond_10
    :goto_10
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const v2, 0x13134d0

    .line 232
    invoke-static {v1, v2}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isJobExisting(Landroid/app/job/JobScheduler;I)Z

    move-result v3

    if-nez v3, :cond_91

    .line 233
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/miui/contentextension/services/CloudSyncJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x2

    .line 235
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 236
    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isDebug()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 237
    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_46

    const-wide/32 v4, 0xea60

    goto :goto_4e

    .line 238
    :cond_46
    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getRandomIntervalMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    add-long/2addr v4, v6

    .line 237
    :goto_4e
    invoke-virtual {p0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 240
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-ne p0, v3, :cond_77

    .line 242
    const-string p0, "Taplus.Content.presentationConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleJob: success is debug "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isDebug()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 244
    :cond_77
    const-string p0, "Taplus.Content.presentationConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleJob: failed is debug "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isDebug()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_91
    :goto_91
    monitor-exit v0

    return-void

    :goto_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_d

    throw p0
.end method

.method private setLastSyncTimeMillis(Ljava/lang/Long;)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    const-string v1, "pref_last_sync_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateConfig(Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 465
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 467
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    .line 468
    invoke-virtual {p2}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->clear()V

    .line 469
    invoke-virtual {p2, p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->setupConfig(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 471
    :cond_19
    new-instance v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    invoke-direct {v1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;-><init>()V

    .line 472
    invoke-virtual {v1, p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->setupConfig(Lorg/json/JSONObject;)V

    .line 473
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    return-void
.end method


# virtual methods
.method public declared-synchronized getConfigWithUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 482
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "forbidden"
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    goto :goto_73

    .line 483
    :cond_d
    :try_start_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object p1

    .line 484
    const-string p3, "Taplus.Content.presentationConfig"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getConfigWithUser presentationType:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p3, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_41

    .line 486
    const-string p3, "Taplus.Content.presentationConfig"

    const-string p4, "getConfigWithUser mWhiteList size=0, so need add all"

    invoke-static {p3, p4}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p3, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    iget-object p4, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistByAllBlacklistAndLocalInstalled(Landroid/content/Context;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 489
    :cond_41
    const-string p3, "forbidden"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_50

    .line 490
    iput-boolean p3, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mIsForbiddenByUser:Z

    .line 491
    const-string p1, "forbidden"
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_b

    monitor-exit p0

    return-object p1

    .line 493
    :cond_50
    :try_start_50
    iget-object p1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 494
    const-string p1, "Taplus.Content.presentationConfig"

    const-string p2, "getConfigWithUser blacklist contains, so return forbidden"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mIsForbiddenByUser:Z

    .line 496
    const-string p1, "forbidden"
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_b

    monitor-exit p0

    return-object p1

    .line 498
    :cond_66
    :try_start_66
    const-string p1, "Taplus.Content.presentationConfig"

    const-string p2, "getConfigWithUser blacklist not contains, so return normal"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput-boolean p3, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mIsForbiddenByUser:Z

    .line 500
    const-string p1, "normal"
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_b

    monitor-exit p0

    return-object p1

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_b

    throw p1
.end method

.method public init(Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;)V
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 142
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda2;-><init>(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initConfigs()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    .line 153
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 154
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;

    invoke-interface {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ContentExtensionConfigListener;->onConfigLoadFinished()V

    .line 156
    :cond_1d
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->isLastSyncTimeExpired()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 157
    invoke-virtual {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->reloadAllConfigsIfNeed()V

    :cond_26
    return-void
.end method

.method public isForbiddenByUser()Z
    .registers 2

    .line 478
    iget-boolean v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mIsForbiddenByUser:Z

    return v0
.end method

.method public needShowBottomRemind(Ljava/lang/String;)Z
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 344
    iget p1, p1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public onConfigResult(Ljava/lang/String;)V
    .registers 8

    .line 441
    const-string v0, "preloadConfig"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Taplus.Content.presentationConfig"

    if-eqz v1, :cond_10

    .line 442
    const-string p1, "get blacklist cloud config onConfigResult empty"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 446
    :cond_10
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    const-string p1, "result"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1e

    return-void

    .line 451
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->setLastSyncTimeMillis(Ljava/lang/Long;)V

    .line 452
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v1, :cond_3e

    .line 454
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 455
    iget-object v5, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-direct {p0, v4, v5}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateConfig(Lorg/json/JSONObject;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :catch_3c
    move-exception p1

    goto :goto_5e

    .line 457
    :cond_3e
    iget-object p1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->writeBackToFile(Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadConfig file exist:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5d} :catch_3c

    goto :goto_65

    .line 460
    :goto_5e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    invoke-virtual {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateBlacklistAndProvider()V

    .line 213
    :cond_12
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 214
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string p1, "preloadConfig"

    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->writeBackToFile(Ljava/lang/String;Ljava/util/Map;)V

    :cond_26
    return-void
.end method

.method public prepareConfigList()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mConfigList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 337
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda1;-><init>(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public reloadAllConfigsIfNeed()V
    .registers 3

    .line 162
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->needReloadAllConfigs()Z

    move-result v0

    if-nez v0, :cond_e

    .line 163
    const-string v0, "Taplus.Content.presentationConfig"

    const-string v1, "taplus or cta not enable"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 167
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/data/common/ContentExtensionConfig;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 169
    :cond_25
    invoke-direct {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getConfig()V

    :goto_28
    return-void
.end method

.method public updateBlacklistAndProvider()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistByAllBlacklistAndLocalInstalled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateBlacklistConfig(Ljava/util/List;)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBlacklistAndProvider: blacklist size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blacklist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.Content.presentationConfig"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/FileUtils;->writeBlacklistFromUser(Landroid/content/Context;Ljava/util/List;)V

    .line 190
    iget-object v1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->saveBlacklistToSettingProviderIfNeed(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized updateBlacklistConfig(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_11

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1

    .line 183
    :cond_11
    :goto_11
    monitor-exit p0

    return-void
.end method

.method public writeBackToFile(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/FileUtils;->getConfigInfoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :catch_18
    move-exception p1

    goto :goto_56

    .line 551
    :cond_1a
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_18

    .line 552
    :try_start_20
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    .line 553
    iget-object v0, v0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    .line 554
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_47

    goto :goto_28

    :catchall_47
    move-exception p2

    goto :goto_4d

    .line 556
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_18

    goto :goto_59

    .line 551
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    :try_start_52
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p2
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_18

    .line 558
    :goto_56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_59
    return-void
.end method
