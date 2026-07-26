.class public Lmiuix/appcompat/view/menu/HyperMenuAdapter;
.super Lmiuix/appcompat/view/menu/HyperBaseAdapter;
.source "HyperMenuAdapter.java"


# instance fields
.field private mGroupedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverflowOnly:Z

.field private mPrimaryCheckedMapFirstModified:Z

.field private mPrimaryItemCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryCheckedMapFirstModified:Z

.field private mSecondaryItemCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPreCheckedPrimaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPreCheckedSecondaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 5

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryCheckedMapFirstModified:Z

    .line 39
    iput-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryCheckedMapFirstModified:Z

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    .line 49
    iput-boolean p3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz p2, :cond_3c

    .line 52
    invoke-direct {p0, p2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_3c
    return-void
.end method

.method private assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 143
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 144
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 145
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2a

    .line 148
    const-string v3, "miuix:hyperMenu:groupId"

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 149
    const-string v6, "miuix:hyperMenu:itemForeignKey"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2b

    :cond_2a
    move v4, v5

    .line 152
    :goto_2b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3c

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_3c
    new-instance v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v7, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    if-eq v4, v5, :cond_49

    const/4 v2, 0x1

    .line 160
    iput-boolean v2, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 161
    iput v4, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    goto :goto_4d

    .line 164
    :cond_49
    iput-boolean v0, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 165
    iput v5, v7, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    .line 167
    :goto_4d
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5a
    return-void
.end method

.method private assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 84
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 85
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1c

    .line 88
    const-string v5, "miuix:hyperMenu:groupForeignKey"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1d

    :cond_1c
    move v3, v4

    :goto_1d
    if-ne v3, v4, :cond_20

    goto :goto_82

    .line 95
    :cond_20
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 97
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    move-result-object v3

    if-eqz v2, :cond_82

    if-eqz v3, :cond_82

    .line 99
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-direct {p0, v4, v0, v2}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    .line 104
    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    invoke-direct {v2, v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    const/4 v5, 0x1

    .line 105
    iput-boolean v5, v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    .line 106
    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    new-instance v2, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v5, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v2, v5, v4, v6}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    .line 110
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getOptionalIconsVisible()Z

    move-result v4

    invoke-virtual {v2, v4}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setOptionalIconsVisible(Z)V

    .line 111
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_86
    return-void
.end method

.method private buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 298
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 299
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 301
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_34

    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_34
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    .line 311
    new-instance v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v6, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 312
    iput-boolean v5, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    .line 313
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_62

    .line 317
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    instance-of v3, v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v3, :cond_62

    .line 318
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 319
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_63

    :cond_62
    const/4 v3, 0x0

    :goto_63
    if-eqz v3, :cond_95

    .line 323
    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v4, v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    const/4 v5, 0x1

    .line 324
    iput-boolean v5, v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    .line 325
    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    new-instance v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 328
    new-instance v4, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    iget-object v5, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-direct {v4, v5, v3, v6}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Ljava/util/Map;)V

    .line 329
    invoke-virtual {p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getOptionalIconsVisible()Z

    move-result v3

    invoke-virtual {v4, v3}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setOptionalIconsVisible(Z)V

    .line 330
    iget-object v3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_99
    return-void
.end method

.method private buildDefaultSubMenuData(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    goto/16 :goto_8e

    .line 340
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_8e

    .line 345
    :cond_1b
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_32

    .line 348
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    goto :goto_41

    .line 352
    :cond_32
    array-length v4, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_40

    .line 353
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    goto :goto_41

    :cond_40
    move v3, v2

    .line 357
    :goto_41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_84

    .line 358
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_59

    .line 361
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v2

    .line 363
    :cond_59
    new-instance v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    invoke-direct {v5, v4}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    if-eqz v4, :cond_7e

    .line 365
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 367
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 368
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_75

    :cond_73
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_75
    iput-object v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    .line 369
    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 371
    :cond_7e
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 373
    :cond_84
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_8e
    :goto_8e
    return-object v0
.end method

.method private buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 4

    if-eqz p1, :cond_40

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_f

    goto :goto_40

    .line 61
    :cond_f
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    :goto_29
    if-eqz p1, :cond_30

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleGroupData(Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 70
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->selectPrimaryMenu(Ljava/util/Map;)V

    if-eqz p1, :cond_3c

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->assembleSecondaryMenu(Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_3c
    const/4 p1, 0x1

    .line 77
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->removeInvalidatePrimaryItem(Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method private buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 7

    if-eqz p1, :cond_73

    .line 193
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    if-nez v1, :cond_f

    goto :goto_73

    .line 196
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 201
    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_35

    .line 204
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildDefaultSecondaryMenuData(Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_35
    const/4 p1, 0x0

    move v1, p1

    .line 207
    :goto_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 208
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 209
    iget-object v3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 211
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v3, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v3}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 214
    :cond_5f
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v2, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    .line 218
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->removeInvalidatePrimaryItem(Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method private findPrimaryItemByForeignKey(Ljava/util/List;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;I)",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2f

    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 177
    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 178
    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :cond_1c
    const/4 v3, -0x1

    if-eqz v2, :cond_26

    .line 182
    const-string v4, "miuix:hyperMenu:itemForeignKey"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    if-eq v2, v3, :cond_2c

    if-ne v2, p2, :cond_2c

    return-object v1

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    return-object v2
.end method

.method private handleDefaultCheckedStatus(Ljava/util/List;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p1, :cond_cf

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_cf

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_13

    const/4 v2, -0x1

    if-eq p3, v2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 255
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Boolean;

    goto :goto_25

    :cond_24
    move-object v4, v3

    :goto_25
    if-eqz v2, :cond_30

    if-nez v4, :cond_30

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Boolean;

    goto :goto_31

    :cond_30
    move v1, v0

    .line 262
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_c4

    .line 263
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 265
    instance-of v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v6, :cond_46

    .line 266
    invoke-virtual {v5}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v6

    goto :goto_47

    :cond_46
    move-object v6, v3

    :goto_47
    if-eqz v6, :cond_b3

    .line 268
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v7

    if-eqz v7, :cond_b3

    if-eqz p2, :cond_91

    .line 272
    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_64

    .line 273
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_68

    :cond_64
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    .line 274
    :goto_68
    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    check-cast v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 276
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_8e

    :cond_8c
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_8e
    iput-object v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_c0

    :cond_91
    if-eqz v2, :cond_c0

    if-eqz v1, :cond_9f

    .line 280
    invoke-virtual {v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v0

    .line 282
    :cond_9f
    check-cast v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 283
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_b0

    :cond_ae
    sget-object v6, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_b0
    iput-object v6, v5, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_c0

    :cond_b3
    if-eqz p2, :cond_c0

    .line 287
    iget-object v5, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    :goto_c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_31

    :cond_c4
    if-eqz v2, :cond_cf

    .line 292
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cf
    :goto_cf
    return-void
.end method

.method private removeInvalidatePrimaryItem(Z)V
    .registers 8

    .line 226
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    if-nez v0, :cond_9

    goto :goto_6e

    .line 229
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 231
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v3

    .line 233
    instance-of v4, v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    .line 234
    move-object v4, v2

    check-cast v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    iget-boolean v4, v4, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    goto :goto_30

    :cond_2f
    move v4, v5

    :goto_30
    if-eqz p1, :cond_34

    move v5, v4

    goto :goto_3d

    :cond_34
    if-eqz v3, :cond_3d

    .line 236
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v5, 0x1

    :cond_3d
    :goto_3d
    if-eqz v3, :cond_14

    if-eqz v5, :cond_14

    .line 237
    iget-object v4, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 238
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 241
    :cond_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 242
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_59

    .line 244
    :cond_6b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private selectPrimaryMenu(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;>;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 126
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-nez v2, :cond_8

    .line 129
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 131
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    new-instance v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    invoke-direct {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 135
    :cond_47
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->handleDefaultCheckedStatus(Ljava/util/List;ZI)V

    return-void
.end method


# virtual methods
.method public copyPrimaryCheckedData(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2c

    .line 491
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_2c

    .line 494
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 495
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 498
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    .line 500
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2c
    :goto_2c
    return-void
.end method

.method public copySecondaryCheckedData(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 506
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_32

    .line 509
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 511
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 513
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    .line 514
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Boolean;

    .line 515
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_32
    :goto_32
    return-void
.end method

.method public getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .registers 3

    .line 528
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 523
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 534
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSecondaryAdapterByItemId(J)Landroid/widget/BaseAdapter;
    .registers 4

    .line 538
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 546
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryMenuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public preCheckPrimaryItem(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 448
    :cond_3
    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mUserPreCheckedPrimaryMap:Ljava/util/Map;

    .line 450
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 452
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 454
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 456
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2d
    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryCheckedMapFirstModified:Z

    return-void
.end method

.method public preCheckSecondaryItem(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 468
    :cond_3
    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mUserPreCheckedSecondaryMap:Ljava/util/Map;

    .line 470
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 472
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 476
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2d
    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryCheckedMapFirstModified:Z

    return-void
.end method

.method public resumePrimaryItemClickStatus(II)V
    .registers 12

    .line 379
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    if-eqz v0, :cond_c9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_c9

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 384
    :goto_e
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_29

    .line 385
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 386
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_26

    goto :goto_2a

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    move-object v2, v3

    :goto_2a
    if-nez v2, :cond_2d

    return-void

    .line 395
    :cond_2d
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-nez v1, :cond_34

    return-void

    .line 399
    :cond_34
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 402
    const-string v4, "miuix:hyperMenu:groupId"

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_49

    .line 404
    :cond_45
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 406
    :goto_49
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mGroupedMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, -0x1

    move v4, v0

    move v5, v2

    .line 409
    :goto_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9e

    .line 410
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 411
    instance-of v7, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz v7, :cond_6b

    .line 414
    check-cast v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    goto :goto_6c

    :cond_6b
    move-object v6, v3

    :goto_6c
    if-eqz v6, :cond_7a

    .line 418
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v7

    .line 419
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v8

    if-ne v8, p1, :cond_7b

    move v5, v4

    goto :goto_7b

    :cond_7a
    move-object v7, v3

    :cond_7b
    :goto_7b
    if-eqz v7, :cond_9b

    .line 422
    invoke-virtual {v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v8

    if-eqz v8, :cond_9b

    iget-boolean v8, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    if-nez v8, :cond_9b

    .line 425
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result v8

    if-ne v8, p1, :cond_90

    .line 426
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    goto :goto_92

    :cond_90
    sget-object v8, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NOT_CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    :goto_92
    iput-object v8, v6, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    .line 427
    invoke-virtual {v6}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v6

    invoke-virtual {v7, v6}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_9e
    if-eq v5, v2, :cond_c6

    sub-int p1, p2, v5

    .line 433
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v5

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    move v2, p1

    :goto_ab
    if-lt v2, p1, :cond_c6

    if-gt v2, p2, :cond_c6

    .line 436
    iget-object v3, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int v6, p1, v5

    if-ne v2, v6, :cond_bb

    move v6, v1

    goto :goto_bc

    :cond_bb
    move v6, v0

    :goto_bc
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 439
    :cond_c6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 5

    .line 565
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mUserPreCheckedPrimaryMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryItemCheckedMap:Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 567
    iget-boolean v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryCheckedMapFirstModified:Z

    if-nez v1, :cond_f

    .line 568
    invoke-virtual {p0, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    .line 571
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mUserPreCheckedSecondaryMap:Ljava/util/Map;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryItemCheckedMap:Ljava/util/Map;

    if-eqz v1, :cond_1e

    .line 573
    iget-boolean v1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryCheckedMapFirstModified:Z

    if-nez v1, :cond_1e

    .line 574
    invoke-virtual {p0, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    :cond_1e
    if-eqz p2, :cond_24

    .line 578
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildGroupedMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    goto :goto_27

    .line 580
    :cond_24
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->buildMenuItems(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :goto_27
    const/4 p1, 0x0

    .line 583
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mPrimaryCheckedMapFirstModified:Z

    .line 584
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->mSecondaryCheckedMapFirstModified:Z

    .line 585
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
