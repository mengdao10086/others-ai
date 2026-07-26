.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showNerRecommendCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1217
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1220
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v0, :cond_7

    return-void

    .line 1223
    :cond_7
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->val$firstCard:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1224
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1225
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 1226
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;)V

    .line 1227
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1272
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1273
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$17;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
