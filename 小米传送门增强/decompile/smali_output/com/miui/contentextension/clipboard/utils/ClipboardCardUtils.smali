.class public Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;
.super Ljava/lang/Object;
.source "ClipboardCardUtils.java"


# static fields
.field private static mLastCopyRecommendTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastGetRemoteDevicesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLastNerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRemoteDevicesResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecommendResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetmLastCopyRecommendTask()Landroid/os/AsyncTask;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastCopyRecommendTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmLastGetRemoteDevicesTask()Landroid/os/AsyncTask;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastGetRemoteDevicesTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmLastNerTask()Landroid/os/AsyncTask;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastNerTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmRemoteDevicesResult()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mRemoteDevicesResult:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmRemoteDevicesResult(Ljava/util/List;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mRemoteDevicesResult:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNerResultReady(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->onNerResultReady(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonRemoteDeviceResultOk(Ljava/util/List;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->onRemoteDeviceResultOk(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsortDeviceInfoList(Ljava/util/List;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->sortDeviceInfoList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtransToDeviceInfoList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->transToDeviceInfoList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mRemoteDevicesResult:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->sRecommendResults:Ljava/util/ArrayList;

    return-void
.end method

.method public static clearDevicesContents()V
    .registers 1

    .line 42
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mRemoteDevicesResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static clearRecommendContents()V
    .registers 1

    .line 46
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getCommerceRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 121
    const-string v0, "Taplus.ClipboardCardUtils"

    const-string v1, "get commerce recommend With AsyncTask"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastCopyRecommendTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 125
    :cond_f
    new-instance v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastCopyRecommendTask:Landroid/os/AsyncTask;

    .line 168
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static isCarLyra(Landroid/content/Context;Lcom/xiaomi/mirror/RemoteDeviceInfo;)Z
    .registers 4

    .line 306
    const-string v0, "AndroidPadCar"

    invoke-virtual {p1}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    .line 311
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.xiaomi.mirror"

    const/16 v1, 0x80

    .line 312
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 313
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_40

    .line 314
    const-string p1, "com.xiaomi.mirror.car_lyra"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_24} :catch_25

    return p0

    :catch_25
    move-exception p0

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarLyra: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ClipboardCardUtils"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method public static onCopyRecommendationResultOk(Ljava/lang/String;)V
    .registers 4

    .line 173
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 174
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 176
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    const-string v2, "cards"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 179
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 180
    new-instance v2, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$4;

    invoke-direct {v2}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$4;-><init>()V

    .line 181
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_21

    .line 184
    sget-object v1, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_21

    :catch_5d
    move-exception p0

    .line 190
    const-string v0, "Taplus.ClipboardCardUtils"

    const-string v1, "onCopyRecommendationResultOk"

    invoke-static {v0, v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_65
    sget-object p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->onCopyRecommendReady(Ljava/util/List;)V

    return-void
.end method

.method public static onDestroy()V
    .registers 0

    .line 50
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->clearDevicesContents()V

    .line 51
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->clearRecommendContents()V

    return-void
.end method

.method private static onNerResultReady(I)V
    .registers 1

    .line 81
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->onNerReady(I)V

    return-void
.end method

.method private static onRemoteDeviceResultOk(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->onDeviceReady(Ljava/util/List;)V

    return-void
.end method

.method private static sortDeviceInfoList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 199
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 205
    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6f

    .line 206
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3c

    goto :goto_6f

    :cond_3c
    move v4, v1

    .line 209
    :goto_3d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6c

    .line 210
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-virtual {v5}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_69

    .line 211
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    .line 212
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .line 213
    invoke-interface {p0, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_6c

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 218
    :cond_6f
    :goto_6f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 219
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_7c

    goto :goto_af

    :cond_7c
    move v2, v3

    .line 222
    :goto_7d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ab

    .line 223
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-virtual {v4}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_a8

    .line 224
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    .line 225
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    .line 226
    invoke-interface {p0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v5

    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_ab
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_6f

    :cond_af
    :goto_af
    return-void
.end method

.method private static transToDeviceInfoList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_132

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_132

    .line 239
    :cond_e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    const-string v5, "MIUI+ device: "

    const-string v6, "Taplus.ClipboardCardUtils"

    if-eqz v4, :cond_e8

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 241
    check-cast v4, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->isLyra()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-static {p0, v4}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->isCarLyra(Landroid/content/Context;Lcom/xiaomi/mirror/RemoteDeviceInfo;)Z

    move-result v7

    if-nez v7, :cond_65

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isLyra"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 247
    :cond_65
    new-instance v7, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setIdFromMiuiPlus(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getCapabilities()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceCapabilitiesFromMiuiPlus(Ljava/util/HashMap;)V

    .line 251
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getAppVersion()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDevicePcAppVersionFromMiuiPlus(J)V

    .line 252
    invoke-virtual {v4}, Lcom/xiaomi/mirror/RemoteDeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_134

    goto :goto_c2

    :sswitch_97
    const-string v9, "AndroidPadCar"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    goto :goto_c2

    :cond_a0
    move v8, v0

    goto :goto_c2

    :sswitch_a2
    const-string v9, "AndroidPhone"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    goto :goto_c2

    :cond_ab
    move v8, v2

    goto :goto_c2

    :sswitch_ad
    const-string v9, "Windows"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    goto :goto_c2

    :cond_b6
    move v8, v1

    goto :goto_c2

    :sswitch_b8
    const-string v9, "AndroidPad"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    goto :goto_c2

    :cond_c1
    move v8, v3

    :goto_c2
    packed-switch v8, :pswitch_data_146

    goto/16 :goto_1e

    :pswitch_c7
    const/4 v4, 0x4

    .line 266
    invoke-virtual {v7, v4}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 267
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 254
    :pswitch_d0
    invoke-virtual {v7, v1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 255
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 262
    :pswitch_d8
    invoke-virtual {v7, v0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 263
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 258
    :pswitch_e0
    invoke-virtual {v7, v2}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 259
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 272
    :cond_e8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ec
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_132

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 273
    check-cast p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceType()I

    move-result p1

    if-eq p1, v1, :cond_12b

    if-eq p1, v2, :cond_124

    goto :goto_ec

    .line 283
    :cond_124
    invoke-virtual {v0, v2}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 284
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 279
    :cond_12b
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->setDeviceType(I)V

    .line 280
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    :cond_132
    :goto_132
    return-void

    nop

    :sswitch_data_134
    .sparse-switch
        -0x5e166c3c -> :sswitch_b8
        -0x4c57c59d -> :sswitch_ad
        -0x3228e7a1 -> :sswitch_a2
        -0x135c5290 -> :sswitch_97
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d8
        :pswitch_d0
        :pswitch_c7
    .end packed-switch
.end method

.method public static tryToGetNerResult(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 60
    :cond_7
    sget-object p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastNerTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 63
    :cond_f
    new-instance p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;

    invoke-direct {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastNerTask:Landroid/os/AsyncTask;

    .line 77
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static tryToGetRemoteDevices(Landroid/content/Context;)V
    .registers 3

    .line 85
    sget-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastGetRemoteDevicesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 88
    :cond_8
    new-instance v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->mLastGetRemoteDevicesTask:Landroid/os/AsyncTask;

    .line 117
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
