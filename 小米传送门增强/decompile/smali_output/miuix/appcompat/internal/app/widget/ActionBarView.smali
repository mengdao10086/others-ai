.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;
    }
.end annotation


# instance fields
.field private mAnimateStart:Z

.field private mApplyBgBlur:Z

.field private mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field protected mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

.field protected mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

.field private final mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field private mCollapseSecondaryTabHeight:I

.field private final mCollapseSubtitleStyleRes:I

.field private mCollapseTabContainer:Landroid/widget/FrameLayout;

.field private mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

.field private mCollapseTitleShowable:Z

.field private mCollapseTitleStyleRes:I

.field mCollapseTotalHeight:I

.field private mCollapsedTitleVisible:Z

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field private mDensity:F

.field private mDisplayOptions:I

.field private mDoContainerShowAnimInFinishActionMode:Z

.field private mEndActionMenuItemLimit:I

.field private mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mEndView:Landroid/view/View;

.field private mExpandSubtitlePaddingBottom:I

.field private mExpandTabTopPadding:I

.field private mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

.field private mExpandTitlePaddingBottom:I

.field private mExpandTitleVisible:Z

.field mExpandTotalHeight:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mExtraPadding:I

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mHasNavigatorSwitchView:Z

.field private mHasStartView:Z

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mInActionMode:Z

.field private mInActionModeAnimating:Z

.field private mInSearchMode:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mInitCustomTitle:Ljava/lang/CharSequence;

.field private mIsBottomMenuVisible:Z

.field private mIsCollapseTitleShowingOnResizing:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mLastResizingProcess:F

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mMainContainer:Landroid/widget/FrameLayout;

.field private mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

.field protected mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

.field protected mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

.field private final mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableMainContainer:Landroid/widget/FrameLayout;

.field private mMovableSecondaryTabHeight:I

.field private mMovableTabContainer:Landroid/widget/FrameLayout;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNavigatorSwitch:Landroid/view/View;

.field private final mNavigatorSwitchResId:I

.field private mNeedRequestLayoutOnExpandTitleShowing:Z

.field private mNonTouchScrolling:Z

.field private mOptionalIconsVisible:Z

.field private mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPendingCreated:Z

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private final mPostScroller:Landroid/widget/Scroller;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

.field private mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

.field private mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

.field private mSecondaryTabVerticalPadding:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mStartView:Landroid/view/View;

.field private mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private final mSubTitleClickListener:Landroid/view/View$OnClickListener;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabsExit:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mTitleGapPaddingStart:I

.field private mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mTitleUpView:Landroid/view/View;

.field private mTitleUpViewMarginEnd:I

.field private mTitleUpViewMarginStart:I

.field private mTouchScrolling:Z

.field private mTransitionTarget:I

.field private mUncollapsePaddingH:I

