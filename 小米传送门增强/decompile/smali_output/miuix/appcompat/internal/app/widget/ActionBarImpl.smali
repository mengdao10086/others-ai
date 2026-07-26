.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.super Lmiuix/appcompat/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;
    }
.end annotation


# static fields
.field private static final UNINITIALIZED_OFFSET:Ljava/lang/Integer;

.field private static sTabListenerWrapper:Landroidx/appcompat/app/ActionBar$TabListener;


# instance fields
.field private isSelectingTab:Z

.field private mActionBarHeightTotalGap:I

.field private mActionBarHeightTotalGapOnShow:I

.field private mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

.field mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

.field private mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

.field private mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAdsorptionToNoOverlay:Z

.field private mContainerAnim:Lmiuix/animation/IStateStyle;

.field private mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private final mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

.field private mContentInset:Landroid/graphics/Rect;

.field private mContentInsetTop:I

.field private mContentMask:Landroid/view/View;

.field private mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private final mCoordinateOffsetViewSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurWindowVisibility:I

.field private mCurrentAccessibilityImportant:I

.field private mCurrentActionBarHeightGap:I

.field private mCurrentActionBarHeightGapOnShow:I

.field private mCurrentExpandState:I

.field private mCurrentResizable:Z

.field private mDisplayHomeAsUpSet:Z

.field private mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mIsContainerAnimationRunning:Z

.field private mIsWindowInfoChanged:Z

.field private mMaxActionMenuItemCount:I

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNestedContentInsetObserverSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/core/view/NestedContentInsetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

.field private mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

.field private mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

.field private mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTranslationY:F

.field private mThemedContext:Landroid/content/Context;

.field private mWindowMode:I


