.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$2;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 509
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_21

    .line 510
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 511
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5$2;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$5;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainBg(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_21
    return-void
.end method
