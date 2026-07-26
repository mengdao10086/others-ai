.class public Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter$HyperSplitPopupOverflowMenu;
.super Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;
.source "HyperSplitActionMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HyperSplitPopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V
    .registers 13

    .line 83
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter$HyperSplitPopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 84
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    .line 85
    sget p3, Lmiuix/appcompat/R$attr;->overflowMenuMaxHeight:I

    invoke-static {p2, p3}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p3

    if-eqz p3, :cond_36

    .line 87
    iget p5, p3, Landroid/util/TypedValue;->type:I

    const/4 p6, 0x5

    if-ne p5, p6, :cond_36

    .line 88
    iget p5, p3, Landroid/util/TypedValue;->resourceId:I

    if-lez p5, :cond_27

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_37

    .line 91
    :cond_27
    iget p3, p3, Landroid/util/TypedValue;->data:I

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 91
    invoke-static {p3, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    :goto_37
    if-lez p2, :cond_3c

    .line 96
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->setPopupMaxHeight(I)V

    .line 98
    :cond_3c
    iget-object p2, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 99
    invoke-virtual {p1, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuAnimationGravity(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4b

    .line 101
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->setAnimationGravity(I)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    .line 119
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->dismiss(Z)V

    .line 120
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter$HyperSplitPopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_d
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 107
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->onDismiss()V

    .line 108
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter$HyperSplitPopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    # getter for: Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;->access$000(Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter$HyperSplitPopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowMenu:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 0
    return-void
.end method
