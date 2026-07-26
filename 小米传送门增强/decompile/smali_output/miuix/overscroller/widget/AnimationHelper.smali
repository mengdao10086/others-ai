.class public Lmiuix/overscroller/widget/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 16
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->postVsyncCallback()V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 26
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->postVsyncCallback()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
