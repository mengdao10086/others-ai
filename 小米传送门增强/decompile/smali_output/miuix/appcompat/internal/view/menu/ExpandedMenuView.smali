.class public final Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAnimations:I

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 60
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z
    .registers 4

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 41
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 55
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    return-void
.end method
