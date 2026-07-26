.class Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionSheetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ActionSheetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionSheetListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

.field private final mTypeColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Ljava/lang/CharSequence;",
            "[",
            "Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;",
            "Ljava/util/Map<",
            "Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1045
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1046
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mContext:Landroid/content/Context;

    .line 1047
    iput-object p5, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    .line 1048
    iput-object p6, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mTypeColorMap:Ljava/util/Map;

    return-void
.end method

.method private adjustTypedItemColor(Landroid/widget/TextView;I)V
    .registers 5

    .line 1076
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mTypeColorMap:Ljava/util/Map;

    if-nez v1, :cond_b

    goto :goto_26

    .line 1079
    :cond_b
    aget-object p2, v0, p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_26

    .line 1081
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1063
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x1020014

    .line 1064
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1065
    invoke-direct {p0, v0, p1}, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->adjustTypedItemColor(Landroid/widget/TextView;I)V

    if-nez p2, :cond_15

    .line 1067
    invoke-static {p3}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_15
    return-object p3
.end method

.method public hasStableIds()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setProvider(Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V
    .registers 2

    .line 0
    return-void
.end method
