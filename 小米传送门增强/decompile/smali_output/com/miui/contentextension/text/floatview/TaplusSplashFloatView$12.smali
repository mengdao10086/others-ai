.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$isCancelTask:Z


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 923
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-boolean p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->val$isCancelTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 926
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_OUT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 927
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 928
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;)V

    .line 929
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
