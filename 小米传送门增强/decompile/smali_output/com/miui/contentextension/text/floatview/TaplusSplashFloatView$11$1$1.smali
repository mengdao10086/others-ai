.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirst:Z

.field final synthetic this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;)V
    .registers 2

    .line 822
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 823
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 827
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_132

    .line 828
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_132

    .line 829
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->isFirst:Z

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const/4 p1, 0x0

    .line 833
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->isFirst:Z

    .line 835
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 836
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 837
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x15e

    .line 838
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$2;

    invoke-direct {v3, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;)V

    .line 839
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$1;

    invoke-direct {v3, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;)V

    .line 848
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 854
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 855
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 858
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 859
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 860
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 861
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

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

    .line 864
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 865
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 866
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 867
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    if-eqz p1, :cond_132

    .line 870
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_132
    return-void
.end method
