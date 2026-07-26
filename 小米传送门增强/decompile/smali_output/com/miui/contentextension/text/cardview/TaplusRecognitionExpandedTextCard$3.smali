.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;
.super Ljava/lang/Object;
.source "TaplusRecognitionExpandedTextCard.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

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
    .registers 3

    .line 376
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10022e

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 357
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .registers 4

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 366
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "queryUrl is empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 370
    :cond_11
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$3;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    const-string v1, "search"

    invoke-static {v0, v1, p1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$mopenLandingPage(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 360
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper;->getInstance()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/DisposableHelper;->add(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
