.class public Lcom/miui/contentextension/data/recognition/ImageRecognition;
.super Ljava/lang/Object;
.source "ImageRecognition.java"


# static fields
.field private static mOcrDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method static bridge synthetic -$$Nest$smprocessOcrResult(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/miui/contentextension/data/recognition/ImageRecognition;->processOcrResult(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static doImageRecognize(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 31
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    if-eqz p0, :cond_40

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_40

    .line 37
    :cond_d
    sget-object v1, Lcom/miui/contentextension/data/recognition/ImageRecognition;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 38
    sget-object v1, Lcom/miui/contentextension/data/recognition/ImageRecognition;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 40
    :cond_1c
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/miui/contentextension/data/recognition/ImageRecognition$2;

    invoke-direct {v1}, Lcom/miui/contentextension/data/recognition/ImageRecognition$2;-><init>()V

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/miui/contentextension/data/recognition/network/ComposeTransformer;

    invoke-direct {v1}, Lcom/miui/contentextension/data/recognition/network/ComposeTransformer;-><init>()V

    .line 47
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/miui/contentextension/data/recognition/ImageRecognition$1;

    invoke-direct {v1, v0}, Lcom/miui/contentextension/data/recognition/ImageRecognition$1;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    sput-object p0, Lcom/miui/contentextension/data/recognition/ImageRecognition;->mOcrDisposable:Lio/reactivex/disposables/Disposable;

    return-void

    .line 33
    :cond_40
    :goto_40
    const-string p0, "Taplus.ImageRecognition"

    const-string v0, "doImageRecognize: track g_expose"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string p0, "{}"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onRecommendationResultOk(Ljava/lang/String;Z)V

    return-void
.end method

.method private static processOcrResult(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 74
    invoke-static {p0}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 75
    invoke-static {v1}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->tryToGetRecommendation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getTextSegmentResponse(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1e

    .line 78
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {p0, p1, v0}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->segmentPassageLocally(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    invoke-static {v0, v1}, Lcom/miui/contentextension/text/RecommendationMonitor;->onSegmentReady(Ljava/util/ArrayList;Z)V

    :goto_1e
    return-void
.end method
