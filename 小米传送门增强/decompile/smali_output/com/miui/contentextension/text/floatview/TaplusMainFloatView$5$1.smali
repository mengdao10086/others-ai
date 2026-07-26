.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusMainFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 518
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainBg(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 519
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 520
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->trackRecommendView(Z)V

    .line 521
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->trackRecognitionView(Z)V

    .line 522
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->trackCurRecognitionExpose(Z)V

    .line 523
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->uploadExposingItems(Z)V

    .line 524
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->destroySplashFloatView()V

    return-void
.end method
