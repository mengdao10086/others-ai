.class Lcom/miui/contentextension/data/common/ThirdContentProvider$2;
.super Ljava/lang/Object;
.source "ThirdContentProvider.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/common/ThirdContentProvider;->doTextSearch(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
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

    if-eqz p1, :cond_4b

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    goto :goto_4b

    .line 103
    :cond_10
    new-instance v0, Lcom/miui/contentextension/data/http/HttpRequest;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const/4 v2, 0x4

    .line 104
    invoke-static {v2}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "searchWord"

    invoke-virtual {v0, v2, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "searchWordStats"

    invoke-virtual {v0, v1, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string p1, "packageName"

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v3}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 101
    :cond_4b
    :goto_4b
    const-string p1, ""

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/common/ThirdContentProvider$2;->apply(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
