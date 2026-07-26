.class public Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;,
        Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
    }
.end annotation


# static fields
.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final menuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 72
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 219
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 167
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 169
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 171
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 173
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1124
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Ljava/util/Comparator;

    .line 220
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 230
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 232
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    return-void
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    .line 268
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 272
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 273
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 274
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v2, :cond_2c

    .line 276
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 278
    :cond_2c
    invoke-interface {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_12

    .line 281
    :cond_30
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 332
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 334
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_43

    .line 338
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 339
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v2, :cond_31

    .line 341
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 343
    :cond_31
    invoke-interface {v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    if-lez v1, :cond_17

    .line 345
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    if-eqz v1, :cond_17

    .line 347
    invoke-interface {v2, v1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_17

    :cond_43
    :goto_43
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 307
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 311
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 313
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 314
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v3, :cond_2e

    .line 316
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 318
    :cond_2e
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    move-result v2

    if-lez v2, :cond_14

    .line 320
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 322
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    .line 328
    :cond_3e
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method private dispatchSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuPresenter;)Z
    .registers 6

    .line 286
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-eqz p2, :cond_10

    .line 292
    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    move-result v1

    .line 295
    :cond_10
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 296
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v2, :cond_30

    .line 298
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_30
    if-nez v1, :cond_16

    .line 300
    invoke-interface {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    move-result v0

    move v1, v0

    goto :goto_16

    :cond_38
    return v1
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 837
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 838
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 839
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_17

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static getOrdering(I)I
    .registers 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_16

    .line 772
    sget-object v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 776
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 773
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeItemAtInt(IZ)V
    .registers 4

    if-ltz p1, :cond_16

    .line 575
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    .line 579
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_16

    const/4 p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_16
    :goto_16
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1215
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_e

    .line 1218
    iput-object p5, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1221
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1222
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    :cond_e
    if-lez p1, :cond_17

    .line 1225
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1b

    :cond_17
    if-eqz p2, :cond_1b

    .line 1227
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    :cond_1b
    :goto_1b
    if-lez p3, :cond_24

    .line 1231
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    :cond_24
    if-eqz p4, :cond_28

    .line 1233
    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1237
    :cond_28
    :goto_28
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    :goto_2a
    const/4 p1, 0x0

    .line 1241
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 4

    if-eqz p1, :cond_18

    .line 803
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 804
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v1, Lmiuix/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 805
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 477
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 487
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 482
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;
    .registers 4

    .line 457
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v0

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v0

    .line 459
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_f

    .line 461
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 464
    :cond_f
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 517
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_12

    .line 520
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1a

    .line 523
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeGroup(I)V

    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_5e

    .line 527
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 528
    new-instance v3, Landroid/content/Intent;

    .line 529
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2a

    move-object v4, p6

    goto :goto_2c

    :cond_2a
    aget-object v4, p5, v4

    :goto_2c
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 530
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 534
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 535
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_5b

    .line 536
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_5b

    .line 537
    aput-object v3, p8, p7

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5e
    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 15

    .line 435
    invoke-static {p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v8

    .line 437
    new-instance v9, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v8

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 440
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_19

    .line 442
    invoke-virtual {v9, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 445
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {p1, v8}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 446
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object v9
.end method

.method public addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .registers 4

    .line 247
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 497
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 511
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 502
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 503
    new-instance p2, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 504
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public changeMenuMode()V
    .registers 2

    .line 831
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_7

    .line 832
    invoke-interface {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 605
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_7

    .line 606
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 608
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 610
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearAll()V
    .registers 3

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 596
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 597
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearHeader()V

    const/4 v1, 0x0

    .line 598
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 599
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 600
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .registers 2

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1207
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1208
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    .line 1210
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 1033
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    return-void
.end method

.method final closeInternal(Z)V
    .registers 5

    .line 1015
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1019
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1020
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1021
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v2, :cond_28

    .line 1023
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1025
    :cond_28
    invoke-interface {v2, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    .line 1028
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    return-void
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1373
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_e

    goto :goto_3f

    .line 1379
    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1380
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1381
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v3, :cond_31

    .line 1383
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1384
    :cond_31
    invoke-interface {v3, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1388
    :cond_37
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_3f

    const/4 p1, 0x0

    .line 1391
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :cond_3f
    :goto_3f
    return v1
.end method

.method dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 824
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1349
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1355
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1356
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1357
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v3, :cond_2d

    .line 1359
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1360
    :cond_2d
    invoke-interface {v3, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1364
    :cond_33
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_3a

    .line 1367
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :cond_3a
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .registers 5

    .line 720
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    if-ge p2, v0, :cond_1b

    .line 727
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 729
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_18

    return p2

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 685
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 687
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 688
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    return-object v2

    .line 690
    :cond_16
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 691
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public findItemIndex(I)I
    .registers 5

    .line 703
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 706
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 707
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 12

    .line 916
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 918
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 920
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return-object v2

    .line 924
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 925
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 927
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 930
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    .line 932
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object p1

    .line 935
    :cond_2b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p2

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p2, :cond_46

    .line 939
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_4a

    .line 940
    :cond_46
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    .line 941
    :goto_4a
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v7, v5

    if-ne v6, v8, :cond_54

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_67

    :cond_54
    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_5d

    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_67

    :cond_5d
    if-eqz p2, :cond_33

    const/16 v7, 0x8

    if-ne v6, v7, :cond_33

    const/16 v6, 0x43

    if-ne p1, v6, :cond_33

    :cond_67
    return-object v4

    :cond_68
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 873
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 874
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 876
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    return-void

    .line 883
    :cond_18
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 884
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 885
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 886
    invoke-virtual {v6, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_39
    if-eqz v0, :cond_40

    .line 888
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_44

    .line 889
    :cond_40
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    :goto_44
    and-int/lit8 v7, v1, 0x5

    if-nez v7, :cond_1e

    if-eqz v6, :cond_1e

    .line 890
    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x0

    aget-char v8, v7, v8

    if-eq v6, v8, :cond_5e

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_5e

    if-eqz v0, :cond_1e

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1e

    if-ne p2, v4, :cond_1e

    .line 896
    :cond_5e
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 897
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_68
    return-void
.end method

.method public flagActionItems()V
    .registers 6

    .line 1161
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v0, :cond_5

    return-void

    .line 1167
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1168
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-nez v4, :cond_27

    .line 1170
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1172
    :cond_27
    invoke-interface {v4}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_d

    .line 1176
    :cond_2d
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1177
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_5f

    .line 1179
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1181
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1182
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1184
    :cond_59
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1190
    :cond_5f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1192
    :cond_68
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1197
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .line 420
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
    .registers 2

    .line 428
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 820
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1397
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1309
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1305
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1313
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 744
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1202
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .line 1341
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 816
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1104
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_7

    .line 1105
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1109
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1111
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1112
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1113
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1116
    :cond_2a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 1118
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    const/4 v0, 0x1

    .line 1119
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1121
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 5

    .line 671
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 674
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 675
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return v1
.end method

.method isQwertyMode()Z
    .registers 2

    .line 783
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 749
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 812
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    const/4 p1, 0x1

    .line 1099
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1100
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method onItemVisibleChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    const/4 p1, 0x1

    .line 1088
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1089
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method protected onItemsChanged(Z)V
    .registers 4

    .line 1044
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    if-eqz p1, :cond_b

    .line 1046
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1047
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1050
    :cond_b
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_11

    .line 1052
    :cond_f
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :goto_11
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 956
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 960
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/internal/view/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/internal/view/menu/MenuPresenter;I)Z
    .registers 10

    .line 964
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 966
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_71

    .line 970
    :cond_c
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 972
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 973
    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v0

    .line 974
    :goto_20
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 975
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_70

    .line 977
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    goto :goto_70

    .line 979
    :cond_31
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_42

    if-eqz v4, :cond_3a

    goto :goto_42

    :cond_3a
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_70

    .line 999
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    goto :goto_70

    :cond_42
    :goto_42
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_49

    .line 982
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 985
    :cond_49
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_5b

    .line 986
    new-instance p3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    .line 989
    :cond_5b
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_66

    .line 991
    invoke-virtual {v2, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 993
    :cond_66
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuPresenter;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_70

    .line 995
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    :cond_70
    :goto_70
    return v1

    :cond_71
    :goto_71
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 849
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 854
    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    .line 858
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    :cond_14
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 551
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    if-ltz v0, :cond_2a

    .line 554
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_26

    .line 556
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 558
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v4

    goto :goto_f

    :cond_26
    const/4 p1, 0x1

    .line 562
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2a
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    .line 546
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    const/4 v0, 0x1

    .line 587
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .registers 5

    .line 259
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 260
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_6

    .line 262
    :cond_1c
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 395
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_38

    .line 399
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 400
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 401
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    .line 402
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 404
    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 405
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 406
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 410
    :cond_38
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_49

    .line 412
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_49
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 359
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 365
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_44

    .line 367
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 368
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    if-nez v1, :cond_20

    .line 371
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 373
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 374
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 375
    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 379
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 380
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    if-eqz v1, :cond_4d

    .line 385
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4d
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 355
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1333
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setDefaultShowAsAction(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 2

    .line 236
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 6

    .line 614
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 616
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 617
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 618
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_a

    .line 621
    :cond_23
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_a

    :cond_2a
    if-ne v2, p1, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 626
    :goto_2f
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_a

    :cond_33
    return-void
.end method

.method public setForceShowOptionalIcon(Z)V
    .registers 2

    .line 1345
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 7

    .line 633
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 634
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 635
    invoke-virtual {v1, p3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 636
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 6

    .line 662
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 663
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 664
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8

    .line 647
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 648
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_7

    .line 649
    invoke-virtual {v2, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    goto :goto_7

    :cond_22
    if-eqz v1, :cond_27

    .line 656
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_27
    return-void
.end method

.method protected setHeaderIconInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    .line 1288
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1276
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 1264
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1252
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1300
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setPreventDispatchingItemsChanged(Z)V
    .registers 2

    .line 1078
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 754
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    const/4 p1, 0x0

    .line 756
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 794
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 798
    :cond_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    const/4 p1, 0x0

    .line 799
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 739
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    const/4 v0, 0x0

    .line 1069
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1071
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_d

    .line 1072
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x1

    .line 1073
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1062
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 1063
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    .line 1064
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :cond_a
    return-void
.end method

.method public updateVisibleItemCountLimit()V
    .registers 2

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method
