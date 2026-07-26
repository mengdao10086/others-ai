.class public Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;
.super Ljava/lang/Object;
.source "CommerceUtils.java"


# direct methods
.method public static synthetic $r8$lambda$WaV3ZVUrjhsW829TDG2Yy4pcVRc(Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->lambda$getCommerceRulesIfNeed$0(Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getCommerceRulesFromAssets(Landroid/content/Context;)Ljava/util/List;
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

    .line 113
    const-string v0, "commerce_rules.json"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 117
    :try_start_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 118
    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_42

    .line 119
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_27

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :catch_27
    move-exception p0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommerceRulesFromAssets error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.CommerceUtils"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-object v0
.end method

.method private static getCommerceRulesFromCloud(Landroid/content/Context;)Ljava/util/List;
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

    .line 109
    const-string v0, "rules_from_cloud"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->getListFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCommerceRulesFromCloudOrAssets(Landroid/content/Context;)Ljava/util/List;
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

    .line 97
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->hasCommerceRulesCloudConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->getCommerceRulesFromCloud(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 100
    :cond_b
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->getCommerceRulesFromAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCommerceRulesIfNeed(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-static {p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->needGetRules(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 49
    const-string p0, "Taplus.CommerceUtils"

    const-string v0, "get commerce rules, condition not right, return"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_e
    invoke-static {}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->getInstance()Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/miui/contentextension/data/http/HostConfig;->getUrlHost()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/contentextension/setting/copy/network/CommerceApi;

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/setting/copy/network/CommerceApi;

    .line 54
    invoke-interface {v0}, Lcom/miui/contentextension/setting/copy/network/CommerceApi;->getCommerceRules()Lio/reactivex/Observable;

    move-result-object v0

    .line 55
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils$1;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private static hasCommerceRulesCloudConfig(Landroid/content/Context;)Z
    .registers 2

    .line 105
    const-string v0, "rules_from_cloud"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRulesTimeExpired()Z
    .registers 6

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    const-string v3, "rules_expired"

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

.method private static synthetic lambda$getCommerceRulesIfNeed$0(Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 58
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->getCode()I

    move-result v0

    if-nez v0, :cond_b

    .line 59
    invoke-static {}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->setRulesExpiredTime()V

    :cond_b
    if-eqz p0, :cond_22

    .line 61
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 62
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 63
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 65
    :cond_22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static needGetRules(Landroid/content/Context;)Z
    .registers 2

    .line 84
    invoke-static {}, Lcom/miui/contentextension/setting/copy/utils/CommerceUtils;->isRulesTimeExpired()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 85
    invoke-static {p0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isClipboardSettingOpen(Landroid/content/Context;)Z

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

.method public static setRulesExpiredTime()V
    .registers 5

    .line 93
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    const-string v3, "rules_expired"

    invoke-static {v0, v3, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
