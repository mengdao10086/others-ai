.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;
.super Lio/reactivex/observers/DisposableObserver;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->talkBackForImageIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

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

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OCR image recognition onError message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SplashFloatView"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 524
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .registers 6

    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 528
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v2, v2, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const v3, 0x7f100158

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2e
    return-void
.end method
