.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field private final mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsCheckable:Z

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p3, Lmiuix/appcompat/R$styleable;->ActionMenuItemView:[I

    sget v0, Lmiuix/appcompat/R$attr;->actionButtonStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 43
    sget p3, Lmiuix/appcompat/R$styleable;->ActionMenuItemView_largeFontAdaptationEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1d

    move v1, v0

    .line 44
    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 46
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setLargeFontEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 83
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .registers 3

    .line 51
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 55
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setCheckable(Z)V

    .line 58
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setChecked(Z)V

    .line 59
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->setEnabled(Z)V

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 62
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public performClick()Z
    .registers 5

    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 128
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v3, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 129
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    return v1

    :cond_19
    return v2
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 98
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mIsCheckable:Z

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemView;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
