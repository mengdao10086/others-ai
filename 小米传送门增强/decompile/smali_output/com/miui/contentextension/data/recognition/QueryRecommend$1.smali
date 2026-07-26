.class Lcom/miui/contentextension/data/recognition/QueryRecommend$1;
.super Ljava/lang/Object;
.source "QueryRecommend.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/recognition/QueryRecommend;->doQueryRecommend(Ljava/lang/String;Lio/reactivex/Observer;)V
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
        "Ljava/util/List<",
        "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/miui/contentextension/data/http/HttpRequest;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const/4 v2, 0x2

    .line 41
    invoke-static {v2}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    invoke-static {v0}, Lcom/miui/contentextension/data/recognition/RecognitionParamUtil;->addCommonParams(Lcom/miui/contentextension/data/http/HttpRequest;)V

    .line 43
    const-string v1, "passage"

    invoke-virtual {v0, v1, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d0

    .line 44
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->setConnectTimeout(I)V

    const/16 p1, 0xbb8

    .line 45
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->setReadTimeout(I)V

    .line 46
    invoke-virtual {v0, v3}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 47
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "cards"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 55
    new-instance v1, Lcom/miui/contentextension/data/recognition/QueryRecommend$1$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/data/recognition/QueryRecommend$1$1;-><init>(Lcom/miui/contentextension/data/recognition/QueryRecommend$1;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 56
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 57
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_68
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/QueryRecommend$1;->apply(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
