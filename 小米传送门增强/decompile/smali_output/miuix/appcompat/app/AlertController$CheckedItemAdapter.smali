.class Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemsProvider:Lmiuix/appcompat/app/AccessibilityDelegateProvider;

.field private mType:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .registers 5

    .line 3473
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 3469
    sget-object p1, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->DEFAULT:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;->mType:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .registers 4

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 3497
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_9

    .line 3499
    invoke-static {p1}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 3501
    :cond_9
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;->mType:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lmiuix/appcompat/app/AlertController$AlertParams;->setAccessibilityDelegate(Landroid/view/View;Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V

    return-object p1
.end method

.method public hasStableIds()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setItemType(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)V
    .registers 2

    .line 3481
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;->mType:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    return-void
.end method

.method public setItemsProvider(Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V
    .registers 2

    .line 0
    return-void
.end method
