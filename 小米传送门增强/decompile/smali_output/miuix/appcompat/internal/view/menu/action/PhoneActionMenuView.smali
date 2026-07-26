.class public Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;,
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mActionCount:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBackgroundView:Landroid/view/View;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private final mDeviceType:I

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

.field private mMaxActionButtonWidth:I

.field private mMenuItemGap:I

.field private mMenuItemGapForBigWide:I

.field private mMenuItemGapForCommon:I

.field private mMenuItemGapForNormalWide:I

.field private mMenuItemGapForSmallWide:I

.field private mMenuItemGapForTinyWide:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget v0, Lmiuix/appcompat/R$attr;->expandBackground:I

    sget v1, Lmiuix/appcompat/R$attr;->splitActionBarOverlayHeight:I

    const v2, 0x10100d4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 96
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 81
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 82
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 83
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 84
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 85
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    .line 86
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 89
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v1, 0x0

    .line 98
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 101
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    .line 104
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 105
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 108
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 109
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 113
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    .line 115
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .registers 2

    .line 34
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method private extractBackground()V
    .registers 3

    .line 375
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 379
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_14
    if-nez v0, :cond_1c

    .line 381
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 385
    :cond_1c
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 4

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 242
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/lit8 v0, v0, -0x1

    .line 245
    :cond_f
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_19

    add-int/lit8 v0, v0, -0x1

    :cond_19
    return v0
.end method

.method private getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
    .registers 3

    .line 222
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_c

    .line 223
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 225
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 3

    .line 133
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private updateActionButtonValues(Landroid/content/Context;)V
    .registers 4

    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    .line 583
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_tiny_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_small_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_normal_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    .line 587
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap_big_wide:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    :cond_4d
    return-void
.end method

.method private updateItemGapAdaptByCurrentWidth(Landroid/content/Context;I)V
    .registers 5

    .line 592
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mDeviceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 593
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    return-void

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x2bc

    const/16 v0, 0x2e4

    if-lt p1, p2, :cond_2a

    if-ge p1, v0, :cond_2a

    .line 601
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForSmallWide:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    goto :goto_40

    :cond_2a
    const/16 p2, 0x3e8

    if-lt p1, v0, :cond_35

    if-ge p1, p2, :cond_35

    .line 603
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForNormalWide:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    goto :goto_40

    :cond_35
    if-lt p1, p2, :cond_3c

    .line 605
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForBigWide:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    goto :goto_40

    .line 607
    :cond_3c
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForTinyWide:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    :goto_40
    return-void

    .line 611
    :cond_41
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGapForCommon:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 4

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1f

    .line 144
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_17

    .line 145
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1f

    .line 147
    :cond_17
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .registers 7

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 402
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-nez p2, :cond_15

    if-eq v0, v2, :cond_12

    return v0

    :cond_12
    if-eq v1, v2, :cond_1d

    return v1

    :cond_15
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1d

    if-eq v0, v2, :cond_1d

    if-eq v1, v2, :cond_1d

    return v1

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p1, :cond_35

    if-eq v2, v0, :cond_32

    if-ne v2, v1, :cond_25

    goto :goto_32

    :cond_25
    if-ge v2, v0, :cond_2a

    add-int/lit8 v3, v2, 0x1

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    if-ge v2, v1, :cond_2f

    add-int/lit8 v3, v3, 0x1

    :cond_2f
    if-ne v3, p2, :cond_32

    return v2

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 433
    :cond_35
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getCollapsedHeight()I
    .registers 3

    .line 230
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 233
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getCurrentMaterial()Lmiuix/core/util/MaterialConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getCurrentMaterial()Lmiuix/core/util/MaterialConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaterial()Lmiuix/core/util/MaterialDayNightConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getMaterial()Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasBackgroundView()Z
    .registers 5

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_12

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_13

    :cond_12
    move v0, v3

    :cond_13
    return v0
.end method

.method public hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 6

    .line 207
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 208
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_22

    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_b

    goto :goto_22

    .line 211
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v2

    .line 212
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v3, :cond_19

    .line 213
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 214
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->hide(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    goto :goto_20

    .line 215
    :cond_19
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, p1, :cond_20

    .line 216
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_20
    :goto_20
    const/4 p1, 0x1

    return p1

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method public isOverflowMenuShowing()Z
    .registers 3

    .line 203
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_d

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 120
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateActionButtonValues(Landroid/content/Context;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 327
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_1b

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 329
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 330
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    goto :goto_1c

    :cond_1b
    move p1, p2

    .line 334
    :goto_1c
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 336
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    .line 337
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    sub-int/2addr p4, v0

    shr-int/lit8 p4, p4, 0x1

    :goto_2f
    if-ge p2, p3, :cond_55

    .line 340
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 341
    invoke-direct {p0, v6}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_52

    .line 344
    :cond_3c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p4, v0

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move v3, p1

    move v5, p5

    .line 345
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 346
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    add-int/2addr v0, v1

    add-int/2addr p4, v0

    :goto_52
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    :cond_55
    return-void
.end method

.method protected onMeasure(II)V
    .registers 18

    move-object v6, p0

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 260
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getActionMenuItemCount()I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v8, 0x0

    if-eqz v7, :cond_dd

    if-nez v0, :cond_12

    goto/16 :goto_dd

    .line 267
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 268
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    div-int v0, v9, v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 269
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateItemGapAdaptByCurrentWidth(Landroid/content/Context;I)V

    .line 271
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v11, v8

    move v12, v11

    move v13, v12

    :goto_34
    if-ge v11, v7, :cond_61

    .line 274
    invoke-virtual {p0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 275
    invoke-direct {p0, v14}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_5e

    :cond_41
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v14

    move v2, v10

    move/from16 v4, p2

    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 279
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v12, v0

    .line 281
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 284
    :cond_61
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    add-int/lit8 v2, v1, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v12

    if-le v0, v9, :cond_6d

    .line 285
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 287
    :cond_6d
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 289
    iput v12, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 290
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 292
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_c0

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 294
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 295
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 297
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 298
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 299
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v13, v0

    .line 302
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_b6

    .line 303
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_c0

    .line 304
    :cond_b6
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_c0

    .line 305
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    int-to-float v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 309
    :cond_c0
    :goto_c0
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_c9

    .line 310
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v0

    .line 312
    :cond_c9
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_d4

    .line 313
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_d6

    :cond_d4
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 312
    :goto_d6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {p0, v9, v13}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    .line 262
    :cond_dd
    :goto_dd
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 263
    invoke-virtual {p0, v8, v8}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    .line 355
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_e
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1b

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 127
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    :cond_9
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialConfig;)V

    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V

    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_13

    .line 153
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    if-eq v0, p1, :cond_53

    .line 156
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 160
    :cond_25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v0, :cond_33

    .line 161
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 163
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    :cond_33
    if-eqz p1, :cond_4c

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-nez v0, :cond_42

    .line 169
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 171
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    :cond_4c
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    :cond_53
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setValue(F)V
    .registers 4

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 392
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 6

    .line 180
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 181
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_39

    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v2, :cond_39

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v2, :cond_f

    goto :goto_39

    .line 184
    :cond_f
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v2

    .line 187
    sget-object v3, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v3, :cond_24

    .line 188
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 189
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->show(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    goto :goto_2b

    .line 190
    :cond_24
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, p1, :cond_2b

    .line 191
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 194
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    const/4 p1, 0x1

    .line 196
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return p1

    :cond_39
    :goto_39
    const/4 p1, 0x0

    return p1
.end method
