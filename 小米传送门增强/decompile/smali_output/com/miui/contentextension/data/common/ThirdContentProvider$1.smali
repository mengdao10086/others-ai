.class Lcom/miui/contentextension/data/common/ThirdContentProvider$1;
.super Ljava/lang/Object;
.source "ThirdContentProvider.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/common/ThirdContentProvider;->doTextTranslate(Ljava/lang/String;Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 57
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object v1

    .line 61
    :cond_1b
    new-instance v0, Lcom/miui/contentextension/data/http/HttpRequest;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v3

    const/4 v4, 0x5

    .line 62
    invoke-static {v4}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 63
    const-string v3, "queryWords"

    invoke-virtual {v0, v3, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result p1

    const-string v3, "isSupportTrustZone"

    if-eqz p1, :cond_50

    .line 65
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 68
    :cond_50
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_57
    invoke-virtual {v0, v5}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 71
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 76
    const-string v0, "landingPage"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_90
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/common/ThirdContentProvider$1;->apply(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
