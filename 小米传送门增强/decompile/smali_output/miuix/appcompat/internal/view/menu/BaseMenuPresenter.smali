.class public abstract Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 52
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 53
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method

.method protected static close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 223
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    return-void
.end method

.method protected static createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 16

    .line 232
    new-instance v8, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method protected static dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 227
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected static notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 219
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .registers 4

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;
    .registers 5

    .line 144
    invoke-static {}, Lmiuix/internal/util/AsyncInflateLayoutManager;->getInstance()Lmiuix/internal/util/AsyncInflateLayoutManager;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/internal/util/AsyncInflateLayoutManager;->inflateViewById(Ljava/lang/Integer;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    return-object p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .registers 2

    .line 211
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 160
    instance-of v0, p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_7

    .line 161
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    goto :goto_b

    .line 163
    :cond_7
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    move-result-object p2

    .line 165
    :goto_b
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V

    .line 166
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 5

    .line 64
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-nez v0, :cond_1a

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 69
    :cond_1a
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 189
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_7

    .line 190
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 3

    .line 195
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 215
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    return-void
.end method

.method public abstract shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
.end method

.method public updateMenuView(Z)V
    .registers 8

    .line 76
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    return-void

    .line 82
    :cond_8
    invoke-interface {p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->hasBackgroundView()Z

    move-result p1

    .line 85
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_5a

    .line 86
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 87
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1d

    .line 89
    invoke-virtual {p0, p1, v2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    instance-of v4, v3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_41

    .line 92
    move-object v4, v3

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    .line 93
    :goto_42
    invoke-virtual {p0, v2, v3, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eq v2, v4, :cond_4c

    const/4 v4, 0x0

    .line 96
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_4c
    if-eq v5, v3, :cond_51

    .line 101
    invoke-virtual {p0, v5, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 104
    :cond_51
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 113
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_6b

    .line 114
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    move-result v1

    if-nez v1, :cond_5a

    add-int/lit8 p1, p1, 0x1

    goto :goto_5a

    :cond_6b
    return-void
.end method
