.class Lmiuix/appcompat/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 832
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 833
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    :cond_e
    if-eqz p2, :cond_2f

    .line 837
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_20

    .line 839
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 841
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eq v0, p2, :cond_2f

    .line 842
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_2f

    .line 844
    :cond_20
    instance-of v0, p1, Landroidx/appcompat/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_2f

    .line 845
    check-cast p1, Landroidx/appcompat/widget/ThemedSpinnerAdapter;

    .line 846
    invoke-interface {p1}, Landroidx/appcompat/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 847
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .line 921
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 923
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 855
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 892
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    .line 893
    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 860
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 865
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 870
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    if-nez p2, :cond_9

    .line 873
    invoke-static {p3}, Lmiuix/internal/util/AnimHelper;->addItemPressEffect(Landroid/view/View;)V

    .line 879
    :cond_9
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    instance-of v0, p2, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    if-eqz v0, :cond_15

    .line 881
    check-cast p2, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p2, p3, p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->setAccessibilityDelegate(Landroid/view/View;I)V

    goto :goto_1c

    .line 883
    :cond_15
    instance-of p1, p2, Landroid/widget/ArrayAdapter;

    if-eqz p1, :cond_1c

    .line 885
    invoke-virtual {p0, p3}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->setAccessibilityDelegate(Landroid/view/View;)V

    :cond_1c
    :goto_1c
    return-object p3
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 898
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 955
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 935
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 937
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 903
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 904
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    .line 959
    new-instance v0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropDownAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 910
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 911
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method
