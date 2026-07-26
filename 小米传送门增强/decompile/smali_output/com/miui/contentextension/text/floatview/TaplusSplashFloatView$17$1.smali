.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;)V
    .registers 2

    .line 1227
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1230
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v0, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v0, :cond_a4

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerEntities(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_15

    goto/16 :goto_a4

    .line 1233
    :cond_15
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1234
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;->getShrinkTextGroup()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1235
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getSourceIcon()Lcom/miui/contentextension/view/SourceIcon;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1236
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getSourceIcon()Lcom/miui/contentextension/view/SourceIcon;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1237
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1238
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getSourceIcon()Lcom/miui/contentextension/view/SourceIcon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1239
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xfa

    .line 1240
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;)V

    .line 1241
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1268
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1269
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendBaseCard;->getSourceIcon()Lcom/miui/contentextension/view/SourceIcon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerEntities(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/data/recognition/Entity;

    invoke-static {p1}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackNerCardExpose(Lcom/miui/contentextension/data/recognition/Entity;)V

    :cond_a4
    :goto_a4
    return-void
.end method
