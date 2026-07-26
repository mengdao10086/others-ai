.class public Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFenceDecor:Landroid/view/View;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemLayout:I

.field private mOverflowOnly:Z

.field private mPopup:Lmiuix/popupwidget/widget/PopupWindow;

.field private mPopupAnimationGravity:I

.field private mPopupHorizontalOffset:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item_layout:I

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V
    .registers 8

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupAnimationGravity:I

    .line 61
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupMaxHeight:I

    .line 78
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 81
    iput-boolean p5, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 83
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 84
    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mFenceDecor:Landroid/view/View;

    .line 86
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)I
    .registers 1

    .line 31
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .registers 1

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public dismiss(Z)V
    .registers 2

    .line 147
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 148
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    :cond_b
    return-void
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 0
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 227
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 232
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_10

    .line 233
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_10
    return-void
.end method

.method public onDismiss()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    .line 154
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 164
    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 168
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/16 p1, 0x52

    if-ne p2, p1, :cond_10

    .line 169
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    return v0

    :cond_10
    return p3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 10

    .line 199
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 200
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mFenceDecor:Landroid/view/View;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    .line 201
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 204
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_1f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_37

    .line 206
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 207
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_34

    move v2, v4

    goto :goto_38

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_37
    move v2, v1

    .line 212
    :goto_38
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 214
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 215
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_48

    .line 216
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    :cond_48
    return v4

    :cond_49
    return v1
.end method

.method public setAnimationGravity(I)V
    .registers 2

    .line 90
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupAnimationGravity:I

    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public setMenuItemLayout(I)V
    .registers 2

    .line 114
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return-void
.end method

.method public setPopupMaxHeight(I)V
    .registers 2

    .line 110
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupMaxHeight:I

    return-void
.end method

.method public tryShow()Z
    .registers 4

    .line 124
    new-instance v0, Lmiuix/popupwidget/widget/PopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mFenceDecor:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    const/16 v1, 0x51

    .line 126
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 127
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 128
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 131
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    invoke-virtual {v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 133
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    invoke-virtual {v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 134
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupMaxHeight:I

    if-lez v0, :cond_3f

    .line 135
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setMaxAllowedHeight(I)V

    .line 138
    :cond_3f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 139
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;I)V

    .line 140
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_59
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 187
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz p1, :cond_7

    .line 188
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
