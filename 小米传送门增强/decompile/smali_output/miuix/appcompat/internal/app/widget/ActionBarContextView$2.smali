.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x1020019

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    move-result-object p1

    goto :goto_16

    .line 151
    :cond_10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    move-result-object p1

    .line 154
    :goto_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 155
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    if-eqz v0, :cond_35

    .line 157
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    :cond_35
    return-void
.end method
