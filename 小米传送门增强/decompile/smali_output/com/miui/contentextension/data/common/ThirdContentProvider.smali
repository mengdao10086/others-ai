.class public Lcom/miui/contentextension/data/common/ThirdContentProvider;
.super Ljava/lang/Object;
.source "ThirdContentProvider.java"


# direct methods
.method public static doImageScan(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .registers 6

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    new-instance v2, Lcom/miui/contentextension/data/common/ThirdContentProvider$3;

    invoke-direct {v2, p2}, Lcom/miui/contentextension/data/common/ThirdContentProvider$3;-><init>(Landroid/graphics/Bitmap;)V

    const-string p2, "image"

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 135
    const-string p2, "type"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string p1, "miui.intent.action.screenscanner"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string p1, "detectBundle"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/AppsUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static doTextSearch(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/reactivex/Observer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/miui/contentextension/data/common/ThirdContentProvider$2;

    invoke-direct {p1}, Lcom/miui/contentextension/data/common/ThirdContentProvider$2;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 112
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 113
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 114
    invoke-virtual {p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static doTextTranslate(Ljava/lang/String;Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/Observer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/miui/contentextension/data/common/ThirdContentProvider$1;

    invoke-direct {v0}, Lcom/miui/contentextension/data/common/ThirdContentProvider$1;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 85
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 86
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
