.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showRecognitionCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 801
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v1, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v1, :cond_7

    return-void

    .line 804
    :cond_7
    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 805
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 806
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 807
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 808
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 809
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 810
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;)V

    .line 811
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 891
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
