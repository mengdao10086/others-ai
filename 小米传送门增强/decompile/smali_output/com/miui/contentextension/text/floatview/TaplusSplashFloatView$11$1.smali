.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 814
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 815
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080084

    .line 817
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 816
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 819
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 820
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 821
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;)V

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 886
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 887
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$11;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mgetModuleType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mtrackRecognitionCardExpose(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Ljava/lang/String;)V

    return-void
.end method
