.class Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lmiuix/view/SearchActionMode$AnimatedViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;)V
    .registers 2

    .line 1613
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInSearchMode(Z)V
    .registers 3

    .line 1624
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    move-result v0

    if-eq v0, p1, :cond_28

    .line 1625
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Z)Z

    .line 1626
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1627
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    :cond_28
    return-void
.end method

.method public onUpdateOffsetY(I)V
    .registers 3

    .line 1616
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_14

    .line 1617
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setCoordinatedOffsetYInSearchModeAnimation(I)V

    .line 1618
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper$1;->this$1:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_14
    return-void
.end method
