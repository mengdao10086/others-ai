.class public Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "ResponsiveActionMenuView.java"


# instance fields
.field private mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mApplyBlur:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private final mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomMenuItemHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewClipBounds:Landroid/graphics/Rect;

.field private mDensityDpi:I

.field private mHasOnlyCustomView:Z

.field private mIsCustomViewHidden:Z

.field private mIsEmpty:Z

.field mIsFloatingWindow:Z

.field private mIsHidden:Z

.field private mItemNormalPaddingTop:I

.field private mItemSmallPaddingTop:I

.field private mLargeFontAdaptionEnabled:Z

.field private mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

.field private mOffSet:I

.field private mOriginViewParentClipState:[Z

.field private mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSuspendEnabled:Z

.field private mSuspendItemCenterExtraUp:I

.field private mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mSuspendMenuBackgroundRadius:I

.field private mSuspendMenuMiShadowColor:I

.field private mSuspendMenuMiShadowRadius:F

.field private mSuspendMenuMiShadowRadiusOffsetX:F

.field private mSuspendMenuMiShadowRadiusOffsetY:F

.field private mSuspendMenuMinMargin:I

.field private mSuspendMenuMinWidth:I

.field private mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static synthetic $r8$lambda$wbzXpcJN4Tha3dpkgzMKIrktjX4(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 125
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 64
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 65
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 89
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 93
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 95
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    .line 98
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 99
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 100
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    .line 103
    new-instance v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    .line 110
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_130

    const/4 v5, -0x2

    .line 111
    invoke-virtual {v2, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-instance v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;

    invoke-direct {v4, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v6, v0

    .line 112
    invoke-virtual {v2, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 126
    sget v2, Lmiuix/appcompat/R$attr;->largeFontAdaptationEnabled:I

    invoke-static {p1, v2, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_50

    move v2, v5

    goto :goto_51

    :cond_50
    move v2, v0

    :goto_51
    iput-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v4, 0x41800000    # 16.0f

    if-eqz v2, :cond_5c

    .line 127
    invoke-static {p1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_62

    :cond_5c
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    :goto_62
    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 129
    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 130
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 131
    iget-boolean v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v7, :cond_79

    move v6, v2

    :cond_79
    iput v6, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    .line 132
    invoke-static {p1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    const/high16 v2, 0x43440000    # 196.0f

    .line 133
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    const/high16 v2, 0x41000000    # 8.0f

    .line 134
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    const/high16 v2, 0x40a00000    # 5.0f

    .line 135
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 136
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lmiuix/appcompat/R$color;->miuix_appcompat_suspend_menu_mi_shadow:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 143
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 145
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 146
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 149
    invoke-static {p0, v5}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 150
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_129

    .line 151
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p2

    if-le p2, v3, :cond_112

    sget-object p2, Lmiuix/theme/token/hypermaterial/Mask;->Pured_Regular:Lmiuix/theme/token/MaterialDayNightToken;

    :goto_10d
    invoke-static {p2}, Lmiuix/core/util/MaterialDayNightConfig;->create(Landroid/os/Parcelable;)Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object p2

    goto :goto_115

    :cond_112
    sget-object p2, Lmiuix/theme/token/hypermaterial/Blur;->ExtraHeavy:Lmiuix/theme/token/MaterialDayNightToken;

    goto :goto_10d

    :goto_115
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    .line 152
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v5, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    goto :goto_12b

    .line 205
    :cond_129
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    .line 207
    :goto_12b
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void

    nop

    :array_130
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I
    .registers 1

    .line 51
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 51
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 51
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Lmiuix/core/util/MaterialDayNightConfig;
    .registers 1

    .line 51
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    return p1
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method private getActionMenuItemCount()I
    .registers 4

    .line 533
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 534
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/lit8 v0, v0, -0x1

    :cond_f
    return v0
.end method

.method private getChildrenHeight(Landroid/widget/LinearLayout;)I
    .registers 6

    .line 694
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_14

    .line 697
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method private getCustomViewClipBounds()Landroid/graphics/Rect;
    .registers 5

    .line 717
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 720
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getMaxChildrenTotalHeight()I
    .registers 6

    .line 676
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_23

    .line 678
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 679
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_20

    .line 682
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_20

    .line 683
    check-cast v3, Landroid/widget/LinearLayout;

    .line 684
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getChildrenHeight(Landroid/widget/LinearLayout;)I

    move-result v3

    if-ge v2, v3, :cond_20

    move v2, v3

    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return v2
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .registers 3

    .line 671
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private keepHidden()V
    .registers 2

    .line 639
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    if-eqz v0, :cond_c

    .line 640
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setTranslationY(F)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 252
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_17

    .line 253
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_17
    return-void
.end method

.method private measureActionMenuItem(IIZ)V
    .registers 10

    .line 645
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_48

    .line 647
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 648
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_45

    .line 651
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1e

    .line 652
    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    .line 653
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1e
    if-eqz p3, :cond_24

    .line 656
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_42

    .line 659
    :cond_24
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 660
    :cond_3a
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    goto :goto_3f

    .line 662
    :cond_3d
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 664
    :goto_3f
    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 666
    :goto_42
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_48
    return-void
.end method

.method private refreshBackground()V
    .registers 2

    .line 343
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 344
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method private refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V
    .registers 7

    .line 211
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 216
    :try_start_6
    invoke-static {v0}, Lmiuix/core/util/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    .line 217
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    sget-object v2, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView:[I

    sget v3, Lmiuix/appcompat/R$attr;->responsiveActionMenuViewStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 218
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    if-eqz p1, :cond_24

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_floatingWindowBottomMenuBackground:I

    goto :goto_26

    :catchall_22
    move-exception p1

    goto :goto_4c

    .line 219
    :cond_24
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_bottomMenuBackground:I

    .line 218
    :goto_26
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 220
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    if-eqz p1, :cond_33

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_floatingWindowSuspendMenuBackground:I

    goto :goto_35

    .line 221
    :cond_33
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_suspendMenuBackground:I

    .line 220
    :goto_35
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_22

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 228
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    :cond_4b
    return-void

    :goto_4c
    if-eqz v1, :cond_51

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    :cond_51
    throw p1
.end method

.method private resetActionMenuItemPaddingTop(I)V
    .registers 7

    .line 703
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1f

    .line 705
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 706
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_1c

    .line 709
    :cond_13
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1c

    .line 710
    check-cast v3, Landroid/widget/LinearLayout;

    .line 711
    invoke-virtual {v3, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    return-void
.end method

.method private restoreParentClipState(Landroid/view/View;)V
    .registers 6

    .line 817
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-eqz v0, :cond_26

    .line 819
    array-length v0, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 822
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_23

    .line 823
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 824
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 825
    check-cast p1, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    const/4 p1, 0x0

    .line 830
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    :cond_26
    return-void
.end method

.method private updateBackground()V
    .registers 3

    .line 348
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v0, :cond_16

    .line 349
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 350
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    :goto_12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    :cond_16
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 353
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    if-eqz v1, :cond_22

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 357
    :cond_22
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    :goto_2b
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 459
    :cond_3
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 460
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public applyBlur(Z)V
    .registers 3

    .line 441
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_5

    return-void

    .line 444
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    return-void
.end method

.method protected clearBackground()V
    .registers 2

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clipParent(Landroid/view/View;)V
    .registers 8

    .line 799
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-nez v0, :cond_2c

    const/4 v0, 0x2

    .line 801
    new-array v1, v0, [Z

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_2c

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 804
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2c

    .line 805
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 806
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 807
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 808
    check-cast p1, Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2c
    return-void
.end method

.method public filterLeftoverView(I)Z
    .registers 5

    .line 501
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 502
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 505
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_18

    .line 506
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1f

    .line 507
    :cond_18
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    return v2
.end method

.method public getBottomMenuCustomViewOffset()I
    .registers 2

    .line 495
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return v0
.end method

.method public getCollapsedHeight()I
    .registers 4

    .line 512
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 515
    :cond_6
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    .line 517
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_17

    .line 519
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    if-gtz v2, :cond_1b

    return v1

    .line 524
    :cond_1b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentMaterial()Lmiuix/core/util/MaterialConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getCurrentMaterial()Lmiuix/core/util/MaterialConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial()Lmiuix/core/util/MaterialDayNightConfig;
    .registers 2

    .line 403
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    return-object v0
.end method

.method public hasOnlyCustomView()Z
    .registers 2

    .line 542
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    return v0
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 452
    :cond_6
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 436
    :cond_6
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 234
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 235
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_24

    .line 236
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 237
    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->clipParent(Landroid/view/View;)V

    .line 238
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_74

    .line 240
    :cond_1d
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 241
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    goto :goto_74

    .line 244
    :cond_24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 245
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-nez v0, :cond_74

    .line 246
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 247
    new-instance v1, Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 248
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 250
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_74

    .line 257
    :cond_5a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_74

    .line 258
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 259
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 261
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_74
    :goto_74
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 303
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_a

    .line 305
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 307
    :cond_a
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 308
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    if-eq p1, v0, :cond_bd

    .line 309
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 310
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_27

    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    :goto_27
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 311
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 312
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43440000    # 196.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 313
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 314
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 315
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 316
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 318
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 319
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 320
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v2, :cond_72

    move v0, v1

    :cond_72
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    .line 321
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 322
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 323
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 324
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 325
    sget-boolean p1, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz p1, :cond_b0

    .line 326
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 327
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    invoke-static {p0, p1, v0, v1, v2}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_b0

    .line 329
    :cond_ad
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    .line 332
    :cond_b0
    :goto_b0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshBackground()V

    .line 333
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_d6

    .line 334
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    goto :goto_d6

    .line 336
    :cond_bd
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_d6

    .line 337
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    .line 338
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshBackground()V

    :cond_d6
    :goto_d6
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 290
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .line 727
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 728
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 733
    iget-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    const/16 p4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_2b

    .line 734
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, p4, :cond_2a

    .line 735
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_2a
    return-void

    .line 740
    :cond_2b
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    const/4 p5, 0x0

    if-eqz p3, :cond_54

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, p4, :cond_54

    .line 741
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 742
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 743
    iget p4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int v3, p3, p4

    if-gez v3, :cond_54

    move p3, p5

    goto :goto_55

    :cond_54
    move p3, v3

    .line 750
    :goto_55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    .line 751
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v0

    .line 752
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 753
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v2, v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 754
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v8, p5

    move v7, v0

    :goto_7b
    if-ge v8, p4, :cond_a1

    .line 756
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 757
    invoke-direct {p0, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_88

    goto :goto_9e

    .line 760
    :cond_88
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v7, v0

    move-object v0, p0

    move-object v1, v9

    move v2, v7

    move v3, p3

    move v5, p2

    .line 761
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 762
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    .line 764
    :cond_a1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isEnableBlur()Z

    move-result p3

    if-eqz p3, :cond_ac

    if-lez p1, :cond_ac

    if-lez p2, :cond_ac

    move p5, v6

    :cond_ac
    invoke-virtual {p0, p5}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 548
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 549
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 550
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 551
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 555
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 556
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v5

    .line 557
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v4, :cond_ea

    if-nez v5, :cond_2e

    goto/16 :goto_ea

    .line 590
    :cond_2e
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v0, :cond_8a

    .line 591
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42e60000    # 115.0f

    invoke-static {v0, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 592
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v0, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    const/high16 v4, -0x80000000

    .line 593
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int/lit8 v9, v5, -0x1

    .line 595
    iget v10, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v9, v10

    .line 596
    iget v10, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 597
    iget v11, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v12, v11, 0x2

    sub-int v12, p1, v12

    if-lt v10, v12, :cond_63

    sub-int/2addr p1, v3

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr p1, v11

    sub-int/2addr p1, v9

    .line 598
    div-int/2addr p1, v5

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 600
    :cond_63
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 601
    invoke-direct {p0, p1, v4, v7}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 602
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getMaxChildrenTotalHeight()I

    move-result p1

    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    sub-int p1, v0, p1

    .line 603
    div-int/lit8 p1, p1, 0x2

    .line 604
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->resetActionMenuItemPaddingTop(I)V

    .line 605
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 606
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr p1, v5

    add-int/2addr p1, v3

    add-int/2addr p1, v9

    .line 607
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_a7

    :cond_8a
    sub-int v0, p1, v3

    add-int/lit8 v3, v5, -0x1

    .line 610
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    div-int/2addr v0, v5

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 611
    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    add-int/2addr v3, v1

    .line 612
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 613
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 614
    iget-boolean v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    invoke-direct {p0, v0, v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 615
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 618
    :goto_a7
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    add-int/2addr v0, v2

    .line 620
    iget-boolean v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-nez v3, :cond_af

    sub-int/2addr v0, v1

    .line 623
    :cond_af
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_e3

    .line 624
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 625
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 626
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 627
    invoke-static {p2, v2, v1}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 625
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 629
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 630
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v0, p2

    .line 631
    iget p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v0, p2

    .line 633
    :cond_e3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 634
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void

    .line 559
    :cond_ea
    :goto_ea
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 560
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_14a

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_f7

    goto :goto_14a

    .line 564
    :cond_f7
    iput-boolean v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 565
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 566
    iget-boolean v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v3, :cond_11a

    .line 567
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr p1, v4

    .line 568
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 569
    invoke-static {p2, v2, v1}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 567
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_129

    .line 572
    :cond_11a
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 573
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 574
    invoke-static {p2, v2, v1}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 572
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 577
    :goto_129
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 578
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 579
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v2

    .line 581
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr p2, v1

    if-gez p2, :cond_145

    goto :goto_146

    :cond_145
    move v0, p2

    .line 585
    :goto_146
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_14f

    .line 561
    :cond_14a
    :goto_14a
    iput-boolean v7, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 562
    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 587
    :goto_14f
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 269
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 270
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method public onWillRemoved()V
    .registers 3

    .line 275
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 277
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_24

    .line 279
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 280
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 281
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 282
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_24
    return-void
.end method

.method protected resetBackground()V
    .registers 1

    .line 381
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 487
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_c

    if-gez p1, :cond_7

    goto :goto_c

    .line 490
    :cond_7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 491
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_c
    :goto_c
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 424
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_5

    return-void

    .line 427
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    if-eqz p1, :cond_18

    .line 428
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_18

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    .line 793
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    return-void
.end method

.method public bridge synthetic setMaterial(Lmiuix/core/util/MaterialConfig;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lmiuix/view/HyperMaterialWidget;->setMaterial(Lmiuix/core/util/MaterialConfig;)V

    return-void
.end method

.method public setMaterial(Lmiuix/core/util/MaterialDayNightConfig;)V
    .registers 5

    .line 386
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    .line 389
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void

    .line 392
    :cond_14
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    .line 393
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_2a

    .line 394
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isApplyBlur()Z

    move-result p1

    if-nez p1, :cond_25

    if-eqz v0, :cond_25

    .line 395
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 397
    :cond_25
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    :cond_2a
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_5

    return-void

    .line 411
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    return-void
.end method

.method public setSuspendEnabled(Z)V
    .registers 3

    .line 362
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eq v0, p1, :cond_12

    .line 363
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 364
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_12

    .line 365
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    .line 366
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurUiHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->refreshBlur()V

    .line 369
    :cond_12
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    .line 295
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 296
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_a

    .line 297
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    return-void
.end method
