.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 986
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 3

    if-eqz p1, :cond_18

    .line 991
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto :goto_14

    :cond_12
    const/16 v0, 0x8

    :goto_14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_31

    .line 993
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 995
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 997
    :cond_28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    :goto_31
    return-void
.end method

.method public onStop(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 1009
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    const/16 v0, 0x8

    .line 1011
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 3

    .line 0
    return-void
.end method
