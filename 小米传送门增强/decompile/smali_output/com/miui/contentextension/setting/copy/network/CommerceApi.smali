.class public interface abstract Lcom/miui/contentextension/setting/copy/network/CommerceApi;
.super Ljava/lang/Object;
.source "CommerceApi.java"


# virtual methods
.method public abstract getCommerceRules()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/miui/contentextension/setting/copy/model/CommerceRulesModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/passage/copy/rules"
    .end annotation
.end method
