.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showEditorCards()V
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

    .line 976
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 979
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v1, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-eqz v1, :cond_7

    return-void

    .line 982
    :cond_7
    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 983
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 984
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 985
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 986
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

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

    .line 987
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 988
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;)V

    .line 989
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1053
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
