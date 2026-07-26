.class public Lcom/miui/contentextension/data/recognition/QueryRecommend;
.super Ljava/lang/Object;
.source "QueryRecommend.java"


# direct methods
.method public static doQueryRecommend(Ljava/lang/String;Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/Observer<",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 35
    :cond_7
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/miui/contentextension/data/recognition/QueryRecommend$1;

    invoke-direct {v0}, Lcom/miui/contentextension/data/recognition/QueryRecommend$1;-><init>()V

    .line 36
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 63
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 64
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
