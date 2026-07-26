.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->showDevicesRecommendCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1349
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1352
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean v1, v0, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez v1, :cond_74

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRemoteDevices(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    goto :goto_74

    .line 1355
    :cond_12
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1356
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v2, v2, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 1358
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    .line 1359
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1361
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmPeddingAnimator(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->val$first:Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmRemoteDevices(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$21;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->transferType(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackDeviceCardExpose(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)V

    :cond_74
    :goto_74
    return-void
.end method
