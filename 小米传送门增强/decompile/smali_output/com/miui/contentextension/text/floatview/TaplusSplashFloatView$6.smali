.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecommendCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    .line 583
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-static {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mclearClipboardDataIfNeed(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/AppsUtils;->generateOpenIntent(Landroid/content/Context;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 586
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-static {v1, v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mtrackRecommendCardClick(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    const/4 v1, 0x1

    .line 587
    invoke-static {v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->setIsTaskFinished(Z)V

    .line 588
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {v2, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->shouldStartAiWindow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-virtual {v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->isTranslateCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 590
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$6;->val$info:Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->startAiWindow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e

    .line 592
    :cond_47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AppsUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_4e
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 594
    const-string v1, "click_recommend"

    const-string v2, "recommend"

    const-string v3, "start_floating"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "66.2.1.1.1055"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    invoke-static/range {v1 .. v12}, Lcom/miui/contentextension/analy/Analy;->trackQuitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_61
    return-void
.end method
