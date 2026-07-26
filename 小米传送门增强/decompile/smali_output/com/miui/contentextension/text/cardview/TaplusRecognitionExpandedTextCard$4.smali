.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;
.super Lcom/miui/contentextension/data/recognition/network/OcrObserver;
.source "TaplusRecognitionExpandedTextCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->doTranslate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/contentextension/data/recognition/network/OcrObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-direct {p0}, Lcom/miui/contentextension/data/recognition/network/OcrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;)V
    .registers 3

    .line 422
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10022e

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .registers 2

    .line 408
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .registers 5

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 412
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "translateUrl is empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/network/OcrObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 415
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.RecognitionTextCard"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$4;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    const-string v1, "translation"

    const-string v2, "translate"

    invoke-static {v0, v1, p1, v2}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$mopenLandingPage(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
