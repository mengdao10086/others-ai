.class Lmiuix/appcompat/internal/app/widget/ActionBarView$12;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field final synthetic val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field final synthetic val$primaryHeight:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V
    .registers 4

    .line 1345
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$primaryHeight:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1348
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1349
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x1

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    :cond_e
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1365
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1366
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1355
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 1359
    :cond_d
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 1360
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->val$primaryHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    return-void
.end method
