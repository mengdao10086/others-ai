.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;
.super Ljava/lang/Object;
.source "ActionMenuItemViewChildren.java"


# instance fields
.field private mDensityDpi:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLargerFontEnabled:Z

.field private mParent:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    .line 37
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 38
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_child_layout:I

    invoke-static {v1, v2, p1}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v2, Lmiuix/appcompat/R$id;->action_menu_item_child_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 42
    sget v2, Lmiuix/appcompat/R$id;->action_menu_item_child_text:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_37

    .line 44
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 46
    :cond_37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    .line 48
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren$1;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 63
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 64
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    if-eq p1, v0, :cond_23

    .line 65
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    .line 66
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41e00000    # 28.0f

    .line 67
    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 68
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setLargeFontEnabled(Z)V

    :cond_23
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 109
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 107
    :cond_f
    :goto_f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_d

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public setLargeFontEnabled(Z)V
    .registers 4

    .line 74
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 76
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_14

    .line 78
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_14
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
