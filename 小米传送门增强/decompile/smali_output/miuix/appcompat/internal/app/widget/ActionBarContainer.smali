.class public Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    }
.end annotation


# instance fields
.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private mActionBarHeightGap:I

.field private mActionBarHeightTotalGap:I

.field mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private final mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field protected mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

.field private mCoordinatedOffsetYInSearchModeAnimation:I

.field private mCurBarExpandState:I

.field private mCurBarResizable:Z

.field private mCurContextBarExpandState:I

.field private mCurContextBarResizable:Z

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mDrawBackground:Z

.field private mHeightMaxMeasureSpec:I

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInternalApplyBgBlur:Z

.field private mInternalApplySpiltBgBlur:Z

.field private mIsInActionMode:Z

.field private mIsInWideMode:Z

.field private mIsMiuixFloating:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mLastActionBarResizingProcess:F

.field private mLastToState:I

.field private mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

.field private mNowShowing:Z

.field private mOverlayMode:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I

.field private mUserApplyBgBlur:Ljava/lang/Boolean;

.field private mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

.field private mUserBgViewApplyBlur:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 108
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 110
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 111
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserBgViewApplyBlur:Ljava/lang/Boolean;

    .line 112
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 113
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 129
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    const/4 v3, -0x1

    .line 136
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v3, 0x0

    .line 138
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 139
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 140
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 141
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 142
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 143
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 145
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 153
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 165
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget-object v3, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 167
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 168
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarStackedBackground:I

    .line 169
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 173
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_78

    .line 176
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 177
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_82

    .line 185
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 190
    :cond_82
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 192
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_98

    :goto_8d
    move v1, v0

    goto :goto_98

    .line 193
    :cond_8f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_98

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_98

    goto :goto_8d

    .line 192
    :cond_98
    :goto_98
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 194
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 195
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_c8

    .line 196
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_b1

    sget-object p2, Lmiuix/theme/token/hypermaterial/Mask;->Pured_Regular:Lmiuix/theme/token/MaterialDayNightToken;

    :goto_ac
    invoke-static {p2}, Lmiuix/core/util/MaterialDayNightConfig;->create(Landroid/os/Parcelable;)Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object p2

    goto :goto_b4

    :cond_b1
    sget-object p2, Lmiuix/theme/token/hypermaterial/Blur;->ExtraHeavy:Lmiuix/theme/token/MaterialDayNightToken;

    goto :goto_ac

    :goto_b4
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    .line 197
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    goto :goto_ca

    .line 270
    :cond_c8
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    :goto_ca
    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/core/util/MaterialDayNightConfig;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    return p0
.end method

.method static synthetic access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    return p1
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    return p1
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    .registers 1

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-object p0
.end method