.field private mUncollapseTabPaddingH:I

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserSetEndActionMenuItemLimit:Z

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public static synthetic $r8$lambda$04kpj5IDuE0qXTIj9b55WOW81uI(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$postRefreshTitleControllerStatus$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6N_7q2wlX03zb7goajedPZycYnE(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$setSubtitle$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ADuzlzSkaxUsMj_gi3Z3NBj_ofk(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NeV4ZctygqB325yNYUBGP1cCtRw(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$updateCollapseTitle$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$TcA-r6NBal3zTzwtlD3x4mPL6Uw(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$initTitle$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14

    .line 393
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, 0x0

    .line 163
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    const/4 v3, 0x1

    .line 182
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 201
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 206
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    .line 207
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    .line 211
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 212
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 213
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 234
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    const/4 v4, 0x0

    .line 237
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 239
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 241
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 252
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 263
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    .line 291
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    .line 320
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 336
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 346
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 369
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 389
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 390
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 3948
    new-instance v5, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3949
    new-instance v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3951
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 3952
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 3961
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 3963
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 3965
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 3967
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 4190
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 395
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 397
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 399
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 400
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 402
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 404
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 405
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 406
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 407
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 412
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 414
    sget v7, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_padding_gap:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleGapPaddingStart:I

    .line 417
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 418
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 419
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 420
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 421
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 422
    sget v7, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 423
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 424
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget v7, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_144

    move v7, v8

    goto :goto_145

    :cond_144
    move v7, v4

    :goto_145
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 427
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 428
    sget v7, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 429
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    iget v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    iget v10, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    invoke-virtual {v1, v7, v9, v7, v10}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 434
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v7, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v7, :cond_16b

    goto :goto_16c

    :cond_16b
    move v4, v8

    :goto_16c
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 437
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 438
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 441
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 443
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 446
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 448
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 449
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 450
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 452
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 453
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 455
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 457
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_navigatorSwitchLayout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_navigator_switch:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    .line 461
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 465
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 466
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 468
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 469
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 470
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 472
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 474
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_212

    .line 476
    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 477
    new-instance v5, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    const v7, 0x800013

    invoke-direct {v5, v0, v6, v7}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 481
    :cond_212
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 482
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 483
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarMaxSizeInLargeFont:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_large_font_max_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 484
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v5, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    invoke-static {v4, v5, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    .line 485
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_246

    goto :goto_247

    :cond_246
    move v3, v2

    :goto_247
    if-eqz v4, :cond_24c

    if-eqz v3, :cond_24c

    goto :goto_24e

    .line 486
    :cond_24c
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    :goto_24e
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 487
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_showOptionIcons:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    .line 488
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 489
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 490
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x1020016

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 492
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .registers 2

    .line 103
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    return-object p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 103
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 103
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    return p0
.end method

.method static synthetic access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .registers 2

    .line 103
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .registers 2

    .line 103
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    return p1
.end method

.method static synthetic access$3100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .registers 1

    .line 103
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    .registers 1

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 103
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private addCustomView()V
    .registers 4

    .line 2058
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2059
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 2061
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 2062
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 2063
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 2064
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 2065
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_54

    .line 2066
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 2067
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 2068
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 2069
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 2070
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v0, v2, :cond_54

    .line 2071
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2074
    :cond_54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_59
    return-void
.end method

.method private addEndMenuView()V
    .registers 6

    .line 1285
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1287
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1287
    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 1290
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 1291
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1292
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v1, 0x800005

    .line 1293
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1294
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 1295
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3b

    if-eq v2, p0, :cond_3b

    .line 1297
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1299
    :cond_3b
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1300
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-void
.end method

.method private addSecondaryTabsToCollapseTabContainers()V
    .registers 7

    .line 1023
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_53

    .line 1024
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 1025
    sget v0, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1026
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-ne v2, v1, :cond_1d

    const/4 v2, 0x0

    .line 1027
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1d

    .line 1030
    :cond_1a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1032
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    .line 1033
    invoke-interface {v2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1032
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_53

    .line 1037
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-ne v0, v1, :cond_4c

    .line 1041
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1043
    :cond_4c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :cond_53
    return-void
.end method

.method private addSecondaryTabsToExpandTabContainers()V
    .registers 7

    .line 1049
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_53

    .line 1050
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_19

    .line 1051
    sget v0, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1052
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    .line 1053
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1c

    .line 1056
    :cond_19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1058
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    .line 1059
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1058
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_53

    .line 1063
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v0, :cond_4c

    .line 1067
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1069
    :cond_4c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :cond_53
    return-void
.end method

.method private addSplitMenuView()V
    .registers 7

    .line 1415
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_1e

    .line 1416
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1e

    const/4 v1, 0x4

    .line 1418
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1420
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 1422
    :cond_1e
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    move v0, v2

    .line 1423
    :goto_28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 1425
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v4, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 1426
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1427
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_57

    .line 1429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1431
    :cond_57
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-eqz v4, :cond_71

    if-eqz v0, :cond_6a

    .line 1433
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1434
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-static {v4, v2}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    goto :goto_71

    .line 1436
    :cond_6a
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 1439
    :cond_71
    :goto_71
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v4, :cond_b1

    .line 1440
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 1441
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 1442
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v5, :cond_92

    .line 1443
    check-cast v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 1444
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setSuspendEnabled(Z)V

    .line 1445
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    xor-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    .line 1448
    :cond_92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 1451
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    sget v1, Lmiuix/appcompat/R$id;->expanded_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 1453
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1455
    :cond_ad
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_b6

    .line 1458
    :cond_b1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b6
    return-void
.end method

.method private addTabsContainer()V
    .registers 7

    .line 862
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 863
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 864
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v3, :cond_1b

    .line 865
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    .line 868
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 869
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v3, :cond_1b

    .line 870
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 873
    :cond_1b
    :goto_1b
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    if-eqz v3, :cond_3b

    .line 875
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_3b

    .line 877
    sget v5, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 878
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3b

    move v3, v2

    goto :goto_3c

    :cond_3b
    move v3, v4

    .line 883
    :goto_3c
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_49

    .line 884
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v4

    .line 885
    :goto_4a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_52

    if-eqz v3, :cond_54

    :cond_52
    if-nez v2, :cond_58

    .line 887
    :cond_54
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    goto :goto_86

    :cond_58
    if-eqz v3, :cond_61

    .line 890
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 891
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    goto :goto_86

    :cond_61
    if-eqz v1, :cond_86

    .line 892
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_86

    .line 894
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_7c

    goto :goto_83

    .line 898
    :cond_7c
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 899
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    goto :goto_86

    .line 896
    :cond_83
    :goto_83
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 903
    :cond_86
    :goto_86
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_93

    .line 904
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 906
    :cond_93
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_a0

    .line 907
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 909
    :cond_a0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 911
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private addTabsToMainContainers()V
    .registers 4

    .line 987
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 988
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 989
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 990
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 992
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 993
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 995
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3b

    .line 996
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_34

    .line 997
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 998
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 1000
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1001
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1003
    :cond_3b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1004
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 1005
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1008
    :cond_4f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1009
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_62

    .line 1010
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1013
    :cond_62
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6c

    .line 1014
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    :cond_6c
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .registers 12

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2803
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2804
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    const/16 v4, 0x14

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2815
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne v2, v3, :cond_c9

    .line 2806
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_22

    .line 2807
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    return-void

    :cond_22
    cmpl-float p1, v0, v6

    const-wide/16 v2, 0x1

    .line 2810
    const-string v9, "target"

    if-lez p1, :cond_76

    .line 2811
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    if-eqz p1, :cond_b9

    .line 2812
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2813
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v6, v7, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2814
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_70

    .line 2815
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2816
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2817
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "expand"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2818
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 2820
    :cond_70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_b9

    .line 2823
    :cond_76
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    if-nez p1, :cond_b9

    .line 2824
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2825
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2826
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b4

    .line 2827
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2828
    invoke-interface {p1, v8}, Lmiuix/animation/FolmeStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2829
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "collapse"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2830
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v2, v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 2832
    :cond_b4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 2835
    :cond_b9
    :goto_b9
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_110

    .line 2836
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v7, v7, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2837
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    goto :goto_110

    :cond_c9
    if-ne v2, v5, :cond_f1

    .line 2840
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_d2

    goto :goto_d3

    :cond_d2
    move v5, v7

    :goto_d3
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 2841
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2842
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 2843
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2844
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_e2

    return-void

    .line 2847
    :cond_e2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v6, v7, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2848
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_110

    :cond_f1
    if-nez v2, :cond_110

    .line 2850
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 2851
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2852
    iput v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 2853
    iput-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2854
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_102

    return-void

    .line 2857
    :cond_102
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2858
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v6, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_110
    :goto_110
    return-void
.end method

.method private canCollapseTitleBeShown()Z
    .registers 3

    .line 2869
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 2872
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->canTitleBeShown(Ljava/lang/String;)Z

    move-result v0

    .line 2873
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTitleEnableEllipsis()Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method private canConsumeScroll()Z
    .registers 3

    .line 4181
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-nez v0, :cond_c

    return v1

    .line 4184
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private clipViewBounds(Landroid/view/View;IIII)V
    .registers 7

    .line 3163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3164
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3165
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .registers 4

    .line 3169
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3170
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3173
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1a

    .line 3174
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3175
    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    sub-int/2addr v1, p1

    return v1
.end method

.method private createCollapseTitle(Z)V
    .registers 5

    .line 2271
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_88

    .line 2272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 2274
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisible(Z)V

    .line 2275
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseTitleColorTransitEnable:Z

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTextColorTransitEnable(ZI)V

    .line 2276
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setAllTitlesClickable(Z)V

    .line 2278
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 2279
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2280
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2281
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_5a

    .line 2283
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_88

    .line 2285
    :cond_5a
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_88

    .line 2288
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6d

    .line 2289
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_88

    .line 2290
    :cond_6d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 2291
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 2293
    :cond_78
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2294
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_88
    :goto_88
    return-void
.end method

.method private createExpandTitle(Z)V
    .registers 8

    .line 2302
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_b5

    .line 2303
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 2304
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisible(Z)V

    .line 2305
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandTitleColorTransitEnable:Z

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTextColorTransitEnable(ZI)V

    .line 2306
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setAllTitlesClickable(Z)V

    .line 2307
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4d

    .line 2310
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4d

    .line 2311
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_4d

    .line 2313
    sget v4, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 2314
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 2316
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 2317
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    move v3, v1

    goto :goto_4e

    :cond_4d
    move v3, v2

    .line 2323
    :goto_4e
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 2324
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    iget-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v4, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2325
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_65

    goto :goto_66

    :cond_65
    move v1, v2

    :goto_66
    invoke-virtual {v0, v4, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V

    if-nez v3, :cond_73

    .line 2327
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 2329
    :cond_73
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    :goto_79
    if-nez p1, :cond_87

    .line 2332
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_b5

    .line 2334
    :cond_87
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_b5

    .line 2337
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9a

    .line 2338
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_b5

    .line 2339
    :cond_9a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 2340
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 2342
    :cond_a5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2343
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method private createSecondaryTabContainer(I)Landroid/widget/FrameLayout;
    .registers 6

    .line 1515
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1516
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1518
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    .line 1519
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 1520
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 1517
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    const/4 p1, 0x0

    .line 1522
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object v0
.end method

.method private divideHyperMenuAndSplitMenu(Landroid/view/Menu;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Landroid/util/Pair<",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation

    .line 1197
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1198
    new-instance v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1199
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 1200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1c
    if-ltz v3, :cond_45

    .line 1202
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1203
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    sget v6, Lmiuix/appcompat/R$id;->miuix_split_action_menu_group:I

    if-ne v5, v6, :cond_42

    .line 1204
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1205
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    .line 1206
    instance-of v6, v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v6, :cond_3c

    .line 1207
    check-cast v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v5, v1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setParentMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1209
    :cond_3c
    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1210
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1213
    :cond_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4b
    if-ltz p1, :cond_59

    .line 1214
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    add-int/lit8 p1, p1, -0x1

    goto :goto_4b

    .line 1218
    :cond_59
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_5f
    if-ltz p1, :cond_78

    .line 1219
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1220
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->miuix_hyper_split_parent_item:I

    if-ne v3, v4, :cond_75

    .line 1221
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1222
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    goto :goto_79

    :cond_75
    add-int/lit8 p1, p1, -0x1

    goto :goto_5f

    :cond_78
    const/4 p1, 0x0

    .line 1227
    :goto_79
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperSplitMenuEnabled:Z

    if-eqz v2, :cond_99

    if-eqz p1, :cond_99

    const/4 v2, 0x0

    .line 1228
    :goto_80
    invoke-interface {p1}, Landroid/view/SubMenu;->size()I

    move-result v3

    if-ge v2, v3, :cond_96

    .line 1229
    invoke-interface {p1, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1230
    instance-of v4, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_93

    .line 1231
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1234
    :cond_96
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1236
    :cond_99
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Landroid/util/Pair<",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation

    .line 1241
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1242
    new-instance v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1243
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 1244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1c
    if-ltz v3, :cond_45

    .line 1246
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1247
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    sget v6, Lmiuix/appcompat/R$id;->miuix_action_end_menu_group:I

    if-ne v5, v6, :cond_42

    .line 1248
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1249
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    .line 1250
    instance-of v6, v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v6, :cond_3c

    .line 1251
    check-cast v5, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v5, v1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setParentMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1253
    :cond_3c
    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1254
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1257
    :cond_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4b
    if-ltz p1, :cond_59

    .line 1258
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    add-int/lit8 p1, p1, -0x1

    goto :goto_4b

    :cond_59
    const/4 p1, 0x0

    move v2, p1

    .line 1262
    :goto_5b
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 1263
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1264
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sget v5, Lmiuix/appcompat/R$id;->miuix_hyper_split_parent_item:I

    if-ne v4, v5, :cond_75

    .line 1265
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1266
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    goto :goto_79

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_78
    const/4 v2, 0x0

    .line 1271
    :goto_79
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperSplitMenuEnabled:Z

    if-eqz v3, :cond_98

    if-eqz v2, :cond_98

    .line 1272
    :goto_7f
    invoke-interface {v2}, Landroid/view/SubMenu;->size()I

    move-result v3

    if-ge p1, v3, :cond_95

    .line 1273
    invoke-interface {v2, p1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1274
    instance-of v4, v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_92

    .line 1275
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    :cond_92
    add-int/lit8 p1, p1, 0x1

    goto :goto_7f

    .line 1278
    :cond_95
    invoke-interface {v2}, Landroid/view/SubMenu;->clear()V

    .line 1280
    :cond_98
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 3

    .line 3732
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3734
    :goto_6
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_d

    .line 3742
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object v0

    .line 3736
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 3737
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_6

    .line 3739
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionBarOverlayLayout not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private freeMainContainerChildren()Z
    .registers 2

    .line 1693
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1694
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 1696
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1697
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 1699
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1700
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x1

    return v0
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    .line 3844
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 3846
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .registers 3

    if-eqz p1, :cond_c

    const v0, 0x1020016

    .line 1681
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .registers 3

    .line 3852
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 3854
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 3860
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_42

    .line 3861
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_27

    .line 3863
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v0

    .line 3865
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3868
    :cond_27
    :goto_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3d

    .line 3869
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3871
    :cond_3d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3873
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 3877
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_42

    .line 3879
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_27

    .line 3881
    :try_start_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v0

    .line 3883
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3886
    :cond_27
    :goto_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3d

    .line 3887
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 3890
    :cond_3d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3892
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hasTabsInContainer(Landroid/view/ViewGroup;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1688
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1689
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_13

    move v0, v2

    :cond_13
    return v0
.end method

.method private hasTitle()Z
    .registers 3

    .line 2863
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    .line 2864
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2865
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 5

    const/4 v0, 0x4

    if-eqz p2, :cond_c

    .line 3835
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 3836
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_c
    if-eqz p1, :cond_17

    .line 3838
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_17

    .line 3839
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method private initExpandedHomeLayout()V
    .registers 4

    .line 3917
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_20

    .line 3918
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    .line 3919
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 3920
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    return-void
.end method

.method private initHomeLayout()V
    .registers 4

    .line 3896
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_41

    .line 3897
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3898
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3899
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3900
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3902
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_30

    .line 3903
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 3904
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 3907
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    .line 3908
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 3909
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3912
    :cond_3c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_41
    return-void
.end method

.method private initTitle()V
    .registers 4

    const/4 v0, 0x0

    .line 2195
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 2196
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitleUpView()V

    .line 2197
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 2200
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 2203
    :cond_e
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 2204
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v1, :cond_1a

    .line 2205
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 2207
    :cond_1a
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v1, :cond_2b

    .line 2208
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onHide()V

    goto :goto_2b

    :cond_22
    if-nez v1, :cond_2b

    .line 2211
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v1, :cond_2b

    .line 2212
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 2215
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 2218
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2226
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_40

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2228
    :cond_40
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 2230
    :cond_43
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2231
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private initTitleUpView()V
    .registers 5

    .line 2235
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_14

    .line 2236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 2237
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2239
    :cond_14
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    .line 2241
    :goto_25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v2, :cond_2e

    if-eqz v1, :cond_2c

    goto :goto_30

    :cond_2c
    const/4 v3, 0x4

    goto :goto_30

    :cond_2e
    const/16 v3, 0x8

    :goto_30
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2243
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2244
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private isAllTitlesEmpty()Z
    .registers 2

    .line 1769
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isShowTitle()Z
    .registers 2

    .line 2441
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isSimpleCustomNavView()Z
    .registers 5

    .line 2425
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 2426
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2427
    instance-of v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_18

    .line 2428
    check-cast v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const/4 v2, 0x0

    if-nez v0, :cond_1e

    :cond_1c
    move v1, v2

    goto :goto_2d

    .line 2430
    :cond_1e
    iget v0, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v0

    const v3, 0x800005

    if-ne v0, v3, :cond_1c

    :cond_2d
    :goto_2d
    return v1
.end method

.method private isTitleCenter()Z
    .registers 3

    .line 2436
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_16

    .line 2437
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private synthetic lambda$initTitle$4()V
    .registers 2

    .line 2220
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 2221
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v0

    .line 2222
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 2223
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .registers 3

    .line 581
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 584
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1d

    .line 585
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    if-nez v0, :cond_26

    .line 588
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_26
    return-void
.end method

.method private synthetic lambda$postRefreshTitleControllerStatus$0()V
    .registers 7

    .line 497
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_14

    .line 498
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 499
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    goto :goto_22

    :cond_14
    if-ne v0, v3, :cond_22

    .line 501
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v5, 0x14

    invoke-virtual {v0, v1, v4, v5, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 502
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    :cond_22
    :goto_22
    return-void
.end method

.method private synthetic lambda$setSubtitle$3()V
    .registers 3

    .line 1910
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_b

    .line 1911
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$updateCollapseTitle$2()V
    .registers 3

    .line 1841
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_b

    .line 1842
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_b
    return-void
.end method

.method private normalizeHorizontalGravity(IZ)I
    .registers 6

    .line 0
    const v0, 0x800007

    and-int/2addr v0, p1

    const/high16 v1, 0x800000

    and-int/2addr p1, v1

    if-nez p1, :cond_1e

    const/4 p1, 0x3

    const v1, 0x800003

    const v2, 0x800005

    if-ne v0, p1, :cond_18

    if-eqz p2, :cond_16

    :cond_14
    move v0, v2

    goto :goto_1e

    :cond_16
    :goto_16
    move v0, v1

    goto :goto_1e

    :cond_18
    const/4 p1, 0x5

    if-ne v0, p1, :cond_1e

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_1e
    :goto_1e
    return v0
.end method

.method private notifyMenuStateChange()V
    .registers 4

    .line 3078
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v0, :cond_9

    goto :goto_24

    .line 3082
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3083
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method private onLayoutCollapseViews(ZIIIII)V
    .registers 27

    move-object/from16 v7, p0

    .line 2880
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v6

    .line 2882
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 2883
    iget-object v9, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 2884
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 2886
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v12, v0, v1

    if-gtz v12, :cond_21

    return-void

    :cond_21
    sub-int v0, p4, p2

    .line 2895
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2897
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/16 v13, 0x8

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v7, :cond_48

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_48

    .line 2898
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2899
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2902
    :cond_48
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_5e

    .line 2903
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2904
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2907
    :cond_5e
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_7d

    .line 2908
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_7d

    .line 2909
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v2, v0, v2

    invoke-virtual {v7, v1, v2, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2911
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_7d
    move v14, v0

    .line 2914
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_97

    .line 2915
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    move/from16 v16, v0

    goto :goto_99

    :cond_97
    const/16 v16, 0x0

    .line 2918
    :goto_99
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_a1

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    :goto_9f
    move-object v1, v0

    goto :goto_a4

    :cond_a1
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_9f

    :goto_a4
    if-eqz v1, :cond_c1

    .line 2919
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c1

    .line 2920
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v17

    add-int v2, v6, v17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v3, v8

    move v4, v12

    .line 2921
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v0, v17

    :goto_bd
    add-int/2addr v6, v0

    :cond_be
    move/from16 v17, v6

    goto :goto_d8

    .line 2922
    :cond_c1
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_be

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_be

    .line 2923
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_bd

    .line 2926
    :goto_d8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v6, 0x1

    if-nez v0, :cond_1a5

    .line 2927
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v18

    if-nez v18, :cond_ee

    .line 2929
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_ec

    goto :goto_ee

    :cond_ec
    move v15, v6

    goto :goto_126

    .line 2930
    :cond_ee
    :goto_ee
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_ec

    .line 2931
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v0, :cond_110

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v0, :cond_101

    goto :goto_110

    .line 2933
    :cond_101
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    move v15, v6

    goto :goto_124

    .line 2932
    :cond_110
    :goto_110
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    iget v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v8

    move/from16 v19, v4

    move v4, v12

    move v15, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildWithOffset(Landroid/view/View;IIIZI)I

    move-result v0

    :goto_124
    add-int v17, v17, v0

    :goto_126
    if-eqz v18, :cond_18a

    if-eqz v9, :cond_18a

    add-int v6, v17, v16

    .line 2941
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 2943
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_13d

    .line 2944
    invoke-direct {v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    goto :goto_13e

    :cond_13d
    move v0, v6

    .line 2946
    :goto_13e
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canCollapseTitleBeShown()Z

    move-result v1

    iput-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 2947
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 2949
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 2951
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v6

    if-le v2, v14, :cond_156

    move v2, v6

    :goto_154
    move v4, v14

    goto :goto_16c

    :cond_156
    if-le v1, v14, :cond_160

    .line 2956
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v14, v0

    move v2, v0

    goto :goto_154

    :cond_160
    if-ge v0, v6, :cond_16a

    .line 2959
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v6

    move v4, v0

    move v2, v6

    goto :goto_16c

    :cond_16a
    move v2, v0

    move v4, v1

    .line 2962
    :goto_16c
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v12, v0

    .line 2963
    div-int/lit8 v1, v1, 0x2

    add-int v3, v8, v1

    add-int v5, v3, v0

    move-object/from16 v0, p0

    move-object v1, v9

    .line 2964
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :goto_17e
    move/from16 v17, v6

    goto :goto_18a

    .line 2966
    :cond_181
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleGapPaddingStart:I

    add-int/2addr v0, v6

    invoke-virtual {v7, v9, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_17e

    .line 2970
    :cond_18a
    :goto_18a
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq v0, v15, :cond_18f

    goto :goto_1a6

    .line 2974
    :cond_18f
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1a6

    if-eqz v18, :cond_199

    .line 2976
    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int v17, v17, v1

    :cond_199
    move/from16 v1, v17

    .line 2978
    invoke-virtual {v7, v0, v1, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v2

    add-int v17, v1, v0

    goto :goto_1a6

    :cond_1a5
    move v15, v6

    .line 2985
    :cond_1a6
    :goto_1a6
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_1ae

    goto :goto_1b9

    .line 2987
    :cond_1ae
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b8

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1b8

    goto :goto_1b9

    :cond_1b8
    move-object v0, v1

    :goto_1b9
    if-eqz v0, :cond_28a

    .line 2991
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v13, :cond_28a

    .line 2992
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2993
    instance-of v4, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v4, :cond_1cc

    .line 2994
    move-object v1, v3

    check-cast v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_1cc
    if-eqz v1, :cond_1d1

    .line 2996
    iget v3, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_1d4

    :cond_1d1
    const v3, 0x800013

    .line 2997
    :goto_1d4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-eqz v1, :cond_1ec

    .line 3002
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    add-int v17, v17, v5

    .line 3003
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    sub-int/2addr v14, v5

    .line 3004
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3005
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v6, v17

    goto :goto_1f0

    :cond_1ec
    move/from16 v6, v17

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1f0
    const v8, 0x800007

    and-int/2addr v8, v3

    const/4 v9, -0x1

    const v12, 0x800005

    const v13, 0x800003

    if-ne v8, v15, :cond_20d

    .line 3011
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v4

    div-int/lit8 v2, v16, 0x2

    if-ge v2, v6, :cond_208

    goto :goto_20f

    :cond_208
    add-int/2addr v2, v4

    if-le v2, v14, :cond_210

    move v8, v12

    goto :goto_210

    :cond_20d
    if-ne v3, v9, :cond_210

    :goto_20f
    move v8, v13

    .line 3021
    :cond_210
    :goto_210
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    .line 3022
    invoke-direct {v7, v8, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v8

    if-eq v8, v15, :cond_223

    if-eq v8, v13, :cond_22a

    if-eq v8, v12, :cond_220

    move v6, v2

    goto :goto_22a

    :cond_220
    sub-int v6, v14, v4

    goto :goto_22a

    .line 3024
    :cond_223
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v6, v2, 0x2

    :cond_22a
    :goto_22a
    and-int/lit8 v2, v3, 0x70

    if-ne v3, v9, :cond_230

    const/16 v2, 0x10

    :cond_230
    const/16 v3, 0x10

    if-eq v2, v3, :cond_256

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24f

    const/16 v3, 0x50

    if-eq v2, v3, :cond_23e

    const/4 v15, 0x0

    goto :goto_26b

    .line 3051
    :cond_23e
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v2, p6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v15, v2, v1

    goto :goto_26b

    .line 3048
    :cond_24f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int v15, v1, v5

    goto :goto_26b

    .line 3043
    :cond_256
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 3044
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v2, p6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 3045
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v15, v2, 0x2

    .line 3055
    :goto_26b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v11, :cond_278

    .line 3056
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int/2addr v2, v1

    goto :goto_279

    :cond_278
    move v2, v6

    :goto_279
    if-eqz v11, :cond_281

    .line 3057
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    goto :goto_282

    :cond_281
    add-int/2addr v1, v6

    .line 3058
    :goto_282
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v0, v2, v15, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 3061
    :cond_28a
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2a6

    .line 3062
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 3063
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3064
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    .line 3065
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 3064
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_2a6
    if-lez p6, :cond_2be

    .line 3069
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int v2, v0, v1

    .line 3070
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    add-int v5, p5, p6

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p5

    .line 3071
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_2be
    return-void
.end method

.method private pendingCreateTitle()V
    .registers 5

    .line 2248
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2251
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 2252
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_22

    .line 2254
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v1, :cond_18

    .line 2255
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 2256
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 2258
    :cond_18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v1, :cond_1f

    .line 2259
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 2261
    :cond_1f
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 2263
    :cond_22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_47

    .line 2264
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2265
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2266
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_47
    return-void
.end method

.method private postRefreshTitleControllerStatus()V
    .registers 2

    .line 496
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeMenuViewFromOldParent(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 1473
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private removeTabsFromContainer()V
    .registers 4

    .line 915
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 916
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 917
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 918
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 920
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 921
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 923
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3b

    .line 924
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 925
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 926
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 928
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 929
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 931
    :cond_3b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_52

    .line 932
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 933
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 936
    :cond_52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_69

    .line 937
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 938
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 943
    :cond_69
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_77

    .line 944
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 946
    :cond_77
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 947
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    .line 2351
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 2355
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2356
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    if-eqz p1, :cond_14

    .line 2359
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_14
    return-void
.end method

.method private scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V
    .registers 2

    .line 1411
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 6

    .line 1779
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v0

    .line 1780
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1782
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 1783
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 1784
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    move-result v1

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    if-eqz v1, :cond_1a

    return-void

    .line 1791
    :cond_1a
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 1792
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 1793
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v1

    .line 1794
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1795
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v3, :cond_2e

    .line 1796
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1798
    :cond_2e
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v3, :cond_35

    .line 1799
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_35
    const/4 p1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4e

    if-nez v1, :cond_4e

    .line 1803
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    if-ne v0, p1, :cond_42

    move v2, v3

    :cond_42
    if-nez v2, :cond_4a

    .line 1804
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 1805
    :cond_4a
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    goto :goto_a3

    :cond_4e
    if-nez v0, :cond_a3

    if-eqz v1, :cond_a3

    .line 1809
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    if-ne v0, p1, :cond_5a

    move p1, v3

    goto :goto_5b

    :cond_5a
    move p1, v2

    :goto_5b
    if-eqz p1, :cond_63

    .line 1810
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 1812
    :cond_63
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p1, :cond_72

    .line 1813
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_72

    move v2, v3

    .line 1815
    :cond_72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_83

    if-nez v2, :cond_83

    .line 1816
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_83

    goto :goto_84

    :cond_83
    move v3, v2

    :goto_84
    if-eqz v3, :cond_a3

    .line 1821
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 1822
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p1, :cond_96

    .line 1823
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1825
    :cond_96
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_a3

    .line 1826
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private setTitleVisibility(Z)V
    .registers 7

    .line 3664
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    .line 3665
    :goto_c
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 3667
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v3, 0x4

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v3

    .line 3669
    :goto_19
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 3672
    :cond_1c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_44

    .line 3673
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, p1, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_31

    move v0, v4

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v4, v2

    .line 3675
    :goto_38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_41

    if-eqz v0, :cond_40

    move v1, v2

    goto :goto_41

    :cond_40
    move v1, v3

    :cond_41
    :goto_41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3677
    :cond_44
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    goto :goto_51

    :cond_4f
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 3678
    :goto_51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3679
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3680
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    .line 3678
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;)V
    .registers 5

    .line 847
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 848
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 849
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    .line 850
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz p3, :cond_f

    .line 852
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-interface {p3, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->setParentBlurEnabled(Z)V

    .line 854
    :cond_f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz p1, :cond_18

    .line 855
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-interface {p1, p2}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->setParentBlurEnabled(Z)V

    :cond_18
    return-void
.end method

.method private shouldMeasureCollapseTabContainer()Z
    .registers 2

    .line 1527
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1528
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_14

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1529
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private shouldMeasureMovableTabContainer()Z
    .registers 2

    .line 1533
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 1534
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_14

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1535
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private shouldTitleVisible()Z
    .registers 2

    .line 1773
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_12

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_12

    .line 1775
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private showContainerInFinishActionMode()V
    .registers 5

    .line 4334
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 4335
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, v2, v2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_2a

    .line 4336
    :cond_11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2a

    .line 4337
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4338
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4339
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, v2, v2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 3824
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 3825
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_1a

    .line 3828
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_1a

    .line 3829
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method private updateBackInvokedCallbackState()V
    .registers 4

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_45

    .line 605
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 606
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 608
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_37

    .line 610
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v2, :cond_37

    .line 611
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_2c

    .line 612
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_2c
    const v1, 0xf4240

    .line 614
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    .line 616
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_45

    :cond_37
    if-nez v1, :cond_45

    .line 617
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_45

    .line 618
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticApiModelOutline1;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    :cond_45
    :goto_45
    return-void
.end method

.method private updateBadgeOnMenuItemViews()V
    .registers 3

    .line 1187
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_5

    return-void

    .line 1190
    :cond_5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemViews()V

    .line 1191
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    if-eqz v1, :cond_13

    .line 1192
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->updateBadgeOnMoreButton()V

    :cond_13
    return-void
.end method

.method private updateCollapseTitle()V
    .registers 3

    .line 1834
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_26

    .line 1835
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1836
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 1838
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1839
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1840
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method private updateExpandTitle()V
    .registers 4

    .line 1849
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_2f

    .line 1850
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-eqz v0, :cond_19

    .line 1852
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 1854
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1856
    :goto_1a
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    if-nez v0, :cond_28

    .line 1858
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1860
    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_2f
    return-void
.end method

.method private updateExpandTitleOnShowCustom()Z
    .registers 5

    .line 1865
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1866
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    .line 1868
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v2, :cond_6a

    .line 1869
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1870
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1871
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1872
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1875
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 1877
    :cond_40
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1878
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1879
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1880
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1882
    :goto_56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_63

    .line 1883
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 1885
    :cond_63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    :cond_6a
    const/4 v0, 0x1

    return v0

    :cond_6c
    return v1
.end method

.method private updateProgressBars(I)V
    .registers 7

    .line 3777
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 3778
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x2710

    if-ne p1, v2, :cond_29

    if-eqz v1, :cond_23

    .line 3782
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 3783
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-nez v2, :cond_1f

    if-ge p1, v4, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x4

    goto :goto_20

    :cond_1f
    :goto_1f
    move p1, v3

    .line 3785
    :goto_20
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_23
    if-eqz v0, :cond_5e

    .line 3788
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5e

    :cond_29
    const/4 v2, -0x2

    if-ne p1, v2, :cond_39

    const/16 p1, 0x8

    if-eqz v1, :cond_33

    .line 3792
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_33
    if-eqz v0, :cond_5e

    .line 3795
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5e

    :cond_39
    const/4 v2, -0x3

    if-ne p1, v2, :cond_43

    if-eqz v1, :cond_5e

    const/4 p1, 0x1

    .line 3799
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_5e

    :cond_43
    const/4 v2, -0x4

    if-ne p1, v2, :cond_4c

    if-eqz v1, :cond_5e

    .line 3803
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_5e

    :cond_4c
    if-ltz p1, :cond_5e

    if-gt p1, v4, :cond_5e

    if-eqz v1, :cond_5e

    .line 3810
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v4, :cond_5b

    .line 3813
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_5e

    .line 3815
    :cond_5b
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private updateTabsLayoutParams()V
    .registers 4

    .line 951
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_10

    .line 952
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 954
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 955
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 958
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1e

    .line 959
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 961
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 962
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 965
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_30

    .line 966
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 968
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 969
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 972
    :cond_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_42

    .line 973
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 975
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 976
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_42
    return-void
.end method

.method private updateTightTitle()V
    .registers 6

    .line 2410
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    .line 2411
    :goto_12
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_24

    if-nez v0, :cond_22

    .line 2413
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v0, :cond_24

    :cond_22
    move v0, v3

    goto :goto_25

    :cond_24
    move v0, v1

    .line 2414
    :goto_25
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v4, :cond_2c

    .line 2415
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    :cond_2c
    if-eqz v2, :cond_2f

    move v1, v3

    .line 2418
    :cond_2f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_36

    .line 2419
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    :cond_36
    return-void
.end method

.method private updateTitleCenter()V
    .registers 3

    .line 2446
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_b

    .line 2447
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .registers 2

    .line 1658
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    .line 1659
    :cond_6
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :goto_8
    if-eqz v0, :cond_d

    .line 1661
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_d
    return-void
.end method

.method protected createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .registers 7

    .line 3689
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz p2, :cond_12

    .line 3692
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    invoke-direct {p2, v1, v0, v2, v3}, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    goto :goto_1d

    .line 3697
    :cond_12
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    invoke-direct {p2, v1, v0, v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    .line 3702
    :goto_1d
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 3703
    sget p1, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object p2
.end method

.method protected createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
    .registers 10

    .line 3709
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v2

    if-eqz p2, :cond_17

    .line 3712
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_layout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_layout:I

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    goto :goto_27

    .line 3719
    :cond_17
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_layout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_layout:I

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 3726
    :goto_27
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 3727
    sget p1, Lmiuix/appcompat/R$id;->miuix_action_end_menu_presenter:I

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object p2
.end method

.method protected createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 3

    .line 3746
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2191
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 3182
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    if-nez p1, :cond_6

    .line 3188
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getBottomMenuCustomViewOffset()I
    .registers 3

    .line 1179
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_d

    .line 1180
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getBottomMenuCustomViewOffset()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 2

    .line 4385
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 4386
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 4388
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object v0
.end method

.method public getCollapsedHeight()I
    .registers 2

    .line 810
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .registers 2

    .line 2176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 2184
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .line 2164
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .line 2172
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEndActionMenuItemLimit()I
    .registers 2

    .line 2398
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    return v0
.end method

.method public getEndMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 2

    .line 1145
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    .line 1735
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getExpandState()I
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 2

    .line 4393
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 4394
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 4396
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object v0
.end method

.method public getExpandedHeight()I
    .registers 2

    .line 814
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    return v0
.end method

.method public getHyperMenuPrimaryCheckedData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1586
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    if-eqz v1, :cond_d

    .line 1587
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->getHyperPrimaryCheckedData()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyperMenuSecondaryCheckedData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    if-eqz v1, :cond_d

    .line 1594
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->getHyperSecondaryCheckedData()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyperSplitMenuPrimaryCheckedData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    if-eqz v1, :cond_d

    .line 1614
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;->getHyperSplitMenuPrimaryCheckedMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHyperSplitMenuSecondaryCheckedData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1621
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    if-eqz v1, :cond_d

    .line 1622
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/HyperSplitActionMenuPresenter;->getHyperSplitMenuSecondaryCheckedMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 2180
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    .line 1718
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1893
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1739
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .line 1539
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 5

    .line 710
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 711
    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 712
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 714
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .registers 2

    .line 2376
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isEndActionMenuEnable()Z
    .registers 2

    .line 730
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    return v0
.end method

.method public isEndOverflowMenuShowing()Z
    .registers 2

    .line 1501
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .registers 2

    .line 796
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .registers 2

    .line 806
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isUserSetEndActionMenuItemLimit()Z
    .registers 2

    .line 2406
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    return v0
.end method

.method public bridge synthetic isUserSetExpandState()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result v0

    return v0
.end method

.method protected makeMenuViewShowHide(Z)V
    .registers 6

    .line 1380
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 1383
    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    if-ne p1, v0, :cond_a

    return-void

    .line 1386
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v0, :cond_17

    .line 1387
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 1399
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 1400
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    .line 1401
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2b

    const/4 v3, 0x0

    goto :goto_2c

    :cond_2b
    int-to-float v3, v1

    :goto_2c
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 1402
    :goto_33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    .line 1403
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 1404
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_45

    .line 1405
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    xor-int/lit8 p1, p1, 0x1

    .line 1406
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    :cond_45
    return-void
.end method

.method protected makeMenuViewShowHideWithAnimation(Z)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1305
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    if-ne p1, v2, :cond_7

    return-void

    .line 1308
    :cond_7
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v2, :cond_14

    .line 1309
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 1321
    :cond_14
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 1322
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 1323
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v3, :cond_1d

    return-void

    .line 1327
    :cond_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v2, :cond_2b

    move v4, v1

    goto :goto_2f

    .line 1328
    :cond_2b
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    :goto_2f
    if-eqz p1, :cond_34

    move v5, v1

    move p1, v4

    goto :goto_36

    :cond_34
    move p1, v1

    move v5, v4

    :goto_36
    if-eqz v2, :cond_9e

    .line 1339
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v6, :cond_4e

    .line 1340
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_a0

    const/4 v8, -0x2

    invoke-virtual {v6, v8, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    iput-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1342
    :cond_4e
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    if-eqz v6, :cond_5b

    .line 1343
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v6

    invoke-virtual {v7, v6}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1345
    :cond_5b
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;

    invoke-direct {v7, p0, v3, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object v7, v3, v1

    invoke-virtual {v6, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    int-to-float p1, p1

    .line 1369
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1370
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v3, "menu_end_state"

    invoke-direct {p1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, v5

    invoke-virtual {p1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 1371
    new-array v3, v0, [Landroid/view/View;

    aput-object v2, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 1372
    instance-of p1, v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz p1, :cond_9e

    .line 1373
    check-cast v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 1374
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    xor-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    :cond_9e
    return-void

    nop

    :array_a0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public onActionModeEnd(Z)V
    .registers 8

    const/4 v0, 0x0

    .line 4247
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4248
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2c

    .line 4249
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4250
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    .line 4251
    const-string v1, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_90

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4252
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    .line 4253
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4254
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4256
    :cond_2c
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 4257
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_42

    .line 4258
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4259
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_53

    .line 4260
    :cond_42
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v1

    if-ne v1, v4, :cond_53

    .line 4261
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4262
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4264
    :cond_53
    :goto_53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_5a

    .line 4265
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4267
    :cond_5a
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v1, :cond_61

    .line 4268
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4270
    :cond_61
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_68

    .line 4271
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4273
    :cond_68
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v1, :cond_7f

    .line 4274
    sget v5, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 4275
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    if-eqz v1, :cond_7a

    .line 4277
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    goto :goto_7f

    .line 4279
    :cond_7a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_7f
    :goto_7f
    if-eqz p1, :cond_8e

    .line 4283
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4284
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4285
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    :cond_8e
    return-void

    nop

    :array_90
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onActionModeStart(ZZ)V
    .registers 6

    const/4 v0, 0x1

    .line 4212
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4213
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v1, 0x0

    if-nez p1, :cond_18

    .line 4215
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4216
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4217
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    goto :goto_22

    .line 4219
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4220
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4222
    :goto_22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_29

    .line 4223
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4225
    :cond_29
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_30

    .line 4226
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4228
    :cond_30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_37

    .line 4229
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4231
    :cond_37
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz p1, :cond_4e

    .line 4232
    sget v2, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 4233
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    if-eqz p1, :cond_49

    .line 4235
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    goto :goto_4e

    .line 4237
    :cond_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4e
    :goto_4e
    if-eqz p2, :cond_5b

    .line 4241
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4242
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_5b
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4022
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v2, :cond_9

    .line 4023
    invoke-interface {v2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_9
    if-ne p1, v1, :cond_17

    .line 4026
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_1b

    :cond_17
    if-nez p1, :cond_1b

    .line 4028
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4030
    :cond_1b
    :goto_1b
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    new-array v3, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v3, v0

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    if-ne p2, v1, :cond_39

    .line 4034
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr v2, v3

    goto :goto_3a

    :cond_39
    move v2, v0

    :goto_3a
    if-ne p2, v1, :cond_43

    .line 4037
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_4a

    :cond_43
    if-nez p2, :cond_4a

    .line 4039
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4042
    :cond_4a
    :goto_4a
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-interface {p2, v0, v1}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4043
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "actionbar_state_change"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    .line 4044
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 626
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 627
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 628
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 629
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    .line 509
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 512
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarStyle()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 513
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 514
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 515
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarMaxSizeInLargeFont:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_large_font_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 516
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 517
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_49

    move v2, v4

    goto :goto_4a

    :cond_49
    move v2, v3

    :goto_4a
    if-eqz v1, :cond_4f

    if-eqz v2, :cond_4f

    goto :goto_51

    .line 518
    :cond_4f
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    :goto_51
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 519
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 520
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 521
    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 522
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 524
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_79

    .line 525
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_72

    .line 526
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    :cond_72
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_79

    .line 529
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 532
    :cond_79
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 534
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_bf

    .line 535
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 537
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 538
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 539
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 540
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 541
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 543
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 544
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_padding_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleGapPaddingStart:I

    .line 547
    :cond_bf
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 548
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    goto :goto_d4

    :cond_d2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 549
    :goto_d4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 550
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 549
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 554
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 555
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_108

    .line 557
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 558
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 559
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 556
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 562
    :cond_108
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_121

    .line 564
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 565
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 566
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 563
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 571
    :cond_121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    .line 572
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 574
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 576
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz p1, :cond_147

    .line 577
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 580
    :cond_147
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 634
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 635
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 636
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 637
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 639
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1c

    .line 640
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 641
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 643
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 644
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 645
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method protected onExpandStateChanged(II)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 3972
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3973
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_14

    .line 3974
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_14
    if-ne p2, v2, :cond_1d

    .line 3978
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_1d

    .line 3979
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1d
    const/high16 p1, 0x3f800000    # 1.0f

    if-ne p2, v0, :cond_43

    .line 3983
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    .line 3984
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v2, :cond_35

    const/16 v4, 0x14

    .line 3985
    invoke-virtual {v2, v3, v1, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3987
    :cond_35
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v2, :cond_3c

    .line 3988
    invoke-virtual {v2, p1, v1, v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3991
    :cond_3c
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v2, :cond_43

    .line 3992
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_43
    if-nez p2, :cond_64

    .line 3997
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v2, :cond_5a

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-nez v3, :cond_5a

    .line 3998
    invoke-virtual {v2, p1, v1, v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3999
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4000
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    .line 4002
    :cond_5a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_70

    const/16 v2, 0x8

    .line 4003
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_70

    .line 4006
    :cond_64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int/2addr p1, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4008
    :cond_70
    :goto_70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9e

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    if-ne p1, p2, :cond_80

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    if-eq p1, p2, :cond_9e

    .line 4010
    :cond_80
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_86
    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-ne p2, v0, :cond_98

    .line 4012
    invoke-interface {v2, v0}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_86

    :cond_98
    if-nez p2, :cond_86

    .line 4014
    invoke-interface {v2, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_86

    :cond_9e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    move-object v8, p0

    .line 2767
    iget v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2768
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v8, :cond_21

    .line 2769
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_21
    move v5, v0

    .line 2771
    iget v6, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 2772
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2773
    iget v7, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 2775
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 2776
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_3b

    :cond_34
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    add-int v1, v0, v7

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    sub-int v2, p5, p3

    sub-int v9, v2, v7

    sub-int v10, v9, v1

    add-int v2, v0, v7

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2786
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2787
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_57

    if-nez v0, :cond_57

    move v11, v2

    goto :goto_58

    :cond_57
    move v11, v1

    :goto_58
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v4, p4

    .line 2791
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    move v3, v10

    move v5, v9

    move v6, v7

    move v7, v11

    .line 2792
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 2793
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->notifyMenuStateChange()V

    .line 2794
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-nez v0, :cond_76

    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-nez v0, :cond_76

    .line 2796
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 2798
    :cond_76
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 2799
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIIIIF)V
    .registers 24

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 3088
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3091
    :cond_f
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3092
    iget-object v10, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p7

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3094
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    const/4 v11, 0x0

    if-gtz v1, :cond_27

    .line 3097
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    goto :goto_28

    :cond_27
    move v1, v11

    :goto_28
    if-eqz v0, :cond_36

    .line 3100
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_36

    .line 3101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    move v12, v2

    goto :goto_37

    :cond_36
    move v12, v11

    .line 3103
    :goto_37
    iget v13, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int v2, p3, v12

    add-int/2addr v2, v13

    sub-int/2addr v2, v9

    add-int v14, v2, v1

    const/4 v15, 0x0

    if-eqz v0, :cond_95

    .line 3106
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_95

    iget v1, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v1, :cond_95

    sub-int v1, v9, v12

    .line 3108
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 3110
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3111
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_63

    :cond_62
    move-object v0, v15

    :goto_63
    if-eqz v0, :cond_87

    .line 3114
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 3115
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3116
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v1, v8, v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3118
    :cond_76
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 3120
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 3121
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    add-int/2addr v4, v5

    .line 3118
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 3123
    :cond_87
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    add-int v5, v12, v13

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_95
    if-lez v13, :cond_fb

    .line 3129
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_fb

    .line 3131
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v0, v1

    add-int v2, v7, v0

    add-int v5, v9, p6

    sub-int v3, v5, v13

    .line 3136
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 3133
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 3138
    invoke-direct {v6, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 3139
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    :cond_bf
    if-eqz v15, :cond_e6

    .line 3143
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 3144
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 3145
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3146
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    goto :goto_df

    :cond_dd
    move v1, v0

    move v0, v11

    .line 3148
    :goto_df
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v15, v0, v11, v1, v2}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    :cond_e6
    if-lt v12, v13, :cond_ed

    sub-int v0, v12, v13

    sub-int/2addr v14, v0

    :goto_eb
    move v3, v14

    goto :goto_ef

    :cond_ed
    sub-int/2addr v14, v12

    goto :goto_eb

    :goto_ef
    add-int v5, v12, v13

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p2

    move/from16 v4, p4

    .line 3154
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_fb
    return-void
.end method

.method protected onMeasure(II)V
    .registers 25

    move-object/from16 v0, p0

    .line 2453
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    const/16 v5, 0x8

    if-ge v3, v1, :cond_26

    .line 2456
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2457
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_23

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v6, v5, :cond_21

    .line 2458
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_23

    :cond_21
    add-int/lit8 v4, v4, 0x1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_26
    const/4 v1, 0x1

    if-nez v4, :cond_2f

    .line 2465
    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2466
    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    .line 2470
    :cond_2f
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 2472
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 2473
    iget v4, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 2474
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 2476
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 2477
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    .line 2478
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v9

    if-lez v4, :cond_4e

    move v10, v4

    goto :goto_52

    .line 2480
    :cond_4e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    :goto_52
    sub-int/2addr v10, v7

    const/high16 v11, -0x80000000

    .line 2482
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    sub-int v13, v3, v8

    sub-int/2addr v13, v9

    .line 2486
    div-int/lit8 v14, v13, 0x2

    .line 2494
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v15

    .line 2496
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_81

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_81

    .line 2497
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v0, v1, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2498
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v8, v1

    .line 2499
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v7

    goto :goto_82

    :cond_81
    move v1, v2

    .line 2501
    :goto_82
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v11, :cond_a4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v5, :cond_a4

    .line 2502
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v0, v11, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2503
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v9, v11

    .line 2504
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 2505
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 2504
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2508
    :cond_a4
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v11, :cond_d5

    .line 2509
    sget v5, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 2510
    invoke-virtual {v11, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 2512
    invoke-virtual {v5, v2, v2}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressVisibility(ZI)V

    .line 2513
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-eq v5, v11, :cond_d5

    .line 2514
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, v5, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2515
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    .line 2516
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2517
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 2516
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2521
    :cond_d5
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v5, :cond_e1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_e1

    .line 2522
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 2524
    :cond_e1
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v5, :cond_ed

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_ed

    .line 2525
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 2528
    :cond_ed
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_f4

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_f6

    :cond_f4
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2530
    :goto_f6
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v11, :cond_102

    if-eqz v5, :cond_102

    const/16 v11, 0x8

    .line 2531
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_104

    :cond_102
    const/16 v11, 0x8

    :goto_104
    if-eqz v5, :cond_146

    .line 2534
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_146

    .line 2535
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2537
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_11b

    const/high16 v11, -0x80000000

    .line 2538
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_121

    :cond_11b
    const/high16 v11, 0x40000000    # 2.0f

    .line 2540
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2542
    :goto_121
    invoke-virtual {v5, v2, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2543
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v11

    add-int/2addr v2, v11

    sub-int/2addr v13, v2

    const/4 v11, 0x0

    .line 2544
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v16, v10

    sub-int v10, v13, v2

    .line 2545
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v8, v2

    .line 2548
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2547
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_149

    :cond_146
    move/from16 v16, v10

    move v10, v14

    .line 2552
    :goto_149
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_181

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_181

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_181

    .line 2553
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2555
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v14, v2

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2556
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 2557
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 2558
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2557
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2561
    :cond_181
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x2

    if-eqz v2, :cond_1b9

    .line 2562
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v11, 0x8

    if-eq v2, v11, :cond_1b9

    .line 2563
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v11, v5

    invoke-virtual {v0, v2, v13, v12, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2565
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 2566
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v14, v2

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v5

    sub-int/2addr v14, v2

    const/4 v2, 0x0

    .line 2565
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2567
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 2568
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 2569
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2568
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2572
    :cond_1b9
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 2575
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 2578
    :cond_1c2
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v11, :cond_1d1

    if-nez v2, :cond_1d4

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_1d1

    goto :goto_1d4

    :cond_1d1
    move/from16 v17, v15

    goto :goto_21a

    .line 2580
    :cond_1d4
    :goto_1d4
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v11, :cond_1d1

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1d1

    .line 2581
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 2582
    iget-boolean v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v5, :cond_1ed

    iget-boolean v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v5, :cond_1e9

    goto :goto_1ed

    :cond_1e9
    move/from16 v17, v15

    const/4 v5, 0x0

    goto :goto_1f4

    :cond_1ed
    :goto_1ed
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    move/from16 v17, v15

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    add-int/2addr v5, v15

    .line 2581
    :goto_1f4
    invoke-virtual {v0, v11, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2583
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v11, :cond_209

    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v11, :cond_207

    goto :goto_209

    :cond_207
    const/4 v11, 0x0

    goto :goto_20e

    :cond_209
    :goto_209
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    add-int/2addr v11, v15

    :goto_20e
    add-int/2addr v5, v11

    add-int/2addr v8, v5

    .line 2584
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 2590
    :goto_21a
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v1, :cond_220

    goto :goto_22c

    .line 2592
    :cond_220
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_22b

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_22b

    goto :goto_22c

    :cond_22b
    move-object v1, v5

    .line 2597
    :goto_22c
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v7, :cond_238

    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v7, :cond_235

    goto :goto_238

    :cond_235
    const/16 v7, 0x8

    goto :goto_23f

    :cond_238
    :goto_238
    if-eqz v1, :cond_235

    const/16 v7, 0x8

    .line 2598
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_23f
    if-eqz v1, :cond_327

    .line 2602
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_327

    .line 2604
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v7, :cond_259

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v11, 0x4

    if-ne v7, v11, :cond_259

    .line 2605
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    goto :goto_25a

    :cond_259
    const/4 v7, 0x0

    .line 2607
    :goto_25a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2608
    instance-of v15, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v15, :cond_269

    .line 2609
    move-object v5, v11

    check-cast v5, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_269
    if-eqz v5, :cond_27a

    .line 2614
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v3

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v15

    .line 2615
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v3

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v15

    goto :goto_27f

    :cond_27a
    move/from16 v18, v3

    const/4 v3, 0x0

    const/16 v19, 0x0

    :goto_27f
    if-gtz v4, :cond_286

    move/from16 v20, v8

    const/high16 v15, -0x80000000

    goto :goto_291

    .line 2624
    :cond_286
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v15, :cond_28d

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_28f

    :cond_28d
    const/high16 v15, -0x80000000

    :goto_28f
    move/from16 v20, v8

    .line 2627
    :goto_291
    iget v8, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v9

    const/4 v9, -0x1

    if-ltz v8, :cond_29f

    if-lez v4, :cond_2a9

    .line 2628
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_2a9

    :cond_29f
    if-ne v8, v9, :cond_2a7

    .line 2629
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v16, v4

    :cond_2a7
    sub-int v8, v16, v3

    .line 2630
    :cond_2a9
    :goto_2a9
    iget v3, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2b1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_2b3

    :cond_2b1
    const/high16 v4, -0x80000000

    :goto_2b3
    if-ltz v3, :cond_2bc

    add-int v9, v13, v7

    .line 2634
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2be

    :cond_2bc
    add-int v3, v13, v7

    :goto_2be
    sub-int v3, v3, v19

    const/4 v9, 0x0

    .line 2632
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v5, :cond_2ca

    .line 2637
    iget v5, v5, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_2cd

    :cond_2ca
    const v5, 0x800013

    :goto_2cd
    const v9, 0x800007

    and-int/2addr v5, v9

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2df

    .line 2642
    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_2df

    .line 2643
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    .line 2645
    :cond_2df
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v5, :cond_308

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_308

    int-to-float v3, v3

    .line 2646
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v9

    mul-float/2addr v5, v10

    iget v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    int-to-float v9, v9

    iget-object v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2647
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 2650
    :cond_308
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2651
    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2649
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 2652
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v19, v3

    sub-int v19, v19, v7

    sub-int v13, v13, v19

    .line 2653
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_325
    const/4 v11, 0x0

    goto :goto_351

    :cond_327
    move/from16 v18, v3

    move/from16 v20, v8

    move/from16 v21, v9

    .line 2654
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_340

    const/4 v4, 0x0

    .line 2655
    invoke-virtual {v0, v3, v13, v12, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 2656
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_325

    :cond_340
    if-eqz v1, :cond_34f

    .line 2657
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_34f

    if-nez v2, :cond_34f

    move v1, v6

    const/4 v11, 0x1

    goto :goto_351

    :cond_34f
    move v1, v6

    goto :goto_325

    .line 2666
    :goto_351
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_394

    if-eqz v2, :cond_394

    .line 2668
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v3

    if-eqz v3, :cond_381

    move/from16 v8, v20

    move/from16 v9, v21

    if-le v8, v9, :cond_368

    const/4 v3, 0x2

    mul-int/2addr v8, v3

    sub-int v3, v18, v8

    goto :goto_369

    :cond_368
    move v3, v13

    .line 2672
    :goto_369
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    .line 2673
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2672
    invoke-virtual {v4, v3, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2676
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v13, v3

    goto :goto_389

    :cond_381
    const/4 v5, 0x0

    .line 2678
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    move v13, v3

    .line 2681
    :goto_389
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_395

    :cond_394
    move v3, v6

    .line 2685
    :goto_395
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_3b6

    if-eqz v17, :cond_3a1

    const/4 v4, 0x0

    goto :goto_3a3

    :cond_3a1
    const/high16 v4, 0x40000000    # 2.0f

    .line 2687
    :goto_3a3
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    move/from16 v7, v18

    const/high16 v8, -0x80000000

    .line 2688
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v8, 0x0

    .line 2689
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2687
    invoke-virtual {v5, v9, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_3b9

    :cond_3b6
    move/from16 v7, v18

    const/4 v8, 0x0

    .line 2692
    :goto_3b9
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureCollapseTabContainer()Z

    move-result v4

    .line 2693
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureMovableTabContainer()Z

    move-result v5

    .line 2695
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 2696
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    .line 2697
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v9, :cond_3e8

    invoke-virtual {v9}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v9

    if-eqz v9, :cond_3e8

    .line 2698
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v9}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    const/4 v8, 0x0

    goto :goto_3eb

    :cond_3e8
    const/4 v8, 0x0

    .line 2700
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 2702
    :goto_3eb
    iget v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v9, v10

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int v9, v7, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2703
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v10

    sub-int v10, v7, v14

    if-eqz v5, :cond_41a

    .line 2705
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/high16 v14, 0x40000000    # 2.0f

    .line 2706
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2707
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 2705
    invoke-virtual {v5, v9, v15}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2708
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    .line 2709
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    goto :goto_41d

    :cond_41a
    const/high16 v14, 0x40000000    # 2.0f

    move v5, v8

    .line 2713
    :goto_41d
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    if-eqz v4, :cond_437

    .line 2715
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 2716
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2717
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2715
    invoke-virtual {v4, v9, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2718
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 2719
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    goto :goto_438

    :cond_437
    const/4 v4, 0x0

    .line 2722
    :goto_438
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_460

    .line 2723
    iget v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_442

    goto :goto_460

    .line 2725
    :cond_442
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_460

    if-eqz v2, :cond_44d

    .line 2726
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    const/4 v8, 0x2

    mul-int/2addr v2, v8

    goto :goto_44f

    :cond_44d
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    :goto_44f
    sub-int/2addr v13, v2

    const/4 v2, 0x0

    .line 2727
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2728
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v9, -0x80000000

    .line 2729
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2728
    invoke-virtual {v2, v8, v12}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_460
    :goto_460
    if-eqz v17, :cond_469

    .line 2738
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    goto :goto_46a

    :cond_469
    const/4 v2, 0x0

    :goto_46a
    add-int v8, v3, v4

    .line 2739
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 2740
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 2741
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    if-eqz v11, :cond_48a

    const/4 v2, 0x0

    .line 2743
    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 v2, 0x1

    .line 2744
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    :cond_48a
    const/4 v2, 0x1

    .line 2747
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_49f

    .line 2748
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v1, v4

    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2750
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_4aa

    :cond_49f
    if-ne v3, v2, :cond_4a5

    .line 2753
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_4aa

    .line 2755
    :cond_4a5
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2758
    :goto_4aa
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4d1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4d1

    .line 2759
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int v3, v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2761
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2759
    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_4d1
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 7

    .line 4148
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 4151
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-lez p3, :cond_47

    .line 4152
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    if-le p1, p2, :cond_47

    sub-int/2addr p1, p3

    .line 4155
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-lt p1, p2, :cond_1b

    sub-int p1, p5, p3

    .line 4157
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    .line 4159
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    :goto_1e
    const/4 p1, 0x1

    .line 4164
    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    .line 4166
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p2, p5, :cond_47

    .line 4167
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_3a

    .line 4168
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 4169
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4171
    :cond_3a
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 p4, 0x2

    if-eq p2, p4, :cond_42

    .line 4172
    invoke-virtual {p0, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 4174
    :cond_42
    aput p3, p6, p1

    .line 4175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_47
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 10

    .line 4050
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 4053
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr p1, p2

    .line 4054
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result p2

    if-nez p2, :cond_21

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_21

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p2, :cond_21

    const/4 p1, 0x0

    .line 4057
    :cond_21
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 4058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-gez p5, :cond_6c

    if-ge p3, p2, :cond_6c

    .line 4061
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    sub-int p6, p3, p5

    const/4 v0, 0x1

    if-gt p6, p2, :cond_40

    sub-int p1, p4, p5

    .line 4064
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4065
    aget p1, p7, v0

    add-int/2addr p1, p5

    aput p1, p7, v0

    goto :goto_49

    :cond_40
    sub-int/2addr p2, p3

    .line 4068
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 4069
    aget p1, p7, v0

    neg-int p2, p2

    add-int/2addr p1, p2

    aput p1, p7, v0

    .line 4072
    :goto_49
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p4, :cond_6c

    .line 4073
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 4074
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 4075
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4077
    :cond_5f
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_67

    .line 4078
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 4080
    :cond_67
    aput p5, p8, v0

    .line 4081
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_6c
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 4093
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    if-nez p4, :cond_d

    .line 4097
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_f

    .line 4099
    :cond_d
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 4101
    :goto_f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 4102
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1c
    const/4 p1, 0x2

    .line 4105
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 3219
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    if-eqz v0, :cond_56

    .line 3220
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 3221
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3222
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_22

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_22

    .line 3224
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3226
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 3229
    :cond_22
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_29

    .line 3230
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 3232
    :cond_29
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    if-eqz v0, :cond_30

    .line 3233
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowEndOverflowMenu()V

    .line 3235
    :cond_30
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    .line 3240
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 3241
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 3242
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    move-result v0

    if-eqz v0, :cond_46

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    goto :goto_48

    :cond_46
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    :goto_48
    const/4 v1, 0x0

    .line 3243
    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 3245
    :cond_4c
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    if-eqz p1, :cond_60

    .line 3246
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    goto :goto_60

    .line 3249
    :cond_56
    const-string v0, "ActionBarView"

    const-string v1, "Wrong state class, expecting SavedState! This usually happens when two views of different type have the same id in the same hierarchy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 3195
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3196
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3198
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_19

    .line 3199
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    goto :goto_1b

    .line 3201
    :cond_19
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 3203
    :goto_1b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 3204
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 3205
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 3206
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    goto :goto_31

    .line 3208
    :cond_2f
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 3210
    :goto_31
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 3211
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 3212
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-object v1
.end method

.method public onStart(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 4291
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 4294
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    goto :goto_38

    .line 4297
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_22

    .line 4298
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4299
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4300
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_38

    .line 4301
    :cond_22
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p1

    if-ne p1, v0, :cond_38

    .line 4302
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4303
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4304
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 4088
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_9

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

.method public onStop(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 4320
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-eqz p1, :cond_11

    .line 4322
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4323
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_1a

    .line 4325
    :cond_11
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    if-nez p1, :cond_18

    .line 4327
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    .line 4329
    :cond_18
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    :goto_1a
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 8

    .line 4111
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 4112
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 4113
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez p1, :cond_15

    :goto_c
    move p1, p2

    goto :goto_16

    .line 4116
    :cond_e
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_15

    .line 4117
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    goto :goto_c

    :cond_15
    move p1, v0

    .line 4120
    :goto_16
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    .line 4123
    :cond_1d
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 4124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-eqz p1, :cond_56

    .line 4127
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-nez p1, :cond_31

    .line 4128
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 4130
    :cond_31
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int v4, v1, v3

    if-lt p1, v4, :cond_3b

    .line 4131
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 4135
    :cond_3b
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    if-le v2, v3, :cond_4b

    .line 4136
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_51

    .line 4139
    :cond_4b
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    sub-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 4142
    :goto_51
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_56
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 4

    .line 4311
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    const p1, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_13

    const/4 p1, 0x1

    .line 4313
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 4314
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    :cond_13
    return-void
.end method

.method public postShowEndOverflowMenu()V
    .registers 2

    .line 1493
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public refreshBottomMenu()V
    .registers 2

    .line 1464
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 1465
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    :cond_b
    return-void
.end method

.method public setApplyBgBlur(Z)V
    .registers 3

    .line 4400
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    if-eq v0, p1, :cond_14

    .line 4401
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 4402
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_d

    .line 4403
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->setParentBlurEnabled(Z)V

    .line 4405
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_14

    .line 4406
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->setParentBlurEnabled(Z)V

    :cond_14
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1149
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 1150
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 4

    .line 1173
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v1, :cond_b

    .line 1174
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    :cond_b
    return-void
.end method

.method public bridge synthetic setBottomMenuMode(I)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setBottomMenuMode(I)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .registers 4

    .line 1666
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1667
    :goto_9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 1668
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1670
    :cond_12
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_1f

    if-eqz v0, :cond_1f

    .line 1672
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1673
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    goto :goto_26

    .line 1675
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :goto_26
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 12

    .line 1941
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_8

    :cond_6
    xor-int v1, p1, v0

    .line 1942
    :goto_8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit16 v0, v1, 0x201f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_166

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_18

    move v0, v5

    goto :goto_19

    :cond_18
    move v0, v4

    :goto_19
    const/16 v6, 0x8

    if-eqz v0, :cond_5f

    .line 1948
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 1949
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_28

    move v8, v4

    goto :goto_29

    :cond_28
    move v8, v6

    :goto_29
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_41

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_36

    move v7, v5

    goto :goto_37

    :cond_36
    move v7, v4

    .line 1952
    :goto_37
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_41

    .line 1959
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_41
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_66

    .line 1964
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_51

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_51

    move v8, v5

    goto :goto_52

    :cond_51
    move v8, v4

    .line 1966
    :goto_52
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_57

    goto :goto_5b

    :cond_57
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5b
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_66

    .line 1969
    :cond_5f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_66

    .line 1970
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_66
    :goto_66
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_b2

    and-int/lit8 v7, p1, 0x8

    const/4 v8, 0x2

    if-eqz v7, :cond_7c

    .line 1976
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_78

    .line 1977
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 1979
    :cond_78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    goto :goto_b2

    .line 1981
    :cond_7c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_89

    .line 1982
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1984
    :cond_89
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v7, :cond_96

    .line 1985
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1987
    :cond_96
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 1988
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 1989
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_a9

    .line 1990
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1991
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 1993
    :cond_a9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_b2

    .line 1994
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    :cond_b2
    :goto_b2
    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_f1

    .line 2001
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_bd

    move v7, v5

    goto :goto_be

    :cond_bd
    move v7, v4

    .line 2003
    :goto_be
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v8, :cond_ca

    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    move-result v8

    if-nez v8, :cond_ca

    move v8, v5

    goto :goto_cb

    :cond_ca
    move v8, v4

    .line 2006
    :goto_cb
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v9, :cond_d6

    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    move-result v9

    if-nez v9, :cond_d6

    goto :goto_d7

    :cond_d6
    move v5, v8

    .line 2009
    :goto_d7
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v8, :cond_f1

    if-nez v5, :cond_e5

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_f1

    .line 2010
    :cond_e5
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_ee

    if-eqz v7, :cond_ed

    move v6, v4

    goto :goto_ee

    :cond_ed
    move v6, v3

    :cond_ee
    :goto_ee
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_f1
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_107

    .line 2014
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_107

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_104

    .line 2016
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2017
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    goto :goto_107

    .line 2019
    :cond_104
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_107
    :goto_107
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_162

    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_15b

    .line 2025
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2027
    sget v1, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    new-instance v5, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    invoke-direct {v5, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2029
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 2030
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v4}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 2031
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_162

    .line 2033
    :cond_15b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2034
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2038
    :cond_162
    :goto_162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_169

    .line 2040
    :cond_166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2044
    :goto_169
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_19f

    .line 2045
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_179

    .line 2046
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19f

    :cond_179
    and-int/2addr p1, v3

    if-eqz p1, :cond_18e

    .line 2048
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19f

    .line 2051
    :cond_18e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_19f
    :goto_19f
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    .line 2157
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 2158
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 2159
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_9
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3

    .line 2168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;)V
    .registers 6

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 821
    :goto_5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_14

    .line 824
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;)V

    .line 826
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_14

    .line 827
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    :cond_14
    return-void
.end method

.method public setEndActionMenuEnable(Z)V
    .registers 2

    .line 718
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    return-void
.end method

.method public setEndActionMenuItemLimit(I)V
    .registers 3

    .line 2391
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    .line 2392
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 2393
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    :cond_9
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 6

    .line 1722
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1723
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1725
    :cond_7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_61

    .line 1727
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1728
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1729
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 1730
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_61
    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .registers 4

    if-nez p2, :cond_5

    .line 2366
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 2368
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .registers 2

    .line 1654
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    .line 3264
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    .line 3265
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    .line 3267
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3268
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 3255
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_8

    .line 3256
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 3258
    :cond_8
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3259
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_d
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 4

    .line 1924
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_3e

    .line 1925
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1926
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    if-nez p1, :cond_15

    .line 1929
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 1930
    :cond_15
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2d

    .line 1931
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 1934
    :cond_2d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setHyperActionMenuEnable(Z)V
    .registers 2

    .line 722
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    return-void
.end method

.method public setHyperSplitMenuEnabled(Z)V
    .registers 2

    .line 726
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperSplitMenuEnabled:Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 2093
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 2079
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2080
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1d

    .line 2081
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 2082
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 2083
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    .line 2084
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2087
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_34

    .line 2088
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 1479
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 2107
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2097
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2098
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_17

    .line 2099
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 2100
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_17

    .line 2101
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 6

    .line 1080
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_10

    .line 1081
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1082
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1085
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_19

    .line 1086
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1089
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 1090
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_da

    .line 1092
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-nez v1, :cond_30

    goto/16 :goto_da

    .line 1099
    :cond_30
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    if-eqz v1, :cond_49

    .line 1101
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->divideHyperMenuAndSplitMenu(Landroid/view/Menu;)Landroid/util/Pair;

    move-result-object p1

    .line 1102
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1103
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    goto :goto_59

    .line 1105
    :cond_49
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;

    move-result-object p1

    .line 1106
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1107
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1110
    :goto_59
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_a3

    .line 1111
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez p1, :cond_70

    .line 1112
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperSplitMenuEnabled:Z

    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1113
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 1115
    :cond_70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_88

    .line 1116
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1117
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1118
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    goto :goto_96

    .line 1120
    :cond_88
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1121
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1124
    :goto_96
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 1125
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 1126
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    .line 1129
    :cond_a3
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz p1, :cond_d3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    if-lez p1, :cond_d3

    .line 1130
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez p1, :cond_bd

    .line 1131
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1133
    :cond_bd
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1134
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    .line 1135
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 1136
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addEndMenuView()V

    .line 1138
    :cond_d3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    .line 1141
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void

    .line 1093
    :cond_da
    :goto_da
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1094
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1095
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 4

    .line 2111
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_f

    .line 2115
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    .line 2116
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    :goto_f
    if-eqz p1, :cond_27

    if-eq p1, v1, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    goto :goto_2e

    .line 2141
    :cond_17
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_2e

    .line 2142
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    goto :goto_2e

    .line 2123
    :cond_1f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MIUIX Deleted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2146
    :cond_27
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_2e

    .line 2147
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeTabsFromContainer()V

    .line 2151
    :cond_2e
    :goto_2e
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 2152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_33
    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 3773
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, -0x3

    goto :goto_5

    :cond_4
    const/4 p1, -0x4

    .line 3768
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x2

    .line 3763
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x2

    .line 3758
    :goto_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 5

    .line 761
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eq v0, p1, :cond_6f

    .line 762
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_33

    .line 763
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    if-eqz p1, :cond_20

    .line 765
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_16

    .line 766
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 768
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2e

    .line 770
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 771
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 773
    :goto_2e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 775
    :cond_33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    if-eqz p1, :cond_3c

    move v2, v1

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x8

    .line 776
    :goto_3e
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 779
    :cond_41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_6c

    if-nez p1, :cond_55

    .line 782
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 781
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_6c

    .line 785
    :cond_55
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 787
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 788
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 787
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 791
    :cond_6c
    :goto_6c
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_6f
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 6

    .line 1705
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1706
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1708
    :cond_7
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_5f

    .line 1710
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1711
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1712
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 1713
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_5f
    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 687
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    if-eqz p1, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    .line 689
    :goto_e
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleClickable(Z)V

    .line 691
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_18

    move v1, v2

    .line 692
    :cond_18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleClickable(Z)V

    :cond_1b
    return-void
.end method

.method public setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V
    .registers 3

    .line 1918
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_7

    .line 1919
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V

    :cond_7
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1897
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 1898
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_9

    .line 1899
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1901
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_10

    .line 1902
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1904
    :cond_10
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result p1

    .line 1905
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1908
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1909
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    .line 1749
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 1750
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 3

    .line 676
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setTitleClickable(Z)V

    .line 677
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_a

    .line 678
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleClickable(Z)V

    .line 680
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_11

    .line 681
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleClickable(Z)V

    :cond_11
    return-void
.end method

.method public setUserSetEndActionMenuItemLimit(Z)V
    .registers 2

    .line 2402
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 600
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1760
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_7

    .line 1761
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public showEndOverflowMenu()Z
    .registers 4

    .line 1485
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 1486
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_26

    .line 1489
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_26

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .registers 2

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method updateExpandStateOnLayout()Z
    .registers 7

    .line 742
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 745
    :cond_7
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 746
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    const/4 v3, 0x1

    if-nez v1, :cond_10

    move v0, v2

    goto :goto_1c

    .line 748
    :cond_10
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr v4, v5

    if-ne v1, v4, :cond_1c

    move v0, v3

    .line 751
    :cond_1c
    :goto_1c
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    if-eq v1, v0, :cond_25

    .line 752
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 753
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    return v3

    :cond_25
    return v2
.end method
