.class Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;
.super Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.source "EndActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupSubMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V
    .registers 13

    .line 156
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 157
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    .line 158
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 159
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_overflow_popup_menu_item_layout:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setMenuItemLayout(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    .line 170
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 171
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_d
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 164
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 165
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    # getter for: Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->access$000(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method
