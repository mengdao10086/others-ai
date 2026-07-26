.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirst:Z

.field final synthetic this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;)V
    .registers 2

    .line 1000
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1001
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1005
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_112

    .line 1006
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_112

    .line 1007
    iget-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->isFirst:Z

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    const/4 p1, 0x0

    .line 1011
    iput-boolean p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->isFirst:Z

    .line 1013
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1014
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 1015
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x15e

    .line 1016
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;

    invoke-direct {v3, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;)V

    .line 1017
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$1;

    invoke-direct {v3, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;)V

    .line 1026
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1032
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1033
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1036
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1037
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1038
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1039
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v3, v3, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

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

    .line 1042
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1043
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1045
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_112
    return-void
.end method
