.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 551
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_3f

    .line 552
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 553
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainBg(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 554
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmScreenshotView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 555
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmScreenshotView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3f
    return-void
.end method
