.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirst:Z

.field final synthetic this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;)V
    .registers 2

    .line 1241
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1242
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1246
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_ad

    .line 1247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_ad

    .line 1248
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->isFirst:Z

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const/4 p1, 0x0

    .line 1252
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->isFirst:Z

    .line 1254
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;->getShrinkTextGroup()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 1255
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x15e

    .line 1256
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1257
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1258
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v3}, Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;->getShrinkTextGroup()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1261
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1262
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1263
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1264
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mshowOtherNerRecommendCards(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    :cond_ad
    return-void
.end method
