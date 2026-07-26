.class Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 1699
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V
    .registers 3

    .line 1699
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 1710
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 1711
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->onCloseSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_9
    if-eqz p2, :cond_2c

    .line 1715
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 1716
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object p2

    const/4 v0, 0x6

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1718
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # invokes: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 1720
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz p1, :cond_2c

    .line 1721
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 p1, 0x0

    .line 1722
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    :cond_2c
    return-void
.end method

.method public onCloseSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 1703
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1704
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_16
    return-void
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1740
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1741
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;

    move-result-object p1

    const/4 v0, 0x6

    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1732
    :cond_4
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 1733
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    const/4 p1, 0x0

    .line 1734
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    return p1
.end method
