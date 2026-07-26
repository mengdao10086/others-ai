.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showOtherRecommends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 757
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v1, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v1, :cond_6b

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecommends(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    goto :goto_6b

    .line 763
    :cond_12
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 764
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 766
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 767
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 769
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->val$secondCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$9;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecommends(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-static {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mtrackRecommendCardExpose(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    :cond_6b
    :goto_6b
    return-void
.end method
