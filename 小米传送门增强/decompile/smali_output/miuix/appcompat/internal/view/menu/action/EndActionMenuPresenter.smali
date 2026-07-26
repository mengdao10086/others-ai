.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.source "EndActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;
    }
.end annotation


# instance fields
.field private mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method public static synthetic $r8$lambda$hmK2IHmKxP_XTPvb8q6kllOqJ1c(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/view/MenuItem;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->lambda$createOverflowMenuButton$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    .line 38
    invoke-direct/range {p0 .. p6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 29
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method private synthetic lambda$createOverflowMenuButton$0(Landroid/view/MenuItem;)Z
    .registers 4

    .line 115
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_f

    .line 116
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 119
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 120
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_1f

    .line 122
    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    :goto_1f
    return v0
.end method


# virtual methods
.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .line 102
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 106
    :cond_8
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    sget v9, Lmiuix/appcompat/R$id;->more:I

    sget v3, Lmiuix/appcompat/R$string;->more:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v9

    invoke-static/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 108
    sget v3, Lmiuix/appcompat/R$attr;->endActionMoreButtonIcon:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-virtual {v2, v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 114
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)V

    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 126
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setPreventDispatchingItemsChanged(Z)V

    .line 127
    invoke-virtual {p0, v2, v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v9}, Landroid/view/View;->setId(I)V

    .line 129
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 130
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setView(Landroid/view/View;)V

    return-object p1
.end method

.method protected getDefaultMaxItemCount()I
    .registers 3

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$integer;->action_bar_end_menu_max_item_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x5

    return v0
.end method

.method protected getOverflowMenuAnimationGravity(Landroid/view/View;)I
    .registers 2

    .line 136
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x33

    return p1

    :cond_9
    const/16 p1, 0x35

    return p1
.end method

.method protected isConvertViewTypeAllowed(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 94
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v0

    .line 95
    :goto_11
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;

    if-eqz p1, :cond_18

    if-nez v1, :cond_18

    move v0, v2

    :cond_18
    return v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 10

    .line 145
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_8
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v7}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateBadgeOnMoreButton()V
    .registers 2

    .line 78
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->mMoreButtonItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    return-void

    .line 81
    :cond_5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    return-void
.end method
