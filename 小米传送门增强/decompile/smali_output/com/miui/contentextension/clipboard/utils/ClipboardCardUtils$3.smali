.class Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;
.super Landroid/os/AsyncTask;
.source "ClipboardCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->getCommerceRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$passage:Ljava/lang/String;

.field final synthetic val$urlPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$urlPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$passage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 125
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8

    .line 128
    iget-object p1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Taplus.ClipboardCardUtils"

    if-nez p1, :cond_11

    .line 129
    const-string p1, "network is not connected"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 132
    :cond_11
    const-string p1, "getCommerceRecommendWithAsyncTask: doInBackground"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Lcom/miui/contentextension/data/http/HttpRequest;

    iget-object v2, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$urlPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p1, v2, v3, v4}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 134
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/contentextension/utils/Utilities;->getCurrentPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {p1, v3, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result v2

    const-string v3, "isSupportTrustZone"

    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    .line 136
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "token"

    invoke-virtual {p1, v5, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 139
    :cond_4d
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_54
    const-string v2, "passage"

    iget-object v3, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->val$passage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7d0

    .line 143
    invoke-virtual {p1, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->setConnectTimeout(I)V

    const/16 v2, 0xbb8

    .line 144
    invoke-virtual {p1, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->setReadTimeout(I)V

    .line 145
    invoke-virtual {p1, v4}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL ....... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_80
    invoke-virtual {p1}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object p1
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_85

    return-object p1

    :catch_85
    move-exception p1

    .line 152
    const-string v2, "getCommerceRecommendWithAsyncTask "

    invoke-static {v1, v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 125
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4

    .line 159
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$sfgetmLastCopyRecommendTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_19

    .line 160
    const-string v0, "Taplus.ClipboardCardUtils"

    const-string v1, "getCommerceRecommendWithAsyncTask: onPostExecute"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->clearRecommendContents()V

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 163
    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->onCopyRecommendationResultOk(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
