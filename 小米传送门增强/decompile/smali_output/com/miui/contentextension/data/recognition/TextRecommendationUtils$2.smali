.class Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;
.super Landroid/os/AsyncTask;
.source "TextRecommendationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 170
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$urlPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$passage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8

    .line 173
    iget-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Taplus.TextRecommendationUtils"

    if-nez p1, :cond_11

    .line 174
    const-string p1, "network is not connected"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 177
    :cond_11
    const-string p1, "getRecommendWithAsyncTask: doInBackground"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance p1, Lcom/miui/contentextension/data/http/HttpRequest;

    iget-object v2, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$urlPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p1, v2, v3, v4}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    invoke-static {p1}, Lcom/miui/contentextension/data/recognition/RecognitionParamUtil;->addCommonParams(Lcom/miui/contentextension/data/http/HttpRequest;)V

    .line 180
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result v2

    const-string v3, "isSupportTrustZone"

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    .line 181
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "token"

    invoke-virtual {p1, v5, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 184
    :cond_45
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_4c
    const-string v2, "passage"

    iget-object v3, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->val$passage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "hasCom"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7d0

    .line 189
    invoke-virtual {p1, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->setConnectTimeout(I)V

    const/16 v2, 0xbb8

    .line 190
    invoke-virtual {p1, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->setReadTimeout(I)V

    .line 191
    invoke-virtual {p1, v4}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 193
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

    .line 196
    :try_start_81
    invoke-virtual {p1}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object p1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_86

    return-object p1

    :catch_86
    move-exception p1

    .line 198
    const-string v2, "getRecommendWithAsyncTask "

    invoke-static {v1, v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 170
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4

    .line 205
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfgetsLastRecommendationTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    .line 206
    const-string v0, "onPostExecute: track g_expose"

    const-string v1, "Taplus.TextRecommendationUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "getRecommendWithAsyncTask: onPostExecute"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 209
    invoke-static {p1, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onRecommendationResultOk(Ljava/lang/String;Z)V

    :cond_1c
    return-void
.end method
