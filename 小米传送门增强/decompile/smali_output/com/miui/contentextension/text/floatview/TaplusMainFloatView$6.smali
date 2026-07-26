.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->hideMainFloatView()V
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

    .line 538
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmSmallMode(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 542
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v2, v2, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07042b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 541
    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 543
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_OUT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 545
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmSmallMode(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-wide/16 v1, 0x64

    goto :goto_5a

    :cond_58
    const-wide/16 v1, 0xc8

    :goto_5a
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$2;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;)V

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
