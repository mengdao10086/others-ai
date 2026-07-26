.class public Lcom/miui/contentextension/data/cms/ConfigDataManager;
.super Ljava/lang/Object;
.source "ConfigDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/cms/ConfigDataManager$Holder;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mparseCloudKVPref(Lcom/miui/contentextension/data/cms/ConfigDataManager;Lcom/google/gson/JsonObject;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->parseCloudKVPref(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInterval(Lcom/miui/contentextension/data/cms/ConfigDataManager;Landroid/content/Context;Lcom/google/gson/JsonObject;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->updateInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/data/cms/ConfigDataManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/data/cms/ConfigDataManager;
    .registers 1

    .line 46
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataManager$Holder;->-$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/cms/ConfigDataManager;

    move-result-object v0

    return-object v0
.end method

.method private parseCloudKVPref(Lcom/google/gson/JsonObject;)V
    .registers 7

    .line 102
    const-string v0, "isSearchWithQsbClient"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setIsSearchWithQsbClient(Z)V

    .line 106
    :cond_21
    const-string v0, "cardExposePercent"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Taplus.ConfigDataManager"

    if-eqz v1, :cond_64

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 108
    :try_start_35
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    if-ltz v0, :cond_64

    const/16 v1, 0x64

    if-gt v0, v1, :cond_64

    .line 111
    invoke-static {v0}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setCardExposePercent(I)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_4a} :catch_4b

    goto :goto_64

    :catch_4b
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCloudKVPref\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_64
    :goto_64
    const-string v0, "cardExposeStayTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 119
    :try_start_76
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_ab

    const-wide/16 v3, 0x1388

    cmp-long v3, v0, v3

    if-gtz v3, :cond_ab

    .line 122
    invoke-static {v0, v1}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setCardExposeStayTime(J)V
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_91} :catch_92

    goto :goto_ab

    :catch_92
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCloudKVPref:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_ab
    :goto_ab
    const-string v0, "isSegmentLocallyWhenQSearch"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setIsSegmentLocallyWhenQSearch(Z)V

    :cond_cc
    return-void
.end method

.method private setTimeInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    if-nez p3, :cond_7

    goto :goto_40

    .line 162
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 165
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p1

    goto :goto_2b

    .line 166
    :cond_1a
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 167
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p1

    goto :goto_2b

    :cond_29
    const-wide/16 p1, -0x1

    :goto_2b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_32

    return-void

    :cond_32
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_39

    move-wide p1, v0

    :cond_39
    const-wide/32 v0, 0xea60

    mul-long/2addr p1, v0

    .line 176
    invoke-static {p3, p1, p2}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setTimeInterval(Ljava/lang/String;J)V

    :cond_40
    :goto_40
    return-void
.end method

.method private shouldCheckUpdate()Z
    .registers 7

    .line 135
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceUtils;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->getTimeInternal(Ljava/lang/String;)J

    move-result-wide v0

    .line 137
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->getLastUpdateTime()J

    move-result-wide v2

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, v0

    if-gtz v0, :cond_24

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0
.end method

.method private updateInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 148
    :cond_3
    const-string v0, "wifi"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->setTimeInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 150
    const-string v0, "3g"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->setTimeInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 152
    const-string v0, "4g"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->setTimeInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 154
    const-string v0, "2g"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->setTimeInterval(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public tryToUpdateConfig()V
    .registers 4

    .line 50
    invoke-direct {p0}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->shouldCheckUpdate()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 54
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v1, "hash"

    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->getPrefFileHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/miui/contentextension/data/http/OkHttpClient;->getInterface()Lcom/miui/contentextension/data/http/ApiInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/contentextension/data/http/RequestParamsUtil;->getEncryptedParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/miui/contentextension/data/http/ApiInterface;->commonConfig(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/miui/contentextension/data/cms/ConfigDataManager$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/data/cms/ConfigDataManager$1;-><init>(Lcom/miui/contentextension/data/cms/ConfigDataManager;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
