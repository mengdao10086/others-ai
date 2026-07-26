.class Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;
.super Landroid/widget/LinearLayout;
.source "OverflowMenuButton.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
.implements Lmiuix/animation/ViewHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;
    }
.end annotation


# instance fields
.field private final mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsHover:Z

.field private mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget-object v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 43
    sget p3, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_drawableTop:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 44
    sget v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    sget v2, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_contentDescription:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    sget v3, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_largeFontAdaptationEnabled:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2e

    move p1, v4

    goto :goto_2f

    :cond_2e
    move p1, v1

    .line 47
    :goto_2f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    .line 50
    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setLargeFontEnabled(Z)V

    .line 55
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 56
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setEnabled(Z)V

    return-void
.end method

.method private isVisible()Z
    .registers 3

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_16

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_16

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 84
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_14
    const/4 v0, 0x0

    goto :goto_1

    :cond_16
    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method public isHover()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onEnterHover()V
    .registers 2

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return-void
.end method

.method public onExitHover()V
    .registers 2

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 63
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 64
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMoveHover()V
    .registers 1

    .line 0
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 97
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 102
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    if-eqz v0, :cond_1a

    .line 103
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;->onOverflowMenuButtonClick()V

    :cond_1a
    return v1
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    return-void
.end method

.method public setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    return-void
.end method
