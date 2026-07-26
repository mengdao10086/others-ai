.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

.field private mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

.field private mAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;Landroid/view/View;)V
    .registers 5

    .line 27
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object p3

    .line 30
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    .line 31
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, p3, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
    .registers 1

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .registers 1

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;
    .registers 1

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    return-object p0
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2

    .line 81
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getLastAnchor()Landroid/view/View;
    .registers 2

    .line 72
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method public getLastParent()Landroid/view/ViewGroup;
    .registers 2

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public show(Landroid/view/View;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    .line 68
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAnchor:Landroid/view/View;

    .line 62
    invoke-super {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
