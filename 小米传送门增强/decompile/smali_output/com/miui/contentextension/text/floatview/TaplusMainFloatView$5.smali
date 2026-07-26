.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->showMainFloat(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 493
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmSupportPartialScreenshot(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 495
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->getInstance()Lcom/miui/contentextension/screenshot/partial/RectFactory;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fputmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Lcom/miui/contentextension/screenshot/partial/ShapeFactory;)V

    .line 496
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmScreenshotView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->clear(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V

    .line 497
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v3, v2, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mPickedRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmScreenshotView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->notifyShapeChanged(Landroid/graphics/Rect;Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V

    .line 498
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$minitImageCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V

    .line 500
    :cond_52
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 502
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
