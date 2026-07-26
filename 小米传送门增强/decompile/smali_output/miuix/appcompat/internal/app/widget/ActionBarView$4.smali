.class Lmiuix/appcompat/internal/app/widget/ActionBarView$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 300
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 301
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_47

    .line 302
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v0, p1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    goto :goto_5d

    .line 309
    :cond_1c
    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5d

    .line 310
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_5d

    .line 304
    :cond_31
    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5d

    .line 305
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_5d

    .line 314
    :cond_47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5d

    .line 315
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_5d
    :goto_5d
    return-void
.end method
