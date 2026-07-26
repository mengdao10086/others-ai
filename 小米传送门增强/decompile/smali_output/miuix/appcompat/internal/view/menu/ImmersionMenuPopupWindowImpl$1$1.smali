.class Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

.field final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    # getter for: Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->show(Landroid/view/View;)V

    return-void
.end method
