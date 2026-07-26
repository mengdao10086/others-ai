.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 2059
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 2

    .line 2063
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 2078
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2079
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 2084
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2085
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 2068
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2069
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F

    move-result p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F

    move-result p2

    div-float/2addr p1, p2

    .line 2070
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I
    invoke-static {p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I

    .line 2071
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1202(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I

    .line 2072
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 2073
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    return-void
.end method
