.class Lmiuix/appcompat/app/AlertController$AlertParams$2;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .registers 7

    .line 3310
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p6, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 3313
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3314
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object p3, p3, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_14

    .line 3315
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_14

    .line 3317
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_14
    const/4 p1, 0x0

    .line 3320
    invoke-static {p2, p1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 3321
    sget-object p1, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->CHOICE_MULTI:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lmiuix/appcompat/app/AlertController$AlertParams;->setAccessibilityDelegate(Landroid/view/View;Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V

    return-object p2
.end method