# direct methods
.method public static synthetic $r8$lambda$hqTU3bSp_J7IGvzI5JjiIDIhi9U(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;IFII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->lambda$createActionBarCoordinateListener$1(IFII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->sTabListenerWrapper:Landroidx/appcompat/app/ActionBar$TabListener;

    const/4 v0, -0x1

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V
    .registers 6

    .line 244
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isSelectingTab:Z

    const/4 v1, -0x1

    .line 187
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 196
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 215
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 225
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    .line 234
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    .line 237
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 238
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 239
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 240
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 242
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    const/4 v0, 0x0

    .line 2058
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 2059
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    .line 245
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 247
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 248
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I
    .registers 2

    .line 90
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I
    .registers 1

    .line 90
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    return p0
.end method

.method static synthetic access$1202(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I
    .registers 2

    .line 90
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    return p1
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I
    .registers 1

    .line 90
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    return p0
.end method

.method static synthetic access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z
    .registers 2

    .line 90
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
    .registers 1

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .registers 1

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    return p0
.end method

.method static synthetic access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z
    .registers 2

    .line 90
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    return p1
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 1

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    .registers 1

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    return-void
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F
    .registers 1

    .line 90
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    return p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 90
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method private applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 8

    .line 449
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    if-nez v0, :cond_5

    return-void

    .line 452
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    move-result v0

    .line 453
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarSpec(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/app/strategy/ActionBarSpec;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lmiuix/appcompat/app/strategy/IActionBarStrategy;->config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4a

    if-eqz v1, :cond_4a

    .line 455
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    if-eqz v4, :cond_3b

    .line 458
    :cond_27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_31

    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-nez v4, :cond_36

    .line 459
    :cond_31
    iget v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    invoke-virtual {p1, v4, v3, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 461
    :cond_36
    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 463
    :cond_3b
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetEndActionMenuItemLimit()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-boolean v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserEndMenuConfig:Z

    if-eqz v4, :cond_4a

    .line 464
    :cond_45
    iget v4, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuItemLimit(I)V

    :cond_4a
    if-eqz p2, :cond_6c

    if-eqz v1, :cond_6c

    .line 468
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isUserSetExpandState()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    if-eqz p1, :cond_6c

    .line 469
    :cond_58
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-nez p1, :cond_67

    .line 470
    :cond_62
    iget p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    invoke-virtual {p2, p1, v3, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(IZZ)V

    .line 472
    :cond_67
    iget-boolean p1, v1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 475
    :cond_6c
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 476
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 477
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    if-ne p1, v2, :cond_c5

    if-eq v0, p1, :cond_c5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-eqz p1, :cond_c5

    .line 479
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 480
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    .line 482
    :cond_a6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/core/view/NestedContentInsetObserver;

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    invoke-interface {p2, v0}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    goto :goto_ac

    .line 485
    :cond_be
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_c5

    .line 486
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    :cond_c5
    return-void
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1349
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_c

    .line 1350
    new-instance v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_13

    .line 1352
    :cond_c
    new-instance v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    :goto_13
    return-object v0
.end method

.method private doHide(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2226
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doHide(ZZLmiuix/animation/controller/AnimState;)V
    .registers 7

    .line 2231
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    if-eqz v1, :cond_12

    .line 2232
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 2233
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2236
    :goto_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    if-eqz p1, :cond_27

    :cond_1c
    if-eqz p2, :cond_27

    .line 2239
    const-string p1, "HideActionBar"

    invoke-direct {p0, v2, p1, v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_43

    .line 2241
    :cond_27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2242
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 2243
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    .line 2244
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 2245
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    :goto_43
    return-void
.end method

.method private doShow(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2200
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doShow(ZZLmiuix/animation/controller/AnimState;)V
    .registers 8

    .line 2205
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    if-eqz v1, :cond_12

    .line 2206
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 2207
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2210
    :goto_13
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1d

    if-eqz p1, :cond_21

    :cond_1d
    if-eqz p2, :cond_21

    move p1, v3

    goto :goto_22

    :cond_21
    move p1, v2

    .line 2211
    :goto_22
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    instance-of p2, p2, Lmiuix/view/SearchActionMode;

    if-eqz p2, :cond_3a

    .line 2212
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x4

    goto :goto_36

    :cond_34
    const/16 v1, 0x8

    :goto_36
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3f

    .line 2214
    :cond_3a
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 2216
    :goto_3f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resetActionBarBlurConfigOnReshow()V

    if-eqz p1, :cond_4f

    .line 2218
    const-string p1, "ShowActionBar"

    invoke-direct {p0, v3, p1, v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_5c

    .line 2220
    :cond_4f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2221
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    :goto_5c
    return-void
.end method

.method private doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V
    .registers 6

    .line 2647
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2648
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    add-int v2, v1, p2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x0

    .line 2649
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_14
    return-void
.end method

.method private getActionBarSpec(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/app/strategy/ActionBarSpec;
    .registers 7

    .line 414
    new-instance v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;

    invoke-direct {v0}, Lmiuix/appcompat/app/strategy/ActionBarSpec;-><init>()V

    .line 415
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getDeviceType()I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    .line 416
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mWindowMode:I

    iput v1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    if-eqz p1, :cond_87

    if-eqz p2, :cond_87

    .line 418
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 419
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 420
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidth:I

    .line 421
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeight:I

    int-to-float v2, v3

    .line 422
    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v2

    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    .line 423
    iget v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v2

    iput v2, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 425
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    if-nez p1, :cond_53

    .line 429
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    .line 431
    :cond_53
    iget p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidth:I

    int-to-float p1, p1

    invoke-static {v1, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    .line 432
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarHeight:I

    int-to-float p1, p1

    .line 433
    invoke-static {v1, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarHeightDp:I

    .line 435
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    move-result p1

    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isUserSetExpandState:Z

    .line 436
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->expandState:I

    .line 437
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result p1

    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->resizable:Z

    .line 439
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetEndActionMenuItemLimit()Z

    move-result p1

    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isUserSetEndActionMenuItemLimit:Z

    .line 440
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getEndActionMenuItemLimit()I

    move-result p1

    iput p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->endActionMenuItemLimit:I

    .line 442
    :cond_87
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    instance-of p2, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_95

    .line 443
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result p1

    iput-boolean p1, v0, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isInFloatingWindowMode:Z

    :cond_95
    return-object v0
.end method

.method private getBlurOptions()I
    .registers 7

    .line 785
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 786
    :goto_f
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const/16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    if-eqz v2, :cond_21

    move v3, v5

    :cond_21
    or-int v0, v1, v3

    return v0
.end method

.method private getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;
    .registers 3

    .line 2559
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2560
    sget-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createActionBarCoordinateListener$1(IFII)V
    .registers 5

    .line 2655
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    .line 2656
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    .line 2657
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2658
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_2c

    .line 2659
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    sub-float/2addr p2, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    div-float p1, p2, p1

    .line 2661
    :cond_2c
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    if-nez p2, :cond_36

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2664
    :cond_36
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGapOnShow:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    .line 2665
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGapOnShow:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    return-void
.end method

.method private measureSearchActionModeView()V
    .registers 5

    .line 1406
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1407
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    .line 1406
    invoke-static {v0, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1408
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1409
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1408
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1410
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 6

    .line 516
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 519
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    invoke-virtual {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;)V

    .line 520
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_20

    move p1, v1

    goto :goto_21

    :cond_20
    move p1, v2

    .line 521
    :goto_21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    if-eqz v0, :cond_35

    if-eqz p1, :cond_2d

    .line 523
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_30

    .line 525
    :cond_2d
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 527
    :goto_30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 529
    :cond_35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_47

    if-eqz p1, :cond_3f

    .line 531
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_42

    .line 533
    :cond_3f
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 535
    :goto_42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 537
    :cond_47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_55

    .line 539
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5c

    .line 541
    :cond_55
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 544
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    if-eqz v0, :cond_71

    if-eqz p1, :cond_6a

    .line 546
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_71

    .line 548
    :cond_6a
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 551
    :cond_71
    :goto_71
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method private startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2091
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-nez v5, :cond_49

    .line 2093
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2094
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2093
    invoke-static {v5, v4, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2095
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2096
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2095
    invoke-static {v6, v4, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 2097
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v7, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2098
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, v7, v8}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 2099
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v7, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2100
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    :cond_49
    neg-int v5, v5

    int-to-float v6, v5

    .line 2102
    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTargetTranslationY:F

    .line 2105
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 2106
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerViewAnimationListener:Lmiuix/animation/listener/TransitionListener;

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, -0x2

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_ac

    .line 2108
    new-array v2, v2, [F

    fill-array-data v2, :array_114

    invoke-static {v9, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v6, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 2109
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;

    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {v2, v9, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    new-array v9, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v9, v4

    invoke-virtual {v6, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    if-nez p4, :cond_90

    .line 2111
    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 2112
    invoke-virtual {v2, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 2113
    invoke-virtual {v2, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    goto :goto_92

    :cond_90
    move-object/from16 v2, p4

    :goto_92
    if-nez p3, :cond_a9

    if-nez p4, :cond_a9

    .line 2116
    new-instance v7, Lmiuix/animation/controller/AnimState;

    invoke-direct {v7, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v12, v5

    .line 2117
    invoke-virtual {v7, v8, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 2118
    invoke-virtual {v5, v7, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    goto :goto_f2

    :cond_a9
    move-object/from16 v5, p3

    goto :goto_f2

    .line 2121
    :cond_ac
    new-array v2, v2, [F

    fill-array-data v2, :array_11c

    invoke-static {v9, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v6, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 2122
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;

    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {v2, v9, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    new-array v9, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v9, v4

    invoke-virtual {v6, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    if-nez p4, :cond_db

    .line 2124
    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v12, v5

    .line 2125
    invoke-virtual {v2, v9, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 2126
    invoke-virtual {v2, v5, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    goto :goto_dd

    :cond_db
    move-object/from16 v2, p4

    :goto_dd
    if-nez p3, :cond_a9

    if-nez p4, :cond_a9

    .line 2129
    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 2130
    invoke-virtual {v5, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 2131
    invoke-virtual {v5, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    .line 2134
    :goto_f2
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    new-array v8, v3, [Landroid/view/View;

    aput-object v7, v8, v4

    invoke-static {v8}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    if-eqz v5, :cond_109

    .line 2136
    invoke-virtual {v5, v1}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 2137
    invoke-interface {v4, v5}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    .line 2139
    :cond_109
    filled-new-array {v6}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 2140
    iput-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsContainerAnimationRunning:Z

    return-object v4

    nop

    :array_114
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_11c
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private updateVisibility(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2037
    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(ZZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private updateVisibility(ZZLmiuix/animation/controller/AnimState;)V
    .registers 7

    .line 2042
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2046
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 2047
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 2048
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZZLmiuix/animation/controller/AnimState;)V

    goto :goto_21

    .line 2051
    :cond_17
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 2052
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 2053
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZZLmiuix/animation/controller/AnimState;)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method animateToMode(Z)V
    .registers 4

    if-eqz p1, :cond_6

    .line 1333
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->showForActionMode()V

    goto :goto_9

    .line 1335
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hideForActionMode()V

    .line 1338
    :goto_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->animateToVisibility(Z)V

    .line 1339
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1340
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 1341
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 1342
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1343
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSecondaryExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;

    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabBar;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_46
    return-void
.end method

.method protected createActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .registers 2

    .line 2654
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    return-object v0
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;
    .registers 4

    .line 1359
    instance-of p1, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz p1, :cond_31

    .line 1360
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-nez p1, :cond_13

    .line 1361
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1362
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 1364
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq p1, v0, :cond_24

    .line 1365
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1368
    :cond_24
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->measureSearchActionModeView()V

    .line 1369
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 1370
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    goto :goto_35

    .line 1375
    :cond_31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_45

    .line 1381
    :goto_35
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_44

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMaxActionMenuItemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 1382
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 1383
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionMenuItemLimit(I)V

    :cond_44
    return-object p1

    .line 1376
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not set windowSplitActionBar true in activity style!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
    .registers 5

    .line 1390
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1391
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_search_action_mode_view:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1393
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 1394
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    .line 1913
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_c

    const v1, 0x1020002

    .line 1914
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 880
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getExpandState()I
    .registers 2

    .line 1612
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 845
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 5

    .line 1131
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_28

    .line 1132
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1133
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010397

    const/4 v3, 0x1

    .line 1134
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1135
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_24

    .line 1138
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_28

    .line 1140
    :cond_24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 1143
    :cond_28
    :goto_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method getTopOffsetForCoordinateView(Landroid/view/View;)I
    .registers 3

    .line 2595
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2596
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method getTopViewHeight()I
    .registers 2

    .line 2507
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    if-eqz v0, :cond_d

    .line 2508
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->getViewHeight()I

    move-result v0

    return v0

    .line 2510
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    return v0

    .line 2513
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method hideForActionMode()V
    .registers 5

    .line 1248
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    .line 1249
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 1250
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v0

    :goto_16
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeEnd(Z)V

    .line 1251
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 1252
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v0, :cond_28

    .line 1253
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    goto :goto_4d

    .line 1255
    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->finishActionMode()V

    .line 1256
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 1257
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 1258
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 1259
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1261
    :goto_4d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_54
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 299
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarStrategy:I

    .line 300
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 303
    :try_start_d
    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 304
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_24

    .line 310
    :catch_24
    :cond_24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mWindowMode:I

    .line 311
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 312
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBar(Lmiuix/appcompat/app/ActionBar;)V

    .line 313
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_49

    .line 314
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v1, :cond_49

    .line 315
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 317
    :cond_49
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 318
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 319
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 320
    sget v0, Lmiuix/appcompat/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_78

    .line 323
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

    .line 333
    :cond_78
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p1, :cond_a4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-nez v0, :cond_a4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_85

    goto :goto_a4

    .line 335
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_a4
    :goto_a4
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    .line 341
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    .line 344
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b8

    move p1, v1

    goto :goto_b9

    :cond_b8
    move p1, v0

    :goto_b9
    if-eqz p1, :cond_bd

    .line 347
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 350
    :cond_bd
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_ce

    if-eqz p1, :cond_cc

    goto :goto_ce

    :cond_cc
    move p1, v0

    goto :goto_cf

    :cond_ce
    :goto_ce
    move p1, v1

    :goto_cf
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 352
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 353
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_e6

    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result p1

    if-nez p1, :cond_e6

    goto :goto_e7

    :cond_e6
    move v1, v0

    .line 354
    :goto_e7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_ee

    .line 355
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 357
    :cond_ee
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_f5

    .line 358
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    :cond_f5
    if-eqz v1, :cond_116

    .line 361
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    invoke-static {p1, v1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_116

    .line 364
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_10d

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_10d
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_113

    or-int/lit16 v0, v0, 0x4000

    .line 371
    :cond_113
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(I)V

    .line 375
    :cond_116
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    if-nez p1, :cond_121

    .line 376
    new-instance p1, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarStrategy:Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 378
    :cond_121
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 395
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public isAdsorptionToNoOverlay()Z
    .registers 2

    .line 648
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mAdsorptionToNoOverlay:Z

    return v0
.end method

.method public isFragmentViewPagerMode()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isResizable()Z
    .registers 2

    .line 1607
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method isShowHideAnimationEnabled()Z
    .registers 2

    .line 2250
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1267
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z

    .line 494
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mWindowMode:I

    .line 495
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 497
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_29

    .line 498
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_29
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 3

    .line 508
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setIsMiuixFloating(Z)V

    .line 509
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz p1, :cond_c

    .line 510
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->onFloatingModeChanged()V

    :cond_c
    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_a

    .line 1673
    const-string p1, "miuix-appcompat"

    const-string v0, "warning!! the view is null on registerCoordinateScrollView!!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1676
    :cond_a
    instance-of v0, p1, Lmiuix/core/view/NestedContentInsetObserver;

    if-eqz v0, :cond_1d

    .line 1677
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    check-cast p1, Lmiuix/core/view/NestedContentInsetObserver;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1678
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-eqz v0, :cond_49

    .line 1679
    invoke-interface {p1, v0}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    goto :goto_49

    .line 1682
    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-eqz v1, :cond_26

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_2c

    :cond_26
    sget-object v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-eqz v0, :cond_49

    .line 1684
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 1688
    :cond_49
    :goto_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 1689
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    :cond_5a
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4

    .line 765
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptions()I

    move-result v0

    const/4 v1, 0x4

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/2addr p1, v0

    or-int/2addr v0, v1

    .line 766
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 7

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 886
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 888
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 889
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 890
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    const v4, 0x8000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v3

    .line 891
    :goto_20
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 893
    :cond_23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_30

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v3

    .line 894
    :goto_2d
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    :cond_30
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 6

    .line 735
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 737
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 739
    :cond_d
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 740
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    .line 741
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v0

    .line 742
    :goto_2a
    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 744
    :cond_2d
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p2, :cond_3a

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v2, v0

    .line 745
    :goto_37
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    :cond_3a
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 3

    .line 1582
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    .line 1623
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 1624
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1625
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_16

    .line 1626
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandStateByUser(I)V

    .line 1627
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_16
    return-void
.end method

.method setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .registers 3

    .line 1414
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eq v0, p1, :cond_16

    .line 1415
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 1416
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_d

    .line 1417
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 1419
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz p1, :cond_16

    .line 1420
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    :cond_16
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    .line 793
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setResizable(Z)V
    .registers 3

    .line 1602
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 2255
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_12

    .line 2258
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 2259
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(Z)V

    goto :goto_12

    .line 2261
    :cond_f
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(Z)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 3

    .line 1572
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 830
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 720
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method showForActionMode()V
    .registers 7

    .line 1180
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    .line 1181
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    const/4 v1, 0x0

    .line 1182
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 1183
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 1184
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isResizable()Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 1185
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v2, v2, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v2, :cond_21

    .line 1186
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    goto :goto_38

    .line 1188
    :cond_21
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->startActionMode()V

    .line 1189
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 1190
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 1192
    :goto_38
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    .line 1193
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 1194
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v3, v3, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1195
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_57

    goto :goto_58

    :cond_57
    move v0, v1

    .line 1194
    :goto_58
    invoke-virtual {v2, v3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeStart(ZZ)V

    :cond_5b
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 5

    .line 1282
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 1283
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1286
    :cond_7
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 1287
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v2, :cond_15

    instance-of v2, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-nez v2, :cond_1d

    :cond_15
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v2, :cond_25

    instance-of v2, v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    if-eqz v2, :cond_25

    .line 1289
    :cond_1d
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->closeMode()V

    .line 1290
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->killMode()V

    .line 1293
    :cond_25
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    if-eqz p1, :cond_86

    .line 1299
    instance-of v1, v0, Lmiuix/appcompat/internal/view/ActionModeImpl;

    if-eqz v1, :cond_84

    .line 1300
    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/internal/view/ActionModeImpl;

    .line 1301
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeView(Lmiuix/appcompat/internal/app/widget/ActionModeView;)V

    .line 1302
    instance-of p1, v1, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-eqz p1, :cond_49

    .line 1303
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBaseInnerInsets()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 1305
    move-object v2, v1

    check-cast v2, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 1308
    :cond_49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeCallback(Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 1309
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 1310
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1311
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    const/4 p1, 0x1

    .line 1312
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->animateToMode(Z)V

    .line 1313
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_74

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, p1, :cond_74

    .line 1315
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_74

    .line 1316
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 1319
    :cond_74
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_81

    .line 1320
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v1, 0x20

    .line 1321
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1324
    :cond_81
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-object v0

    :cond_84
    const/4 p1, 0x0

    return-object p1

    .line 1296
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not set windowSplitActionBar true in activity style!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1695
    instance-of v0, p1, Lmiuix/core/view/NestedContentInsetObserver;

    if-eqz v0, :cond_c

    .line 1696
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    check-cast p1, Lmiuix/core/view/NestedContentInsetObserver;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1698
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    :goto_11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_27

    .line 1701
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    :cond_27
    return-void
.end method

.method updateContentInsetForNestedObserver(Landroid/graphics/Rect;)V
    .registers 7

    .line 2602
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    .line 2603
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    sub-int v1, v0, v1

    .line 2604
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInsetTop:I

    .line 2605
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/view/NestedContentInsetObserver;

    .line 2606
    invoke-interface {v2, p1}, Lmiuix/core/view/NestedContentInsetObserver;->onContentInsetChanged(Landroid/graphics/Rect;)V

    goto :goto_10

    .line 2608
    :cond_20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2609
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_41

    goto :goto_2a

    :cond_41
    if-eqz v1, :cond_2a

    .line 2614
    sget-object v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->UNINITIALIZED_OFFSET:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_51

    .line 2615
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_58

    .line 2617
    :cond_51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_58

    goto :goto_2a

    .line 2621
    :cond_58
    :goto_58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2622
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2623
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    goto :goto_2a

    :cond_6e
    return-void
.end method

.method updateCoordinateOffsetView()V
    .registers 6

    .line 2629
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 2630
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    return-void

    .line 2633
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2634
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v2

    .line 2635
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    goto :goto_21

    .line 2637
    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNestedContentInsetObserverSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/view/NestedContentInsetObserver;

    .line 2638
    check-cast v1, Landroid/view/View;

    .line 2639
    instance-of v2, v1, Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz v2, :cond_5b

    .line 2640
    move-object v2, v1

    check-cast v2, Lmiuix/core/view/NestedCoordinatorObserver;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentActionBarHeightGap:I

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionBarHeightTotalGap:I

    invoke-interface {v2, v3, v4}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    :cond_5b
    const/4 v2, 0x0

    .line 2642
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    goto :goto_3f

    :cond_60
    return-void
.end method

.method updateTopOffsetOnNestedPreScroll(Landroid/view/View;I)I
    .registers 6

    .line 2547
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2548
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    .line 2549
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p2, :cond_24

    .line 2550
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    .line 2552
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method updateTopOffsetOnNestedScroll(Landroid/view/View;I)I
    .registers 11

    .line 2567
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2568
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v5, v4, p2

    .line 2569
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-nez v6, :cond_28

    move v6, v1

    goto :goto_2a

    :cond_28
    iget v6, v6, Landroid/graphics/Rect;->top:I

    :goto_2a
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 2571
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    invoke-direct {p0, v3, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    if-ne p1, v3, :cond_c

    sub-int v2, v4, v5

    goto :goto_c

    :cond_41
    return v2
.end method

.method updateTopOffsetOnPostScroll(Landroid/view/View;I)V
    .registers 8

    .line 2582
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne p1, v1, :cond_a

    .line 2584
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getCoordinateOffsetViewTopOffsetOrDefault(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2585
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentInset:Landroid/graphics/Rect;

    if-nez v3, :cond_26

    const/4 v3, 0x0

    goto :goto_28

    :cond_26
    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_28
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 2587
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCoordinateOffsetViewSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    invoke-direct {p0, v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doUpdateTopOffsetForCoordinateView(Landroid/view/View;I)V

    goto :goto_a

    :cond_3b
    return-void
.end method
