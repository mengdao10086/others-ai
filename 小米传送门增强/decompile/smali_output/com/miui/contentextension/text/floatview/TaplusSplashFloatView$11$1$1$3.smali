.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;)V
    .registers 2

    .line 870
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 873
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 874
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

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

    .line 876
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 877
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 879
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1$3;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard2(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mgetModuleType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mtrackRecognitionCardExpose(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Ljava/lang/String;)V

    return-void
.end method
