.class Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 2104
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2108
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2109
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScrollTarget:Landroid/view/View;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2110
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScrollTarget:Landroid/view/View;
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnPostScroll(Landroid/view/View;I)V

    .line 2112
    :cond_37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2113
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_48
    return-void
.end method
