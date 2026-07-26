.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;)V
    .registers 2

    .line 1017
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1020
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_41

    .line 1021
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_41

    .line 1022
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmClipboardCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$2;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    :cond_41
    return-void
.end method
