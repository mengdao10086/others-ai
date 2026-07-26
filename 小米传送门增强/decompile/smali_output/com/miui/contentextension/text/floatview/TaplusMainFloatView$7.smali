.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->refreshQueryRecommends(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

.field final synthetic val$reSelectedWay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;->val$reSelectedWay:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 675
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 687
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    .line 688
    invoke-virtual {v1, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setReselected(Z)V

    .line 689
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;->val$reSelectedWay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setReselectedWay(Ljava/lang/String;)V

    goto :goto_7

    .line 691
    :cond_1d
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0, p1, v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$mupdateRecommendCards(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Ljava/util/List;Z)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 678
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper;->getInstance()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/DisposableHelper;->add(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
