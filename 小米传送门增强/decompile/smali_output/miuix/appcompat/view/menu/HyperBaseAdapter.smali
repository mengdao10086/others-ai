.class public Lmiuix/appcompat/view/menu/HyperBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "HyperBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;,
        Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuDividerHolder;
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mMenuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    return-void
.end method

.method private handleDivider(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-eqz p1, :cond_e

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuDividerHolder;

    if-eq v0, v1, :cond_20

    .line 212
    :cond_e
    new-instance p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuDividerHolder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuDividerHolder;-><init>(Lmiuix/appcompat/view/menu/HyperBaseAdapter;)V

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p1, p2

    :cond_20
    return-object p1
.end method

.method private handleMenuItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;

    if-eq v1, v2, :cond_10

    goto :goto_17

    .line 126
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;

    goto :goto_4d

    .line 114
    :cond_17
    :goto_17
    new-instance p2, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;

    invoke-direct {p2, p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;-><init>(Lmiuix/appcompat/view/menu/HyperBaseAdapter;)V

    .line 115
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_hyper_popup_menu_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x1020014

    .line 116
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    iput-object v1, p2, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->titleView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    const v1, 0x1020006

    .line 117
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->iconView:Landroid/widget/ImageView;

    .line 118
    sget v1, Lmiuix/appcompat/R$id;->arrow:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->arrow:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    invoke-static {p3}, Lmiuix/internal/util/AnimHelper;->addItemPressEffect(Landroid/view/View;)V

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 128
    :goto_4d
    iget-object v1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    .line 129
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->titleView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->titleView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 131
    iget-boolean v2, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mOptionalIconsVisible:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_8e

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 132
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_93

    .line 135
    :cond_8e
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :goto_93
    iget-boolean v2, v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    iget-boolean v4, v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    or-int/2addr v2, v4

    if-eqz v2, :cond_9b

    goto :goto_9c

    :cond_9b
    move v0, v3

    .line 138
    :goto_9c
    iget-object v2, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p1, v0}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 141
    sget-object p1, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NON_SUPPORT:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    iget-object v0, v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 142
    invoke-direct {p0, p2, v1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setAccessibilityDelegateNonCheckable(Landroid/view/View;Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;)V

    goto :goto_bd

    .line 144
    :cond_b8
    iget-object p1, p3, Lmiuix/appcompat/view/menu/HyperBaseAdapter$MenuItemViewHolder;->titleView:Lmiuix/androidbasewidget/widget/CheckedTextView;

    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setAccessibilityDelegate(Landroid/view/View;Lmiuix/androidbasewidget/widget/CheckedTextView;)V

    :goto_bd
    return-object p2
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Lmiuix/androidbasewidget/widget/CheckedTextView;)V
    .registers 4

    .line 150
    new-instance v0, Lmiuix/appcompat/view/menu/HyperBaseAdapter$1;

    invoke-direct {v0, p0, p2}, Lmiuix/appcompat/view/menu/HyperBaseAdapter$1;-><init>(Lmiuix/appcompat/view/menu/HyperBaseAdapter;Lmiuix/androidbasewidget/widget/CheckedTextView;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 167
    new-instance p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/view/menu/HyperBaseAdapter$2;-><init>(Lmiuix/appcompat/view/menu/HyperBaseAdapter;)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setAccessibilityDelegateNonCheckable(Landroid/view/View;Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;)V
    .registers 4

    .line 179
    new-instance v0, Lmiuix/appcompat/view/menu/HyperBaseAdapter$3;

    invoke-direct {v0, p0, p2}, Lmiuix/appcompat/view/menu/HyperBaseAdapter$3;-><init>(Lmiuix/appcompat/view/menu/HyperBaseAdapter;Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 72
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
    .registers 3

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    return-object p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 97
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->getItemId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    .line 83
    instance-of p1, p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuDivider;

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getOptionalIconsVisible()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mOptionalIconsVisible:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 102
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->handleMenuItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x1

    if-ne v0, p1, :cond_13

    .line 106
    invoke-direct {p0, p2, p3}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->handleDivider(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 221
    invoke-virtual {p0, p1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setOptionalIconsVisible(Z)V
    .registers 2

    .line 231
    iput-boolean p1, p0, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->mOptionalIconsVisible:Z

    return-void
.end method
