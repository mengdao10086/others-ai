.class Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 270
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 268
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 271
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 272
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 264
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .line 319
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getExpandedItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 321
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 324
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_28

    .line 326
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v0, -0x1

    .line 331
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 3

    .line 276
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    :goto_15
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1e

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 281
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 285
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    :goto_15
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1d

    if-lt p1, v1, :cond_1d

    add-int/lit8 p1, p1, 0x1

    .line 290
    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_16

    .line 301
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$300(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    # getter for: Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I
    invoke-static {v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->access$200(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 303
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addItemPressEffect(Landroid/view/View;)V

    .line 308
    :cond_16
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result p3

    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 310
    move-object p3, p2

    check-cast p3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 311
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_2d

    .line 312
    move-object v1, p2

    check-cast v1, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 314
    :cond_2d
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 336
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 337
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