.method private applyInsetsTopByMargin(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_1b

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 784
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_15

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 785
    :goto_16
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 786
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method private getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 530
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_21

    .line 531
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_21

    .line 532
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    if-lez v1, :cond_21

    .line 533
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_21
    return v0
.end method

.method private getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 566
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    .line 567
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_28

    .line 568
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    if-lez v1, :cond_28

    .line 570
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_28
    return v0
.end method

.method private onMeasureSplit(II)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall",
            "WrongConstant"
        }
    .end annotation

    .line 853
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_12

    .line 854
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 859
    :cond_12
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    move p2, v0

    .line 862
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 864
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_22
    if-ge v0, p1, :cond_33

    .line 867
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    if-nez v1, :cond_39

    .line 870
    invoke-virtual {p0, p2, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_58

    .line 871
    :cond_39
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_58

    .line 873
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->hasOnlyCustomView()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz p2, :cond_58

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 875
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result p1

    if-nez p1, :cond_58

    .line 877
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_58
    :goto_58
    return-void
.end method

.method private resizeSplitMaxHeight()V
    .registers 4

    .line 994
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2b

    .line 995
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarSplitMaxPercentageHeight:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 996
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2b

    .line 997
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 998
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    .line 999
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    :cond_2b
    return-void
.end method

.method private selectDrawable()V
    .registers 4

    .line 1105
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3f

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_19

    goto :goto_3f

    .line 1112
    :cond_19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1114
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_34

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_34

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_37

    :cond_34
    :goto_34
    const/4 v0, 0x2

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 1121
    :goto_37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    if-eqz v0, :cond_3f

    .line 1122
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .registers 3

    .line 432
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_5

    return-void

    .line 435
    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_19

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 439
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    goto :goto_1f

    .line 441
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    :goto_1f
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1091
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1093
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz p1, :cond_12

    .line 1094
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1100
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    :cond_12
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 677
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 678
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 679
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 681
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 682
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 684
    :cond_29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 685
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3c
    return-void
.end method

.method public finishActionMode()V
    .registers 2

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    return-void
.end method

.method getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .registers 2

    .line 384
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    return-object v0
.end method

.method getCollapsedHeight()I
    .registers 3

    .line 504
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_26

    .line 505
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 506
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_26

    .line 508
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 509
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_24
    add-int/2addr v1, v0

    return v1

    .line 511
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_39

    .line 512
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 513
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_24

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getCurrentMaterial()Lmiuix/core/util/MaterialConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getCurrentMaterial()Lmiuix/core/util/MaterialConfig;

    move-result-object v0

    return-object v0
.end method

.method getExpandedHeight()I
    .registers 3

    .line 539
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_26

    .line 540
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_26

    .line 543
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_24
    add-int/2addr v1, v0

    return v1

    .line 546
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_39

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 548
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_24

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method getInsetHeight()I
    .registers 3

    .line 555
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 559
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 560
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaterial()Lmiuix/core/util/MaterialDayNightConfig;
    .registers 2

    .line 0
    invoke-super {p0}, Lmiuix/view/HyperMaterialWidget;->getMaterial()Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .registers 2

    .line 376
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPrimaryBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 600
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSplitCollapsedHeight()I
    .registers 3

    .line 519
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 523
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 524
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .line 724
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public isApplyBlur()Z
    .registers 2

    .line 447
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 450
    :cond_6
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    return v0
.end method

.method public isEnableBlur()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 427
    :cond_6
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    return v0
.end method

.method public isSupportBlur()Z
    .registers 2

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 411
    :cond_6
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    move-result v0

    return v0
.end method

.method onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1219
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2b

    .line 1220
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1221
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 1222
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    :goto_17
    if-eqz v0, :cond_27

    .line 1223
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_2b
    return-void
.end method

.method onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1228
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 1229
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 983
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 984
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 985
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_1d

    .line 986
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 987
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserBgViewApplyBlur:Ljava/lang/Boolean;

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    .line 988
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackgroundInternal(Z)V

    :cond_1d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 976
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 978
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 749
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1d

    .line 753
    :cond_d
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_12

    goto :goto_1d

    .line 760
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    if-eqz v1, :cond_1d

    .line 761
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 277
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 278
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 279
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_30

    .line 280
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->bindActionBarTransitionListeners(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 282
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 284
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_49

    .line 285
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 286
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 287
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    :cond_49
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 716
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 704
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 883
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 885
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 886
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p3, p5

    float-to-int p3, p3

    .line 887
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p5, :cond_8a

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v1, 0x8

    if-eq p5, v1, :cond_8a

    .line 888
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 889
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_59

    .line 890
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 891
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_59

    .line 892
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 893
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 892
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_83

    .line 895
    :cond_59
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_60

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_61

    :cond_60
    move v1, v0

    :goto_61
    add-int/2addr p5, v1

    .line 896
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 897
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_72

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v3, v4

    goto :goto_74

    .line 898
    :cond_72
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    :goto_74
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 899
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 896
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 901
    :goto_83
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int p5, p1, p5

    invoke-virtual {v1, p2, p5, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 906
    :cond_8a
    iget-boolean p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    if-eqz p5, :cond_a0

    .line 907
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_ac

    .line 908
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, v0, v0, p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_9e
    move p1, v1

    goto :goto_ad

    .line 912
    :cond_a0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->selectDrawable()V

    .line 913
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_ac

    sub-int/2addr p4, p2

    .line 914
    invoke-virtual {p5, v0, v0, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_9e

    :cond_ac
    move p1, v0

    :goto_ad
    const/16 p2, 0x280

    if-le p3, p2, :cond_b3

    move p2, v1

    goto :goto_b4

    :cond_b3
    move p2, v0

    .line 932
    :goto_b4
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInWideMode:Z

    .line 935
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p2, :cond_d9

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    if-eqz p3, :cond_d9

    .line 936
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 937
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result p3

    :goto_d7
    sub-int/2addr p2, p3

    goto :goto_f8

    .line 938
    :cond_d9
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p2, :cond_f7

    .line 939
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 940
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p3

    goto :goto_d7

    :cond_f7
    move p2, v0

    .line 942
    :goto_f8
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p2, :cond_106

    move p3, p4

    goto :goto_10c

    :cond_106
    sub-int p3, p2, p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    int-to-float p5, p2

    div-float/2addr p3, p5

    .line 944
    :goto_10c
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 945
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 946
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p3

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-gez p3, :cond_11c

    move p2, p4

    .line 949
    :cond_11c
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    sub-float/2addr p3, p2

    cmpl-float p4, p3, p4

    if-lez p4, :cond_124

    goto :goto_125

    :cond_124
    move v1, v0

    .line 950
    :goto_125
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 951
    iget-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz p4, :cond_139

    .line 952
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz p4, :cond_139

    .line 953
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    add-int/2addr p5, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {p4, v1, p2, p5, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 958
    :cond_139
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p4, :cond_141

    .line 959
    invoke-virtual {p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandStateOnLayout()Z

    move-result v0

    .line 961
    :cond_141
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_147
    :goto_147
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_167

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 962
    invoke-interface {p5, p3, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    .line 963
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    invoke-interface {p5, v1, p2, v2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarResizing(IFI)V

    if-eqz v0, :cond_147

    .line 965
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    invoke-interface {p5, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_147

    .line 968
    :cond_167
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    if-eqz p1, :cond_16e

    .line 970
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_16e
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 792
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_8

    .line 793
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onMeasureSplit(II)V

    return-void

    .line 797
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 800
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 799
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 803
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 804
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 806
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 808
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_46

    .line 809
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_46

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_46

    move p1, v1

    goto :goto_47

    :cond_46
    move p1, v2

    :goto_47
    if-eqz p1, :cond_69

    .line 811
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 812
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6a

    .line 813
    :cond_5c
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    goto :goto_6a

    :cond_69
    move v3, v2

    .line 815
    :goto_6a
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v4, :cond_7d

    .line 816
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_7d

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_7d

    goto :goto_7e

    :cond_7d
    move v1, v2

    :goto_7e
    if-eqz v1, :cond_95

    .line 819
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 820
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    goto :goto_96

    :cond_95
    move v4, v2

    :goto_96
    if-gtz v3, :cond_9a

    if-lez v4, :cond_a5

    .line 823
    :cond_9a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 827
    :cond_a5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_d8

    .line 828
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_d8

    .line 830
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 831
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 832
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_d3

    .line 833
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_d3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_d4

    :cond_d3
    move p1, v2

    :goto_d4
    add-int/2addr p2, p1

    .line 831
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_d8
    move p1, v2

    move p2, p1

    .line 839
    :goto_da
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_fb

    .line 840
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_f8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_f8

    add-int/lit8 p2, p2, 0x1

    :cond_f8
    add-int/lit8 p1, p1, 0x1

    goto :goto_da

    :cond_fb
    if-nez p2, :cond_100

    .line 846
    invoke-virtual {p0, v2, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_100
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 16

    .line 1178
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 1179
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    goto :goto_2d

    .line 1180
    :cond_18
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 1181
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 1183
    :cond_2d
    :goto_2d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz p1, :cond_61

    if-lez p3, :cond_61

    const/4 p1, 0x1

    aget p2, p4, p1

    sub-int/2addr p3, p2

    if-lez p3, :cond_61

    .line 1184
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_57

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_57

    .line 1185
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 1186
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1187
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz p2, :cond_57

    const/high16 p4, 0x3f800000    # 1.0f

    .line 1188
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {p2, p3, p4, p3, p5}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 1192
    :cond_57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_5e

    return-void

    .line 1197
    :cond_5e
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    :cond_61
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 22

    move-object v0, p0

    const/4 v10, 0x1

    .line 1128
    aget v11, p7, v10

    .line 1129
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v12, 0x8

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_24

    .line 1130
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    goto :goto_41

    .line 1132
    :cond_24
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v1, :cond_41

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_41

    .line 1133
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 1136
    :cond_41
    :goto_41
    aget v1, p7, v10

    sub-int/2addr v1, v11

    .line 1137
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz v2, :cond_69

    if-gez p5, :cond_69

    if-gtz v1, :cond_69

    const/4 v1, 0x0

    .line 1138
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 1139
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v1, :cond_69

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-ne v1, v12, :cond_69

    .line 1140
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1141
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz v1, :cond_69

    const/4 v2, 0x0

    .line 1142
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {v1, v10, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    :cond_69
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 7

    .line 1158
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1159
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_21

    .line 1161
    :cond_10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    .line 1162
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_21
    :goto_21
    return-void
.end method

.method onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1202
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_39

    .line 1203
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1204
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setSupportBlur(Z)V

    .line 1205
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setEnableBlur(Z)V

    .line 1206
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    :goto_25
    if-eqz v0, :cond_35

    .line 1208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_39
    return-void
.end method

.method onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 3

    .line 1213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 1214
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    :cond_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 1249
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 1250
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1251
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_13

    .line 1252
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    goto :goto_20

    :cond_13
    if-nez v0, :cond_1a

    .line 1254
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    goto :goto_20

    :cond_1a
    if-ne v0, v2, :cond_20

    .line 1256
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 1258
    :cond_20
    :goto_20
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    if-ne v0, v3, :cond_27

    .line 1259
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    goto :goto_34

    :cond_27
    if-nez v0, :cond_2e

    .line 1261
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    goto :goto_34

    :cond_2e
    if-ne v0, v2, :cond_34

    .line 1263
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 1265
    :cond_34
    :goto_34
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    if-eqz v0, :cond_3b

    .line 1266
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 1268
    :cond_3b
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    if-eqz v0, :cond_42

    .line 1269
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 1271
    :cond_42
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1272
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    :cond_4f
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 1236
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1237
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1238
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v0, :cond_12

    move v0, v4

    goto :goto_1b

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 1239
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    move v2, v4

    goto :goto_2a

    .line 1240
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v2, v3

    :cond_2a
    :goto_2a
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 1241
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 1242
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 1243
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isApplyBlur()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    .line 1150
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 1151
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1

    .line 1153
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1169
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_21

    .line 1171
    :cond_10
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    .line 1172
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 709
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method resetActionBarBlurConfigOnReshow()V
    .registers 2

    .line 462
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 463
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void

    .line 466
    :cond_c
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void
.end method

.method setActionBarBlur(Ljava/lang/Boolean;)V
    .registers 4

    .line 476
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_12

    const/4 p1, 0x0

    .line 480
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 481
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void

    .line 484
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_29

    .line 485
    :cond_20
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 486
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    :cond_29
    return-void
.end method

.method setActionBarBlurByNestedScrolled(Z)V
    .registers 3

    .line 454
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 455
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    return-void

    .line 458
    :cond_7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_19

    .line 356
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 357
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 358
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    :cond_19
    return-void
.end method

.method setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 1006
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setCoordinatedOffsetYInSearchModeAnimation(I)V
    .registers 6

    .line 346
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    .line 347
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz v0, :cond_12

    .line 348
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    add-int/2addr v3, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {v0, v1, v2, v3, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    :cond_12
    return-void
.end method

.method public setEnableBlur(Z)V
    .registers 3

    .line 416
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-nez v0, :cond_5

    return-void

    .line 419
    :cond_5
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    return-void
.end method

.method public setIsMiuixFloating(Z)V
    .registers 5

    .line 312
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 313
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_22

    .line 315
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 316
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 317
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 318
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    goto :goto_2e

    .line 320
    :cond_22
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 321
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 324
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_59

    if-eqz p1, :cond_4d

    .line 326
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 327
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 328
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 329
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    goto :goto_59

    .line 331
    :cond_4d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 332
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_59
    :goto_59
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

.method public setMiuixFloatingOnInit(Z)V
    .registers 4

    .line 292
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 293
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 295
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 296
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 297
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 298
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 301
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    .line 303
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 304
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 305
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 306
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    :cond_3f
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    .line 342
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 363
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_26

    .line 364
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 367
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 368
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 370
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 577
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 578
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 580
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    .line 582
    :cond_14
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2b

    .line 584
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez v1, :cond_23

    .line 586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_28

    .line 588
    :cond_23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 590
    :goto_28
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_2d

    .line 592
    :cond_2b
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 594
    :goto_2d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_40

    :goto_35
    move v0, v2

    goto :goto_40

    .line 595
    :cond_37
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_40

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_40

    goto :goto_35

    .line 594
    :cond_40
    :goto_40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 596
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setSplitActionBarBlur(Ljava/lang/Boolean;)V
    .registers 4

    .line 491
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_5

    return-void

    .line 494
    :cond_5
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 495
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_12

    .line 496
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_14

    :cond_12
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    :goto_14
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 498
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_22

    .line 499
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_24

    :cond_22
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    :goto_24
    invoke-interface {v0, p1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_27
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 641
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 642
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 643
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    .line 647
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 649
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    :goto_1e
    move v0, v1

    goto :goto_29

    .line 650
    :cond_20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    goto :goto_1e

    .line 649
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 651
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 625
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 626
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 627
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    :cond_d
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    .line 631
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    :cond_14
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    :goto_1e
    move v0, v1

    goto :goto_29

    .line 634
    :cond_20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_29

    goto :goto_1e

    .line 633
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 635
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_35

    .line 636
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_35
    return-void
.end method

.method public setSupportBlur(Z)V
    .registers 3

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_7

    .line 402
    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    :cond_7
    return-void
.end method

.method public setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .registers 4

    .line 728
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 729
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p1, :cond_21

    .line 733
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 734
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 735
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 736
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 737
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 739
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_29

    .line 740
    :cond_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 741
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 743
    :cond_29
    :goto_29
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-void
.end method

.method public setTransitioning(Z)V
    .registers 2

    .line 697
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_7

    const/high16 p1, 0x60000

    goto :goto_9

    :cond_7
    const/high16 p1, 0x40000

    .line 698
    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 656
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    move p1, v0

    .line 658
    :goto_9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 659
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 661
    :cond_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    .line 662
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 664
    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 665
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1e
    return-void
.end method

.method public show(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1051
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    if-eqz v2, :cond_7

    return-void

    .line 1054
    :cond_7
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 1055
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_10

    .line 1056
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1059
    :cond_10
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_5d

    .line 1061
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_60

    .line 1062
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v0

    aput v2, v3, v1

    const-string p1, "TranslationY"

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1063
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 1064
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_46

    :cond_44
    const-wide/16 v0, 0x0

    .line 1063
    :goto_46
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1065
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1066
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1067
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_60

    .line 1068
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_60

    .line 1072
    :cond_5d
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_60
    :goto_60
    return-void
.end method

.method public startActionMode()V
    .registers 2

    const/4 v0, 0x1

    .line 1010
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method updateBackgroundInternal(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    goto :goto_9

    :cond_6
    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 615
    :goto_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_10

    .line 616
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 618
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_17

    .line 619
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 621
    :cond_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 671
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    .line 672
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method
