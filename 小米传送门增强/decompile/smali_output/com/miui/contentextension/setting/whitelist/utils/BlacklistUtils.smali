.class public Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;
    }
.end annotation


# static fields
.field private static final MIUI_VERSION_NAME:Ljava/lang/String;

.field private static final noLauncherIconApps:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$finzJPEkmXc5hSBJSzEsYNmAOtw(Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->lambda$getBlacklistIfNeed$0(Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 75
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/SystemPropertiesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    .line 472
    const-string v0, "com.milink.service"

    const-string v1, "com.miui.fliphome"

    const-string v2, "com.miui.personalassistant"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->noLauncherIconApps:[Ljava/lang/String;

    return-void
.end method

.method private static addNoLaunchIconBlacklist(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->noLauncherIconApps:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 476
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 477
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static getAllBlacklist(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistFromCloudOrAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getWhiteListFromLocalShow(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whitelistShowPackagesInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Taplus.BlacklistUtils"

    invoke-static {v3, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 325
    :cond_32
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackListFromUser(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blacklistPackagesInstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4e
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_64
    return-object v0
.end method

.method private static getBlackListFromCloud(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    const-string v0, "blacklistFromCloud"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->getListFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBlackListFromSP()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "blacklist_for_sp"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 232
    const-string v0, "Taplus.BlacklistUtils"

    const-string v1, "getBlackListFromSP is empty"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_1b
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->parseJsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBlackListFromUser(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackListFromSP()Ljava/util/List;

    move-result-object v0

    .line 370
    const-string v1, "Taplus.BlacklistUtils"

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 371
    const-string p0, "getBlackListFromUser data from sp"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 374
    :cond_14
    const-string v0, "getBlackListFromUser data from file"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "blacklistConfig"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->getListFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;"
        }
    .end annotation

    .line 379
    const-string v0, "preloadConfig"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getPreloadBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 382
    :cond_d
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackPageConfigFromAssets(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getBlackPageConfigFromAssets(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 419
    const-string v1, "config.json"

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/FileUtils;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 422
    :try_start_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 423
    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 424
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 425
    new-instance v4, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    invoke-direct {v4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;-><init>()V

    .line 426
    invoke-virtual {v4, v3}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->setupConfig(Lorg/json/JSONObject;)V

    .line 427
    const-string v5, "packageName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_35
    move-exception v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error :"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.BlacklistUtils"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-object v0
.end method

.method public static getBlacklistByAllBlacklistAndLocalInstalled(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getAllBlacklist(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    move v5, v4

    goto :goto_16

    .line 299
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 300
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBlacklistByAllBlacklistAndLocalInstalled: allBlacklist size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Taplus.BlacklistUtils"

    invoke-static {v6, v5}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 302
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 303
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getWhiteListFromLocalShow(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBlacklistByAllBlacklistAndLocalInstalled: whitelists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 306
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    invoke-virtual {v9}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->shouldDisable()Z

    move-result v9

    if-eqz v9, :cond_70

    const/4 v9, 0x1

    goto :goto_71

    :cond_70
    move v9, v4

    :goto_71
    if-eqz v3, :cond_79

    .line 307
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_81

    :cond_79
    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_50

    if-eqz v9, :cond_50

    .line 308
    :cond_81
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 311
    :cond_85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBlacklistByAllBlacklistAndLocalInstalled: need time:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "--blacklist:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static getBlacklistFromAssets(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    const-string v0, "blacklist.json"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 348
    :try_start_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 349
    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_42

    .line 350
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_27

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :catch_27
    move-exception p0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBlacklistFromAssets error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.BlacklistUtils"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-object v0
.end method

.method private static getBlacklistFromCloudOrAssets(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->hasBlacklistCloudConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 337
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlackListFromCloud(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 339
    :cond_b
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistFromAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBlacklistIfNeed(Landroid/content/Context;)V
    .registers 4

    .line 115
    invoke-static {p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->needGetBlacklist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 116
    const-string p0, "Taplus.BlacklistUtils"

    const-string v0, "get blacklist condition not right"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_e
    invoke-static {}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->getInstance()Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;

    .line 121
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;->getBlacklist(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    .line 122
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 123
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getCurrentSettingBlacklist(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "taplus_blacklist"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_27

    :catch_b
    move-exception p0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSetting error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taplus.BlacklistUtils"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public static getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    const-string v0, "Taplus.BlacklistUtils"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :try_start_18
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 167
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_26

    :catch_40
    move-exception p0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstalledPackages error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInstalledPackages size: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getIsFirst()Z
    .registers 4

    .line 201
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "blacklist_expired"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/contentextension/utils/PreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static getLastGetBlacklistTime()Ljava/lang/String;
    .registers 5

    .line 197
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_get_blacklist_time"

    invoke-static {v0, v2, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParams()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getIsFirst()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFirst"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "lmts"

    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getLastGetBlacklistTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_32

    const-string v1, "stable"

    goto :goto_34

    :cond_32
    const-string v1, "dev"

    :goto_34
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "os"

    sget-object v2, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {v0}, Lcom/miui/contentextension/data/http/RequestParamsUtil;->appendDeviceInfo(Ljava/util/Map;)V

    .line 250
    const-string v1, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getParamsSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "black list getParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.BlacklistUtils"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getParamsSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    new-instance v3, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 261
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    .line 264
    :goto_3b
    const-string v3, "&"

    if-ge v2, p0, :cond_60

    if-lez v2, :cond_44

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;

    .line 269
    invoke-static {v3}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->-$$Nest$fgetname(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->-$$Nest$fgetvalue(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 271
    :cond_60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 274
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Lcom/miui/contentextension/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPreloadBlackPageConfig(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;"
        }
    .end annotation

    .line 387
    const-string v0, "Taplus.BlacklistUtils"

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 388
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "preloadConfig"

    invoke-static {p0, v4}, Lcom/miui/contentextension/utils/FileUtils;->getConfigInfoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_65

    .line 389
    :try_start_19
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3d

    .line 393
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_61
    .catchall {:try_start_1c .. :try_end_20} :catchall_3d

    .line 397
    :try_start_20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_3d

    if-nez v3, :cond_61

    .line 400
    :try_start_26
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v4, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    invoke-direct {v4}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;-><init>()V

    .line 402
    invoke-virtual {v4, v3}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->setupConfig(Lorg/json/JSONObject;)V

    .line 403
    const-string v5, "packageName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_3c} :catch_3f
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3d

    goto :goto_1c

    :catchall_3d
    move-exception p0

    goto :goto_67

    :catch_3f
    move-exception v3

    .line 405
    :try_start_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load config error : info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " e:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_40 .. :try_end_60} :catchall_3d

    goto :goto_1c

    .line 411
    :catch_61
    :cond_61
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_88

    :catch_65
    move-exception p0

    goto :goto_70

    .line 388
    :goto_67
    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v2

    :try_start_6c
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6f
    throw p0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_65

    .line 412
    :goto_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreloadConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-object v1
.end method

.method private static getUrl()Ljava/lang/String;
    .registers 1

    .line 153
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_7

    .line 154
    const-string v0, "http://staging.flash.sec.miui.com/"

    return-object v0

    .line 156
    :cond_7
    const-string v0, "https://flash.sec.miui.com/"

    return-object v0
.end method

.method public static getWhiteListFromLocalShow(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    const-string v0, "whitelistLocalShow"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->getListFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static hasBlacklistCloudConfig(Landroid/content/Context;)Z
    .registers 2

    .line 239
    const-string v0, "blacklistFromCloud"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBlacklistTimeExpired()Z
    .registers 6

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    const-string v3, "blacklist_expired"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/contentextension/utils/PreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private static synthetic lambda$getBlacklistIfNeed$0(Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 125
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getStatus()I

    move-result v0

    if-nez v0, :cond_b

    .line 126
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->setBlacklistExpiredTime()V

    :cond_b
    if-eqz p0, :cond_3f

    .line 128
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 129
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->getBlacklist()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 130
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->getBlacklist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 131
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->getLastTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->setLastGetBlacklistTime(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;->getData()Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/contentextension/setting/whitelist/model/WhitelistData;->getBlacklist()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 134
    :cond_3f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static needGetBlacklist(Landroid/content/Context;)Z
    .registers 2

    .line 180
    invoke-static {}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->isBlacklistTimeExpired()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 181
    invoke-static {p0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private static saveBlacklistToSettingProvider(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    const-string v0, "Taplus.BlacklistUtils"

    const-string v1, "taplus_blacklist"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 448
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez p1, :cond_20

    const/4 p0, 0x0

    goto :goto_24

    .line 452
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 453
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save blacklist to provider blacklist size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",blacklist:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    goto :goto_5d

    :catch_41
    move-exception p0

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save blacklist error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5d
    return-void
.end method

.method public static declared-synchronized saveBlacklistToSettingProviderIfNeed(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;

    monitor-enter v0

    .line 437
    :try_start_3
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 438
    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->addNoLaunchIconBlacklist(Ljava/util/List;)V

    .line 439
    invoke-static {p0, p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->saveBlacklistToSettingProvider(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1b

    :catchall_12
    move-exception p0

    goto :goto_1d

    .line 441
    :cond_14
    const-string p0, "Taplus.BlacklistUtils"

    const-string p1, "save blacklist to  provider: no permission"

    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_12

    .line 443
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_12

    throw p0
.end method

.method public static setBlackListData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    const-string v0, "Taplus.BlacklistUtils"

    const-string v1, "blacklist_for_sp"

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_33

    .line 216
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->gsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/miui/contentextension/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_32

    :catch_19
    move-exception p0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlackListData error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void

    .line 211
    :cond_33
    :goto_33
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->removeKey(Landroid/content/Context;Ljava/lang/String;)Z

    .line 212
    const-string p0, "setBlackListData is empty"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setBlacklistExpiredTime()V
    .registers 5

    .line 189
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    const-string v3, "blacklist_expired"

    invoke-static {v0, v3, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastGetBlacklistTime(Ljava/lang/String;)V
    .registers 3

    .line 193
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "last_get_blacklist_time"

    invoke-static {v0, v1, p0}, Lcom/miui/contentextension/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
