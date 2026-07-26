.class public interface abstract Lcom/miui/contentextension/data/http/ApiInterface;
.super Ljava/lang/Object;
.source "ApiInterface.java"


# virtual methods
.method public abstract commonConfig(Ljava/util/Map;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/miui/contentextension/data/cms/ConfigDataResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/config/commonConfig"
    .end annotation
.end method
