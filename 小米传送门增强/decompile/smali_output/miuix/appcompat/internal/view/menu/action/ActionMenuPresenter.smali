.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private isMaxItemCountSet:Z

.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

.field private mBottomMenuCustomView:Landroid/view/View;

.field protected mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mExpandedActionViewsExclusive:Z

.field private mListItemLayoutRes:I

.field private mListLayoutRes:I

.field private mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field private mMaxItems:I

.field mOpenSubMenuId:I

.field protected mOverflowButton:Landroid/view/View;

.field protected mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field private mOverflowMenuAttrs:I

.field private mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field final mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimitSet:Z


# direct methods
.method public static synthetic $r8$lambda$q5kHayc2GknEb3sBB8QZuSrgcQU(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->lambda$createOverflowMenuButton$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 80
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    .line 85
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    const p1, 0x10102f6

    .line 55
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 58
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 74
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 86
    iput p5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    .line 87
    iput p6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 88
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-void
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$1502(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;
    .registers 2

    .line 43
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    return-object p1
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 2

    .line 43
    invoke-static {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$1802(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    .line 43
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    .line 43
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)I
    .registers 1

    .line 43
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 1

    .line 43
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    .line 369
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 374
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    .line 376
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 377
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 378
    invoke-interface {v5}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_24
    return-object v1
.end method

.method private synthetic lambda$createOverflowMenuButton$0()V
    .registers 4

    .line 752
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_f

    .line 753
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 756
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 757
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_1f

    .line 759
    :cond_1c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    :goto_1f
    return-void
.end method


# virtual methods
.method public bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
    .registers 4

    const/4 v0, 0x0

    .line 266
    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    .line 267
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V

    return-void
.end method

.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .line 750
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;

    const/4 v1, 0x0

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    invoke-direct {v0, p1, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 751
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .registers 2

    .line 463
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .registers 9

    .line 494
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 497
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    if-ge v2, v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    :cond_10
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-ge v4, v1, :cond_35

    if-lez v2, :cond_35

    .line 500
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 501
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_2b

    :cond_2a
    move v5, v3

    .line 502
    :cond_2b
    :goto_2b
    invoke-virtual {v6, v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    if-eqz v5, :cond_32

    add-int/lit8 v2, v2, -0x1

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_35
    :goto_35
    if-ge v4, v1, :cond_43

    .line 510
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 511
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_43
    return v5
.end method

.method protected getDefaultMaxItemCount()I
    .registers 4

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    if-eqz v0, :cond_c

    .line 130
    sget v2, Lmiuix/appcompat/R$attr;->actionMenuItemLimit:I

    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    return v0

    :cond_c
    return v1
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 247
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 248
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 249
    :cond_c
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isConvertViewTypeAllowed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p2, 0x0

    .line 252
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 254
    :cond_17
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_20

    const/16 p1, 0x8

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    check-cast p3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 258
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 259
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_37
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 4

    .line 231
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    .line 232
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V

    .line 233
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_20

    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v0, :cond_20

    .line 236
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    :cond_20
    return-object p1
.end method

.method protected getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 9

    .line 415
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 416
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    return-object v0

    .line 418
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-nez v0, :cond_23

    .line 419
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 422
    :cond_23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-object v0
.end method

.method protected getOverflowMenuAnimationGravity(Landroid/view/View;)I
    .registers 2

    .line 0
    const/4 p1, -0x1

    return p1
.end method

.method protected getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 9

    .line 426
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_1a

    .line 427
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    sget v3, Lmiuix/appcompat/R$id;->more:I

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$string;->more:I

    .line 428
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 427
    invoke-static/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 430
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hideOverflowMenu(Z)Z
    .registers 5

    .line 439
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eqz v0, :cond_1c

    .line 440
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 441
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 442
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 p1, 0x1

    return p1

    .line 446
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_31

    .line 447
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 449
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 451
    :cond_2b
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    return v0

    :cond_31
    return v1
.end method

.method public hideSubMenus()Z
    .registers 2

    .line 472
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    if-eqz v0, :cond_9

    .line 473
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 93
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 98
    iget-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez p2, :cond_14

    .line 99
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    .line 103
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    if-nez p1, :cond_1e

    .line 104
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 107
    :cond_1e
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_30

    .line 108
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez p1, :cond_32

    .line 109
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_32

    .line 112
    :cond_30
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 116
    :cond_32
    :goto_32
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method protected isConvertViewTypeAllowed(Landroid/view/View;)Z
    .registers 2

    .line 242
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;

    return p1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 490
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 520
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 120
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_e

    .line 121
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getDefaultMaxItemCount()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 123
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    .line 124
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_16
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 532
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    .line 533
    iget p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez p1, :cond_17

    .line 534
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 536
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 537
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    :cond_17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 525
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;-><init>()V

    .line 526
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    .line 345
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    .line 350
    :goto_9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_18

    .line 351
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    .line 353
    :cond_18
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_27

    .line 355
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_27

    return v1

    .line 361
    :cond_27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 362
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mActionButtonPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ActionButtonSubMenu;

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 364
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setActionEditMode(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 160
    sget p1, Lmiuix/appcompat/R$attr;->actionModeOverflowButtonStyle:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenuAttrs:I

    :cond_6
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    if-eqz v0, :cond_13

    if-eq v0, p1, :cond_13

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 326
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    :cond_13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mBottomMenuCustomView:Landroid/view/View;

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_26

    .line 331
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->addCustomView(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 155
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .registers 4

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isMaxItemCountSet:Z

    .line 147
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 148
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMaxItems:I

    .line 149
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_10

    if-eq v0, p1, :cond_10

    .line 150
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->updateVisibleItemCountLimit()V

    :cond_10
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 3

    .line 136
    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 272
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method protected shouldShowPopupOverflow()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public showOverflowMenu()Z
    .registers 3

    .line 391
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 393
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    .line 394
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPostedOpenRunnable:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    .line 396
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 400
    invoke-super {p0, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 402
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return v1

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public updateBadgeOnItemViews()V
    .registers 3

    .line 223
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 225
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->updateBadgeDrawable()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 5

    .line 277
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 278
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-nez p1, :cond_8

    return-void

    .line 281
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_11

    .line 282
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 285
    :goto_12
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    .line 286
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    .line 288
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    goto :goto_30

    :cond_2d
    if-lez v0, :cond_30

    move v1, v2

    :cond_30
    :goto_30
    if-eqz v1, :cond_64

    .line 295
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez p1, :cond_3f

    .line 296
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_43

    :cond_3f
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 301
    :goto_43
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_77

    if-eqz p1, :cond_56

    .line 304
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    :cond_56
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 307
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateOverflowButtonLayoutParams(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77

    .line 309
    :cond_64
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-ne p1, v0, :cond_77

    .line 310
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    :cond_77
    :goto_77
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setOverflowReserved(Z)V

    .line 316
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 317
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_8f
    return-void
.end method
