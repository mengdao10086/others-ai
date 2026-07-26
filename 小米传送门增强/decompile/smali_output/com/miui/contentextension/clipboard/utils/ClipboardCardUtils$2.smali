.class Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;
.super Landroid/os/AsyncTask;
.source "ClipboardCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->tryToGetRemoteDevices(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 88
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    :try_start_5
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryAllRemoteDevices(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$smtransToDeviceInfoList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/networking/NetworkingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getTrustedDeviceList()Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$smtransToDeviceInfoList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 97
    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$smsortDeviceInfoList(Ljava/util/List;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToGetRemoteDevices error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ClipboardCardUtils"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 88
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    const-string v0, "Taplus.ClipboardCardUtils"

    const-string v1, "tryToGetRemoteDevices onPostExecute"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$sfgetmLastGetRemoteDevicesTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_22

    .line 109
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->clearDevicesContents()V

    if-eqz p1, :cond_1b

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 111
    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$sfputmRemoteDevicesResult(Ljava/util/List;)V

    .line 113
    :cond_1b
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$sfgetmRemoteDevicesResult()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$smonRemoteDeviceResultOk(Ljava/util/List;)V

    :cond_22
    return-void
.end method
