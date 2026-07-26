.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarTopMargin:I

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnchorParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mContentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCustomFrameLayout:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mExtraPadding:I

.field private mExtraPaddingApplyToAnchorByUser:Z

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mFirstLayout:Z

.field private mHasPendingShowSoftInputTask:Z

.field private mHasSetCustomView:Z

.field private mHorizontalPaddingDp:I

.field private mInActionMode:Z

.field private mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mInputPaddingRight:I

.field private mInputPaddingTop:I

.field private mInputView:Landroid/widget/EditText;

.field private mLimitTextSizeDp:I

.field private mLocation:[I

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOriginOverlayMode:Z

.field private mOriginalPaddingTop:I

.field private mOverlayView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocationY:I

.field private mPendingInsetTop:I

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewOriginPaddingBottom:I

.field private mResultViewOriginPaddingTop:I

.field private mResultViewSet:Z

.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mSearchViewHeight:I

.field private final mShowSoftInputRunnable:Ljava/lang/Runnable;

.field private mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 68
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    const v0, 0x7fffffff

    .line 140
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    .line 151
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    .line 152
    new-instance v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_view_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    .line 169
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isTallFontLang(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/16 p1, 0x10

    goto :goto_61

    :cond_5f
    const/16 p1, 0x1b

    .line 172
    :goto_61
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    .line 173
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 174
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    return p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p0
.end method

.method static synthetic access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I
    .registers 2

    .line 54
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p1
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    return p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .registers 1

    .line 54
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .registers 3

    .line 845
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 846
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 848
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    if-eqz v0, :cond_31

    const v1, 0x1020002

    .line 850
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 851
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    return-object v0

    :cond_31
    return-object v1
.end method

.method private isHostActivityDestroyed()Z
    .registers 3

    .line 908
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_13

    .line 909
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 911
    :goto_14
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method private resetLocationY()V
    .registers 2

    const v0, 0x7fffffff

    .line 601
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return-void
.end method

.method private resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    if-eqz p1, :cond_42

    if-nez p2, :cond_5

    goto :goto_42

    .line 559
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_edit_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 561
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 563
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    const/4 v4, 0x1

    if-lez v1, :cond_2b

    int-to-float v1, v3

    .line 564
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 566
    :cond_2b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 568
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_42

    int-to-float p1, v0

    .line 569
    invoke-virtual {p2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_42
    :goto_42
    return-void
.end method

.method private shouldAnimateContent()Z
    .registers 2

    .line 915
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private updateExtraPadding(F)V
    .registers 5

    .line 271
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 272
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 274
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v1

    .line 275
    :goto_15
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v2, :cond_31

    .line 276
    invoke-virtual {v2}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_31

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eqz v0, :cond_31

    .line 278
    :cond_25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    goto :goto_33

    .line 280
    :cond_31
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    :goto_33
    return-void
.end method

.method private updateOnPaddingTopChanged()V
    .registers 5

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    .line 626
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    .line 623
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 627
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateResultViewMargin(Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 727
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_10

    :cond_f
    move-object p1, v0

    .line 728
    :goto_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_1a
    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    .line 730
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_29

    return-void

    :cond_29
    if-eqz p1, :cond_4c

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez v0, :cond_4c

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 742
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v1

    .line 743
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    .line 744
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 745
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4c
    return-void
.end method

.method private updateViewPadding(IF)V
    .registers 7

    .line 285
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p2, p1

    .line 287
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    .line 285
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 290
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v3, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 295
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 296
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5f

    .line 297
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    if-eq p1, v1, :cond_55

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 301
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_55
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 305
    :cond_5f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_87

    .line 306
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 307
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq v0, p2, :cond_87

    .line 310
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 312
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_87
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 342
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 345
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 346
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_9

    .line 810
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_9
    if-nez p1, :cond_20

    .line 812
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 813
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_2d

    .line 816
    :cond_20
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez p1, :cond_2d

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_2d

    const/16 v0, 0x8

    .line 817
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 5

    .line 207
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->pollViews()V

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 209
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 210
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 211
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 212
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 214
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->createAnimationListeners()V

    .line 215
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2f

    .line 216
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_30

    :cond_2f
    move-object v2, v1

    :goto_30
    if-eqz v2, :cond_35

    .line 218
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 223
    :cond_35
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->isHostActivityDestroyed()Z

    move-result v2

    if-nez v2, :cond_44

    .line 224
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 225
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_54

    .line 228
    :cond_44
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    .line 229
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_50

    .line 230
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 231
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 233
    :cond_50
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 234
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 237
    :goto_54
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez p1, :cond_76

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    .line 240
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 242
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_8e

    .line 244
    :cond_76
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 245
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_89

    .line 248
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    goto :goto_8e

    .line 250
    :cond_89
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_8e
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 800
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    return-void
.end method

.method public closeMode()V
    .registers 3

    .line 446
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 447
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 448
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_12

    .line 449
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 451
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1b

    const/16 v1, 0x8

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method protected createAnimationListeners()V
    .registers 3

    .line 858
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 862
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 864
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_39
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 871
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method protected finishAnimation()V
    .registers 3

    .line 490
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    .line 491
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 492
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 493
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 494
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_14
    return-void
.end method

.method protected getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 6

    .line 631
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_58

    .line 632
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_31

    const/4 v1, 0x0

    .line 634
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 635
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 636
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_2e

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_2e

    .line 637
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 642
    :cond_31
    :goto_31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_58

    .line 643
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v0, :cond_58

    .line 646
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v1, v2

    .line 648
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    .line 646
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 652
    :cond_58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 3

    .line 672
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez v0, :cond_1c

    .line 673
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1c

    .line 675
    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 678
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 481
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 426
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method protected getDimView()Landroid/view/View;
    .registers 6

    .line 682
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v0, :cond_42

    .line 683
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz v0, :cond_42

    .line 687
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_31

    .line 688
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->search_mask_vs:I

    if-ne v3, v4, :cond_2e

    .line 689
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    goto :goto_31

    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_31
    :goto_31
    if-eqz v1, :cond_3a

    .line 694
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    goto :goto_42

    .line 696
    :cond_3a
    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 700
    :cond_42
    :goto_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4a

    const/4 v1, 0x0

    .line 701
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 703
    :cond_4a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    .line 430
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 6

    .line 656
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_31

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_31

    const/4 v1, 0x0

    .line 659
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 660
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 661
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_2e

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_2e

    .line 662
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 668
    :cond_31
    :goto_31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object v0
.end method

.method public getViewHeight()I
    .registers 2

    .line 371
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return v0
.end method

.method protected getViewPager()Lmiuix/viewpager/widget/ViewPager;
    .registers 4

    .line 713
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_24

    .line 715
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 716
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 717
    sget v1, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/viewpager/widget/ViewPager;

    return-object v0

    :cond_24
    return-object v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 2

    const/4 p1, 0x1

    .line 794
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 795
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    return-void
.end method

.method public killMode()V
    .registers 3

    .line 458
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 462
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 465
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 466
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v1, :cond_1f

    .line 467
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 468
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 470
    :cond_1f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    if-eqz v1, :cond_25

    .line 471
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 473
    :cond_25
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    .line 499
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    .line 500
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 501
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 502
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 503
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_14
    const/4 v0, 0x2

    .line 509
    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    const-string v1, "AnimationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-wide/16 v1, 0x190

    goto :goto_2e

    :cond_2c
    const-wide/16 v1, 0x0

    :goto_2e
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 512
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    .line 897
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 900
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 901
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    .line 877
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 880
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 881
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    .line 887
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 890
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 891
    invoke-interface {v1, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .registers 3

    const/4 v0, 0x2

    .line 517
    new-array v0, v0, [F

    fill-array-data v0, :array_c

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0

    :array_c
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 784
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 760
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 764
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 766
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_3f

    .line 767
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    .line 768
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_1d

    :cond_1c
    move-object v0, p1

    :goto_1d
    if-eqz v0, :cond_27

    .line 770
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 771
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    .line 773
    :cond_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_31
    if-eqz p1, :cond_38

    const/high16 v0, 0x3f800000    # 1.0f

    .line 775
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_38
    const/4 p1, 0x0

    .line 777
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 778
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->killMode()V

    :cond_3f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x0

    .line 752
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 753
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    .line 754
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 823
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_19

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_text_cancel:I

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    if-ne v0, v1, :cond_19

    .line 825
    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 579
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 580
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    const/4 p1, 0x1

    .line 581
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    .line 582
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 587
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 590
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    .line 591
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 592
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 593
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 595
    :cond_10
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 596
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v0, 0x0

    .line 522
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 523
    new-instance v1, Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {v1, p0}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 526
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 527
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 528
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v1, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 529
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 531
    :cond_23
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v2, v1, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    if-nez v2, :cond_2d

    .line 532
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    iput v2, v1, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 534
    :cond_2d
    sget v1, Lmiuix/appcompat/R$id;->search_text_cancel:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 535
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    new-instance v1, Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 537
    sget v1, Lmiuix/appcompat/R$id;->search_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 538
    invoke-static {v1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    const v1, 0x1020009

    .line 539
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 540
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 541
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 542
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 543
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    :cond_96
    return-void
.end method

.method public onFloatingModeChanged()V
    .registers 1

    .line 574
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 185
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 186
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    int-to-float p4, p5

    add-float/2addr p2, p4

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 189
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 190
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 191
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 192
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_2e
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_11

    .line 199
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasPendingShowSoftInputTask:Z

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

.method protected pollViews()V
    .registers 1

    .line 707
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 708
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 709
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public rePaddingAndRelayout(Landroid/graphics/Rect;)V
    .registers 4

    .line 605
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, p1, :cond_38

    .line 607
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 608
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateOnPaddingTopChanged()V

    .line 609
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez p1, :cond_30

    .line 610
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 611
    :goto_1b
    instance-of p1, p1, Lmiuix/core/view/NestedCoordinatorObserver;

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 612
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_30

    .line 614
    :cond_2b
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 617
    :cond_30
    :goto_30
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    .line 618
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_38
    return-void
.end method

.method public setAnchorApplyExtraPaddingByUser(Z)V
    .registers 3

    .line 361
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eq v0, p1, :cond_18

    .line 362
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 364
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 365
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_18
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_24

    .line 323
    sget v0, Lmiuix/appcompat/R$id;->search_mode_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 326
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    :cond_24
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .line 485
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 486
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method protected setContentViewPadding(II)V
    .registers 7

    .line 837
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr p1, v2

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr p2, v3

    .line 839
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_17
    return-void
.end method

.method protected setContentViewTranslation(F)V
    .registers 3

    .line 830
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 832
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_3f

    .line 395
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    if-nez v0, :cond_3f

    .line 396
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 397
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/appcompat/R$id;->searchActionMode_customFrameLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 403
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    .line 404
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 405
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    :cond_3f
    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eq v0, p1, :cond_18

    .line 263
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 265
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 266
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_18
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 258
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_35

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 377
    instance-of v0, v0, Lmiuix/core/view/NestedContentInsetObserver;

    if-eqz v0, :cond_d

    return-void

    .line 382
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 386
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_32

    .line 387
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 388
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    :cond_32
    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewSet:Z

    :cond_35
    return-void
.end method
