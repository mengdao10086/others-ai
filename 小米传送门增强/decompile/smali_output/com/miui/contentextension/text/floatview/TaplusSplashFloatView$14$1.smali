.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 992
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 993
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 994
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080084

    .line 995
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenDensityDpi()I

    move-result v3

    .line 994
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 996
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07041f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 997
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

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

    .line 998
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xfa

    .line 999
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;)V

    .line 1000
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1048
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1049
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;->getRecognitionIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerEntities(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_b5

    const/4 v0, 0x1

    :cond_b5
    invoke-static {v0}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackEditorCardExpose(Z)V

    return-void
.end method
