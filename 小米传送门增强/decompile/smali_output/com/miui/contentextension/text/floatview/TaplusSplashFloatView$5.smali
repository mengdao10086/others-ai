.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;->apply(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    .line 508
    sget-object v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;->getINSTANCE()Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getOcrResult(Landroid/graphics/Bitmap;)Lkotlin/Pair;

    move-result-object p1

    .line 509
    const-string v0, ""

    if-nez p1, :cond_f

    return-object v0

    .line 512
    :cond_f
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 513
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 515
    :cond_22
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->parseWordListFormServer(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2f

    return-object v0

    .line 519
    :cond_2f
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->getAllWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
