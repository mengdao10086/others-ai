.class public interface abstract Lcom/miui/contentextension/setting/whitelist/network/BlacklistModelApi;
.super Ljava/lang/Object;
.source "BlacklistModelApi.java"


# virtual methods
.method public abstract blacklistPageConfig(Lorg/json/JSONObject;)Lretrofit2/Call;
    .param p1    # Lorg/json/JSONObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type:application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/config/appConfig"
    .end annotation
.end method

.method public abstract getBlacklist(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/hot_app/queryTransferBlacklist"
    .end annotation
.end method
