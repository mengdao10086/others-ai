.class Lcom/miui/contentextension/data/recognition/ImageRecognition$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "ImageRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/recognition/ImageRecognition;->doImageRecognize(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lkotlin/Pair<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/ImageRecognition$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OCR image recognition onError message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ImageRecognition"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string p1, "{}"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onRecommendationResultOk(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 48
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/ImageRecognition$1;->onNext(Lkotlin/Pair;)V

    return-void
.end method

.method public onNext(Lkotlin/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Taplus.ImageRecognition"

    if-eqz v0, :cond_2e

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> OCR local recognition onNext result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/ImageRecognition$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/contentextension/data/recognition/ImageRecognition;->-$$Nest$smprocessOcrResult(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4c

    .line 55
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> OCR server recognition onNext result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onRecommendationResultOk(Ljava/lang/String;Z)V

    :goto_4c
    return-void
.end method
