.class public Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field protected mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field protected mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

.field private mAnimating:Z

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mBottomExtraInset:I

.field private mBottomMenuExtraInset:I

.field private mBottomMenuMode:I

.field private mBottomMenuModeConfig:I

.field private final mBottomMenuVisibleHeight:[I

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskInsets:Landroid/graphics/Rect;

.field protected mContentView:Landroid/view/View;

.field private mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

.field private mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field private mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field protected final mCoordinatedScrollViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectNestedScrollMotionEventEnabled:Z

.field private final mCurrentContentInset:Landroid/graphics/Rect;

.field private mDeviceType:I

.field private mEnableWindowStatusBarInsets:Z

.field private mExtraHorizontalPadding:I

.field private mExtraPaddingApplyToContentEnable:Z

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingInitEnable:Z

.field private mExtraPaddingObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/container/ExtraPaddingObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private final mGroupButtonInsetsRect:Landroid/graphics/Rect;

.field private mGroupButtonPanelView:Lmiuix/appcompat/app/GroupButtonsPanel;

.field private mImeInsetBottom:I

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mInsetTopInMiuixFloating:I

.field private mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

.field private mInternalInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsInSearchMode:Z

.field private mIsMiuixFloating:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastDispatchContentInset:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mLayoutStable:Z

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mNestedScrollingParentEnabled:Z

.field private final mOffsetInWindow:[I

.field private mOnContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOriginalInset:Landroid/graphics/Rect;

.field private mOverlayMode:Z

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScrollTarget:Landroid/view/View;

.field private final mPostScroller:Landroid/widget/Scroller;

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field private mShouldExtraPaddingHorizontalNotifyChanged:Z

.field private mSqueezeContentByIme:Z

.field private mSystemBarsInsetBottom:I

.field private final mThemeCompatSystemInset:Landroid/graphics/Rect;

.field private mTranslucentStatus:I

.field private mUserInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;


# direct methods
.method public static synthetic $r8$lambda$QIRTJRtfu7Uh2POSb4D2OXOJk6U(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x0

    .line 120
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    const/4 v2, 0x1

    .line 124
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 134
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 136
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 139
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 141
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 143
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 145
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 147
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 150
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    .line 151
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    .line 153
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 154
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    const/4 v3, 0x2

    .line 155
    new-array v4, v3, [I

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    .line 159
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 167
    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-direct {v4, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 175
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 176
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 177
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mImeInsetBottom:I

    .line 178
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSystemBarsInsetBottom:I

    .line 198
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonInsetsRect:Landroid/graphics/Rect;

    .line 207
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    .line 208
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    .line 209
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    .line 219
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mEnableWindowStatusBarInsets:Z

    .line 1768
    new-array v0, v3, [I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 2104
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroll:Ljava/lang/Runnable;

    .line 231
    invoke-static {p1}, Lmiuix/smooth/SmoothCornerHelper;->init(Landroid/content/Context;)V

    .line 232
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    .line 233
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 234
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    .line 235
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 236
    sget p3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 237
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 238
    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p3, :cond_cf

    .line 240
    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_cf
    sget p3, Lmiuix/appcompat/R$styleable;->Window_enableWindowStatusBarInsets:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mEnableWindowStatusBarInsets:Z

    .line 244
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    sget p2, Lmiuix/appcompat/R$attr;->bottomMenuMode:I

    invoke-static {p1, p2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 246
    sget p2, Lmiuix/appcompat/R$attr;->squeezeContentByIme:I

    invoke-static {p1, p2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    .line 247
    sget p2, Lmiuix/appcompat/R$attr;->layoutStable:I

    invoke-static {p1, p2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    return-void
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/widget/Scroller;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScrollTarget:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 94
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Z)Z
    .registers 2

    .line 94
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;
    .registers 1

    .line 94
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    return-void
.end method

.method private adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V
    .registers 4

    .line 1912
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    if-nez v0, :cond_12

    .line 1913
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    if-eqz p1, :cond_11

    .line 1914
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    invoke-interface {p1, v0}, Lmiuix/appcompat/app/IContentInsetState;->onDispatchNestedScrollOffset([I)V

    :cond_11
    return-void

    .line 1918
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method private applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 929
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-eqz p3, :cond_16

    .line 930
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v2, :cond_16

    .line 932
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move v0, v1

    :cond_16
    if-eqz p4, :cond_21

    .line 934
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    if-eq p3, p4, :cond_21

    .line 936
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v0, v1

    :cond_21
    if-eqz p5, :cond_2c

    .line 938
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    if-eq p3, p4, :cond_2c

    .line 940
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v0, v1

    :cond_2c
    if-eqz p6, :cond_37

    .line 942
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p3, p2, :cond_37

    .line 944
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_38

    :cond_37
    move v1, v0

    :goto_38
    return v1
.end method

.method private applyInsetsConfig(Lmiuix/view/WindowInsetsController$InsetsConfig;)V
    .registers 3

    .line 2012
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-nez v0, :cond_b

    .line 2013
    new-instance v0, Lmiuix/view/WindowInsetsController$InsetsConfig;

    invoke-direct {v0}, Lmiuix/view/WindowInsetsController$InsetsConfig;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    .line 2015
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    invoke-virtual {v0, p1}, Lmiuix/view/WindowInsetsController$InsetsConfig;->update(Lmiuix/view/WindowInsetsController$InsetsConfig;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2016
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :cond_16
    return-void
.end method

.method private applyInternalWindowInsets(ZZZZZZ)V
    .registers 15

    .line 2001
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mUserInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-eqz v0, :cond_5

    return-void

    .line 2004
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInternalInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-nez v0, :cond_10

    .line 2005
    new-instance v0, Lmiuix/view/WindowInsetsController$InsetsConfig;

    invoke-direct {v0}, Lmiuix/view/WindowInsetsController$InsetsConfig;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInternalInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    .line 2007
    :cond_10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInternalInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiuix/view/WindowInsetsController$InsetsConfig;->update(ZZZZZZ)Z

    .line 2008
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInternalInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsConfig(Lmiuix/view/WindowInsetsController$InsetsConfig;)V

    return-void
.end method

.method private computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 901
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 904
    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p4, 0x0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_12

    .line 905
    :cond_c
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez p1, :cond_12

    .line 906
    iput p4, p5, Landroid/graphics/Rect;->top:I

    .line 908
    :cond_12
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez p1, :cond_25

    if-eqz p2, :cond_19

    goto :goto_25

    .line 911
    :cond_19
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_27

    sub-int/2addr p1, p3

    .line 912
    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    if-gez p1, :cond_27

    .line 914
    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_27

    .line 909
    :cond_25
    :goto_25
    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    .line 918
    :cond_27
    :goto_27
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz p1, :cond_33

    if-lez p3, :cond_33

    .line 919
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    :cond_33
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .registers 3

    .line 1443
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_a

    .line 1444
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    .line 1446
    :cond_a
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private dismissContextMenu()V
    .registers 2

    .line 1753
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_c

    .line 1754
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    .line 1755
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 1756
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    :cond_c
    return-void
.end method

.method private dispatchContentInset(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x0

    .line 852
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private dispatchContentInset(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 856
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 858
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 859
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset(Z)V

    :cond_10
    return-void
.end method

.method private dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V
    .registers 7

    .line 687
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 689
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 690
    instance-of v3, v2, Lmiuix/view/WindowInsetsState;

    if-eqz v3, :cond_15

    .line 691
    move-object v3, v2

    check-cast v3, Lmiuix/view/WindowInsetsState;

    invoke-interface {v3, p2}, Lmiuix/view/WindowInsetsState;->setInsetsIgnoringVisibility(Z)V

    .line 693
    :cond_15
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1e

    .line 694
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 877
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 878
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAdjustView(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 1894
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1895
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    .line 1899
    :cond_11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object p1

    .line 1902
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method private getDisplayCoutInsets()Landroidx/core/graphics/Insets;
    .registers 5

    .line 800
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 802
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 804
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 807
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_26

    .line 808
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_3e

    .line 811
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_3e
    return-object v1

    .line 816
    :cond_3f
    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_54
    return-object v1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .registers 6

    .line 475
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_15

    .line 476
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 477
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_18

    .line 479
    :cond_15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    :goto_18
    if-eqz p1, :cond_26

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 485
    :cond_26
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz p2, :cond_31

    .line 486
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 489
    :cond_31
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1378
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isCutoutToLeftEdge(Landroidx/core/graphics/Insets;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 787
    :cond_4
    iget p1, p1, Landroidx/core/graphics/Insets;->left:I

    if-lez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private isCutoutToRightEdge(Landroidx/core/graphics/Insets;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 795
    :cond_4
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    if-lez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private isLayoutHideNavigation()Z
    .registers 2

    .line 1339
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private isNavigationBarToLeftEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_14

    .line 827
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    or-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_21

    .line 829
    :cond_14
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    or-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 831
    :goto_21
    iget p1, p1, Landroidx/core/graphics/Insets;->left:I

    if-lez p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method private isNavigationBarToRightEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_14

    .line 840
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    or-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_21

    .line 842
    :cond_14
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    or-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 844
    :goto_21
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    if-lez p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .registers 3

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 330
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_e

    .line 331
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    .line 333
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_15

    .line 334
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    .line 336
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-eqz v0, :cond_34

    .line 339
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_2c

    .line 340
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    if-nez v0, :cond_34

    .line 343
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->close()V

    :cond_34
    return-void
.end method

.method private notifyContentInset(Z)V
    .registers 3

    .line 864
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_1c

    .line 865
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_13

    if-eqz v0, :cond_13

    .line 866
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateContentInsetForNestedObserver(Landroid/graphics/Rect;)V

    .line 868
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    if-eqz p1, :cond_1c

    .line 869
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_1c
    return-void
.end method

.method private pullChildren()V
    .registers 4

    .line 1253
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_72

    const v0, 0x1020002

    .line 1254
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 1255
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 1256
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    .line 1257
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1258
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1259
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 1261
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_72

    .line 1262
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    .line 1263
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 1264
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    .line 1265
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz v2, :cond_6b

    .line 1267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    .line 1268
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 1270
    :cond_6b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMiuixFloatingOnInit(Z)V

    :cond_72
    return-void
.end method

.method private updateCurrentContentInset()V
    .registers 5

    .line 756
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 760
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v0

    .line 761
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 764
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_27

    .line 765
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2b

    .line 767
    :cond_27
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 771
    :goto_2b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_37

    .line 772
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 776
    :cond_37
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_3f

    .line 777
    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_3f
    return-void
.end method

.method private updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)V
    .registers 14

    .line 1966
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1967
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_13

    .line 1969
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_13
    move v5, p3

    if-ne p4, v1, :cond_1a

    .line 1972
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    :cond_1a
    move v6, p4

    .line 1974
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 1975
    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-boolean v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    move-object v2, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lmiuix/container/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 1980
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1981
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    .line 1985
    :goto_3d
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    if-eq p1, p2, :cond_46

    .line 1986
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    .line 1987
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    :cond_46
    return-void
.end method


# virtual methods
.method public addExtraPaddingObserver(Lmiuix/container/ExtraPaddingObserver;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-nez v0, :cond_b

    .line 390
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    .line 392
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 393
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {p1, v0}, Lmiuix/container/ExtraPaddingObserver;->setExtraHorizontalPadding(I)Z

    :cond_1d
    return-void
.end method

.method public animateContentMarginBottomByBottomMenu(I)V
    .registers 10

    .line 955
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 956
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 958
    :cond_b
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    .line 959
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 960
    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 961
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 962
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v3, Landroid/graphics/Rect;->left:I

    .line 963
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 964
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1183
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 1185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1186
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1188
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1357
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1362
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 1363
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_26

    .line 1364
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_32

    .line 1365
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 1366
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_32

    .line 1370
    :cond_26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    :cond_32
    :goto_32
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 12

    .line 513
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V

    .line 515
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v2

    .line 516
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v6

    const/4 v7, 0x0

    .line 518
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSystemBarsInsetBottom:I

    .line 520
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 521
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 522
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 527
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    if-eqz v1, :cond_3f

    .line 528
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 529
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    goto :goto_54

    .line 531
    :cond_3f
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 532
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 534
    :goto_54
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSystemBarsInsetBottom:I

    .line 535
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mImeInsetBottom:I

    .line 536
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v5, v3, Landroidx/core/graphics/Insets;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 537
    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 538
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSystemBarsInsetBottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 539
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz v3, :cond_7a

    if-lez v1, :cond_7a

    .line 541
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    :cond_7a
    if-nez v2, :cond_98

    .line 546
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 547
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isNavigationBarToLeftEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 548
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 550
    :cond_8c
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isNavigationBarToRightEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 551
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 559
    :cond_98
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-nez v0, :cond_a4

    .line 560
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-eqz v0, :cond_bc

    iget-boolean v0, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    if-eqz v0, :cond_bc

    .line 562
    :cond_a4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 563
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 564
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 567
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 568
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 569
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 570
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 573
    :cond_bc
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->renderContentInCutoutArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 575
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 576
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 577
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getDisplayCoutInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 578
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isCutoutToLeftEdge(Landroidx/core/graphics/Insets;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 579
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 581
    :cond_da
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isCutoutToRightEdge(Landroidx/core/graphics/Insets;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 582
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 589
    :cond_e4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v0, :cond_ec

    .line 590
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    goto :goto_ef

    .line 592
    :cond_ec
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInset()V

    .line 595
    :goto_ef
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-nez v0, :cond_103

    if-eqz v2, :cond_ff

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSystemBarsInsetBottom:I

    if-eq v0, v1, :cond_103

    .line 597
    :cond_ff
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 608
    :cond_103
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-eqz v0, :cond_13b

    iget-boolean v1, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    if-nez v1, :cond_13b

    .line 609
    iget-boolean v1, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    if-eqz v1, :cond_117

    .line 610
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 611
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 613
    :cond_117
    iget-boolean v1, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    if-eqz v1, :cond_123

    .line 614
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 615
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 617
    :cond_123
    iget-boolean v1, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    if-eqz v1, :cond_12f

    .line 618
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 619
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 621
    :cond_12f
    iget-boolean v0, v0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    if-eqz v0, :cond_13b

    .line 622
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 623
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 626
    :cond_13b
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mImeInsetBottom:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 629
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v8, 0x1

    if-eqz v0, :cond_178

    if-eqz v6, :cond_152

    .line 631
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 633
    :cond_152
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-eqz v1, :cond_15f

    .line 634
    check-cast v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 637
    :cond_15f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    .line 638
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-eqz v0, :cond_16d

    if-nez v6, :cond_16d

    move v4, v8

    goto :goto_16e

    :cond_16d
    move v4, v7

    :goto_16e
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 637
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    move v9, v0

    goto :goto_179

    :cond_178
    move v9, v7

    .line 641
    :goto_179
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_182

    .line 642
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 644
    :cond_182
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1d6

    .line 645
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 647
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 649
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 650
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez v1, :cond_1a8

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-eqz v1, :cond_1aa

    iget-boolean v1, v1, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    if-eqz v1, :cond_1aa

    .line 651
    :cond_1a8
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 653
    :cond_1aa
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz v0, :cond_1c8

    .line 654
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 655
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 656
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    :goto_1c6
    or-int/2addr v9, v0

    goto :goto_1d6

    .line 660
    :cond_1c8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    goto :goto_1c6

    .line 664
    :cond_1d6
    :goto_1d6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1df

    .line 665
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 668
    :cond_1df
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f1

    .line 669
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v9, v8

    :cond_1f1
    if-eqz v9, :cond_1f6

    .line 674
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 676
    :cond_1f6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_200

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_200

    move v0, v8

    goto :goto_201

    :cond_200
    move v0, v7

    .line 679
    :goto_201
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_20a

    if-nez v0, :cond_20a

    move v7, v8

    :cond_20a
    return v7
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1200
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .registers 2

    .line 1230
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method public getBaseInnerInsets()Landroid/graphics/Rect;
    .registers 2

    .line 884
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getBottomInset()I
    .registers 2

    .line 1192
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getInsetHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 2

    .line 1561
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_9

    .line 1562
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getBottomMenuCustomViewOffset()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    .line 293
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 1234
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 700
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentMask()Landroid/view/View;
    .registers 2

    .line 1290
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .registers 4

    .line 1226
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 1222
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method getDeviceType()I
    .registers 2

    .line 251
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    return v0
.end method

.method public getExtraPaddingPolicy()Lmiuix/container/ExtraPaddingPolicy;
    .registers 2

    .line 384
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-object v0
.end method

.method public getInnerInsets()Landroid/graphics/Rect;
    .registers 2

    .line 888
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method isBottomAnimating()Z
    .registers 2

    .line 1196
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .registers 2

    .line 1218
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isRootSubDecor()Z
    .registers 2

    .line 1303
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .registers 7

    .line 1312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1313
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isTargetSdkVersionAboveV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 1316
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v2, v0, 0x100

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v3

    .line 1320
    :goto_1f
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v4, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v3

    .line 1322
    :goto_26
    iget-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v5, :cond_31

    if-nez v0, :cond_30

    if-eqz v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v3

    :cond_30
    :goto_30
    return v1

    :cond_31
    if-eqz v2, :cond_35

    if-nez v0, :cond_39

    :cond_35
    if-eqz v4, :cond_38

    goto :goto_39

    :cond_38
    move v1, v3

    :cond_39
    :goto_39
    return v1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 893
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 895
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 969
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 970
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 320
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->processActionBarOverlayLayout ConfigurationChanged newConfig.densityDpi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 324
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    .line 325
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    .line 326
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 347
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-eqz p1, :cond_43

    .line 348
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->isContextMenuPopupWindowShowing()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 349
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->refreshContextMenuPopupWindow()V

    :cond_43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 444
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 446
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 447
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonPanelView:Lmiuix/appcompat/app/GroupButtonsPanel;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnContainerViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_19

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_19
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 981
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 982
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 4

    .line 301
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 302
    :goto_9
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eq v1, v0, :cond_37

    .line 303
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 304
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz p1, :cond_1f

    .line 306
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    .line 309
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onFloatingModeChanged(Z)V

    .line 310
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_31

    .line 311
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onFloatingModeChanged(Z)V

    .line 313
    :cond_31
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_37
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    .line 1139
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1140
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_a

    .line 1141
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 1143
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    const/4 p2, 0x0

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 1144
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz p1, :cond_38

    .line 1145
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    move p1, p2

    .line 1146
    :goto_20
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_38

    .line 1147
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/container/ExtraPaddingObserver;

    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {p3, p4}, Lmiuix/container/ExtraPaddingObserver;->onExtraPaddingChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 1150
    :cond_38
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eqz p1, :cond_43

    .line 1151
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p3}, Lmiuix/container/ExtraPaddingPolicy;->applyExtraPadding(Landroid/view/View;)V

    .line 1154
    :cond_43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_50

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez p3, :cond_50

    .line 1155
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    .line 1157
    :cond_50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1158
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mUserInsetsConfig:Lmiuix/view/WindowInsetsController$InsetsConfig;

    if-nez p3, :cond_ae

    .line 1159
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p3

    if-eqz p3, :cond_ae

    .line 1162
    iget-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    if-eqz p4, :cond_70

    .line 1163
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result p5

    or-int/2addr p4, p5

    invoke-virtual {p3, p4}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object p3

    goto :goto_7d

    .line 1165
    :cond_70
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result p5

    or-int/2addr p4, p5

    invoke-virtual {p3, p4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p3

    .line 1167
    :goto_7d
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_ae

    const/4 p4, 0x2

    .line 1169
    new-array p4, p4, [I

    .line 1170
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1171
    aget p4, p4, p2

    .line 1172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    add-int/2addr p5, p4

    sub-int/2addr p1, p5

    .line 1173
    iget p5, p3, Landroidx/core/graphics/Insets;->left:I

    const/4 v0, 0x1

    if-lt p4, p5, :cond_9b

    move v4, v0

    goto :goto_9c

    :cond_9b
    move v4, p2

    .line 1174
    :goto_9c
    iget p3, p3, Landroidx/core/graphics/Insets;->right:I

    if-lt p1, p3, :cond_a2

    move v6, v0

    goto :goto_a3

    :cond_a2
    move v6, p2

    .line 1175
    :goto_a3
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInternalWindowInsets(ZZZZZZ)V

    :cond_ae
    return-void
.end method

.method protected onMeasure(II)V
    .registers 21

    move-object/from16 v7, p0

    .line 987
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpec(I)I

    move-result v8

    .line 988
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpec(I)I

    move-result v9

    .line 998
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 999
    iget-object v11, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v12, 0x0

    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    .line 1003
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v6, v0, :cond_6e

    .line 1004
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v10, :cond_6b

    if-eq v5, v11, :cond_6b

    .line 1006
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_32

    goto :goto_6b

    :cond_32
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 1009
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1010
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1011
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1012
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1013
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v15

    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1016
    :cond_6e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7f

    .line 1018
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_80

    :cond_7f
    move v0, v12

    .line 1022
    :goto_80
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v1

    .line 1024
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v2, :cond_90

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_90

    move v2, v1

    goto :goto_91

    :cond_90
    move v2, v12

    .line 1030
    :goto_91
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1031
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1033
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v3

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v4

    if-eqz v4, :cond_af

    if-lez v0, :cond_af

    .line 1037
    iget-object v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v5, Landroid/graphics/Rect;->top:I

    .line 1040
    :cond_af
    iget-boolean v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v5, :cond_c0

    .line 1041
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1042
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_d7

    :cond_c0
    if-eqz v4, :cond_c9

    if-lez v0, :cond_d0

    .line 1046
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    goto :goto_d0

    .line 1049
    :cond_c9
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1051
    :cond_d0
    :goto_d0
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1057
    :goto_d7
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_e0

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez v0, :cond_102

    :cond_e0
    if-eqz v3, :cond_102

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_f4

    .line 1059
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 1060
    iput v12, v0, Landroid/graphics/Rect;->left:I

    :cond_f4
    if-nez v1, :cond_102

    .line 1063
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz v0, :cond_fe

    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mImeInsetBottom:I

    if-gtz v0, :cond_102

    .line 1064
    :cond_fe
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 1067
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 1068
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/16 v16, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v0, 0x0

    .line 1069
    iput-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    goto :goto_11f

    :cond_11d
    move/from16 v17, v6

    .line 1072
    :goto_11f
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_132

    .line 1073
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v10, v0, v12, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1076
    :cond_132
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v0, :cond_14e

    .line 1077
    :cond_140
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1082
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1083
    iput-boolean v12, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 1086
    :cond_14e
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_192

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_192

    .line 1087
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16d

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_192

    :cond_16d
    const v0, 0x1020002

    .line 1091
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_192

    .line 1092
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_192

    .line 1093
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1100
    :cond_192
    :goto_192
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_1c0

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 1101
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1102
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-direct {v7, v2, v3, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)V

    .line 1104
    iget-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eqz v1, :cond_1c0

    .line 1105
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1106
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 1107
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    goto :goto_1c1

    :cond_1c0
    move v2, v8

    :goto_1c1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v9

    .line 1111
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1112
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1113
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1114
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1115
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v10

    if-eqz v11, :cond_20f

    .line 1118
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20f

    .line 1119
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    .line 1120
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1124
    :cond_20f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1132
    invoke-static {v1, v8, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    .line 1133
    invoke-static {v0, v9, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 1132
    invoke-virtual {v7, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1134
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMenuStateChanged(II)V
    .registers 4

    .line 1487
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    aput p1, v0, p2

    const/4 p1, 0x0

    .line 1488
    aget p1, v0, p1

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1489
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p2, :cond_35

    .line 1490
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1491
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p2, :cond_1f

    move p1, p2

    .line 1496
    :cond_1f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1497
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    goto :goto_38

    .line 1499
    :cond_35
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    :goto_38
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 16

    .line 1859
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1860
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1862
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1863
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 1867
    :cond_1a
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v9, 0x0

    aput v9, v8, v1

    .line 1868
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v2, :cond_2f

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez v3, :cond_2f

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 1869
    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_2f
    if-lez p3, :cond_5b

    .line 1871
    aget p2, p4, v1

    sub-int p5, p3, p2

    if-lez p5, :cond_5b

    .line 1872
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p5, :cond_5b

    instance-of v2, p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v2, :cond_5b

    sub-int/2addr p3, p2

    .line 1874
    check-cast p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p5, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopOffsetForCoordinateView(Landroid/view/View;)I

    move-result p2

    const/4 p5, -0x1

    if-eq p2, p5, :cond_5b

    sub-int/2addr p2, p3

    .line 1877
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 1878
    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedPreScroll(Landroid/view/View;I)I

    move-result p1

    .line 1879
    aget p2, p4, v1

    add-int/2addr p2, p1

    aput p2, p4, v1

    .line 1883
    :cond_5b
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    .line 1851
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e

    .line 1852
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1854
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 19

    move-object v0, p0

    .line 1772
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x1

    if-gez p5, :cond_2b

    .line 1776
    aget v2, p7, v1

    sub-int v3, p5, v2

    if-gtz v3, :cond_2b

    .line 1777
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v3, :cond_2b

    instance-of v4, v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v4, :cond_2b

    sub-int v2, p5, v2

    .line 1779
    check-cast v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    move-object v4, p1

    .line 1780
    invoke-virtual {v3, p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedScroll(Landroid/view/View;I)I

    move-result v2

    sub-int v3, p5, v2

    .line 1785
    aget v5, p7, v1

    add-int/2addr v5, v2

    aput v5, p7, v1

    move v6, v3

    goto :goto_2e

    :cond_2b
    move-object v4, p1

    move/from16 v6, p5

    .line 1788
    :goto_2e
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v2, 0x0

    aput v2, v9, v1

    .line 1789
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_46

    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez v2, :cond_46

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1790
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 1792
    :cond_46
    invoke-direct {p0, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 7

    .line 1811
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1812
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1814
    :cond_e
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 1818
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1c

    .line 1819
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_1c
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 8

    .line 1797
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1800
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    .line 1801
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1803
    :cond_14
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    return v1

    .line 1807
    :cond_1b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_26

    move v1, v2

    :cond_26
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5

    .line 1825
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1829
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_5f

    .line 1830
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1831
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result p2

    if-eqz p2, :cond_5f

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p2, :cond_5f

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p2, :cond_5f

    invoke-virtual {p2}, Lmiuix/appcompat/app/ActionBar;->isAdsorptionToNoOverlay()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 1832
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p2

    if-nez p2, :cond_5f

    .line 1833
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScrollTarget:Landroid/view/View;

    .line 1834
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 1835
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1837
    :cond_3a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScrollTarget:Landroid/view/View;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopOffsetForCoordinateView(Landroid/view/View;)I

    move-result p1

    .line 1838
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr p2, v0

    if-eq p1, p2, :cond_5f

    .line 1841
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroller:Landroid/widget/Scroller;

    sub-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1842
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    .line 1352
    :cond_8
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    return p1
.end method

.method public requestDispatchContentInset()V
    .registers 2

    const/4 v0, 0x0

    .line 848
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset(Z)V

    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .line 975
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .registers 3

    .line 1204
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_b

    .line 1206
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    :cond_b
    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 3

    .line 1294
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_17

    .line 1296
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 1297
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    .line 1298
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    :cond_17
    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    .line 1765
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setBottomExtraInset(I)V
    .registers 4

    .line 263
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    if-eq v0, p1, :cond_2f

    .line 264
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    .line 266
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 267
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 268
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, v0, :cond_1d

    move p1, v0

    .line 272
    :cond_1d
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 273
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p1, :cond_2f

    .line 274
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x1

    .line 275
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;Z)V

    :cond_2f
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1531
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_7

    .line 1532
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1555
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_7

    .line 1556
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    :cond_7
    return-void
.end method

.method public setBottomMenuExtraInset(I)V
    .registers 2

    .line 1505
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 3

    .line 281
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    if-eq v0, p1, :cond_9

    .line 282
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 283
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateBottomMenuMode()V

    :cond_9
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2

    .line 1238
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    return-void
.end method

.method public setContentMask(Landroid/view/View;)V
    .registers 4

    .line 1281
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 1283
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isOled()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_21

    .line 1284
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 1285
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1284
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    :cond_21
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 1249
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 2

    .line 288
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 407
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    if-eq v0, p1, :cond_10

    .line 408
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    .line 409
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_10

    .line 410
    invoke-virtual {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .registers 3

    .line 418
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    if-eq v0, p1, :cond_6

    .line 419
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    :cond_6
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 432
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eq v0, p1, :cond_9

    .line 433
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    .line 434
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .registers 4

    .line 356
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-nez v0, :cond_3a

    if-eqz p1, :cond_3a

    .line 358
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 359
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    invoke-virtual {p1, v0}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 360
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    if-eqz p1, :cond_43

    .line 361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)V

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_43

    .line 364
    :goto_22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_43

    .line 365
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/container/ExtraPaddingObserver;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {v0, v1}, Lmiuix/container/ExtraPaddingObserver;->setExtraHorizontalPadding(I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 370
    :cond_3a
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz p1, :cond_43

    .line 372
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    invoke-virtual {p1, v0}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 375
    :cond_43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_4e

    .line 376
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 378
    :cond_4e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setGroupButtonsPanelBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2021
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonPanelView:Lmiuix/appcompat/app/GroupButtonsPanel;

    if-eqz v0, :cond_7

    .line 2022
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setGroupButtonsPanelBackgroundColor(I)V
    .registers 3

    .line 2027
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonPanelView:Lmiuix/appcompat/app/GroupButtonsPanel;

    if-eqz v0, :cond_7

    .line 2028
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setGroupButtonsPanelBackgroundResource(I)V
    .registers 3

    .line 2033
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonPanelView:Lmiuix/appcompat/app/GroupButtonsPanel;

    if-eqz v0, :cond_7

    .line 2034
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_7
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public setNestedScrollingParentEnabled(Z)V
    .registers 2

    .line 1962
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 3

    .line 1211
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 1212
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 1213
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    :cond_9
    return-void
.end method

.method public setRootSubDecor(Z)V
    .registers 2

    .line 1344
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 3

    .line 1276
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 1277
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 3

    .line 1242
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_9

    .line 1243
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 1244
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_9
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 495
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_15

    .line 496
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 497
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_18

    .line 499
    :cond_15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 502
    :goto_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_2d

    .line 504
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 507
    :cond_2d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 6

    .line 468
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 471
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1388
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 1391
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_13

    .line 1392
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1394
    :cond_13
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 1397
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1399
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    .line 1401
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    :cond_27
    if-eqz v1, :cond_2b

    .line 1405
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 1408
    :cond_2b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 1409
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1411
    :cond_3e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 1412
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 1414
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    .line 1417
    :cond_57
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    .line 1419
    :cond_5d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of p1, p1, Lmiuix/view/SearchActionMode;

    if-eqz p1, :cond_6a

    .line 1420
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_6a

    .line 1421
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 1424
    :cond_6a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1428
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_16

    .line 1430
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b

    .line 1431
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1434
    :cond_b
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    .line 1435
    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    .line 1438
    :cond_16
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1383
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method protected updateBottomMenuMode()V
    .registers 8

    .line 1451
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    .line 1454
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x3

    const/16 v3, 0x280

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-nez v0, :cond_3c

    .line 1456
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1457
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v1

    float-to-int v1, v6

    .line 1459
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    if-ne v4, v5, :cond_3a

    const/16 v4, 0x19a

    if-le v0, v4, :cond_3a

    if-le v1, v3, :cond_3a

    :goto_38
    move v0, v2

    goto :goto_54

    :cond_3a
    move v0, v5

    goto :goto_54

    :cond_3c
    const/4 v6, 0x1

    if-ne v0, v6, :cond_54

    .line 1464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1465
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    if-ne v1, v5, :cond_3a

    if-le v0, v3, :cond_3a

    goto :goto_38

    .line 1472
    :cond_54
    :goto_54
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    if-eq v0, v1, :cond_74

    .line 1473
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    .line 1474
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_66

    .line 1475
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    .line 1476
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    .line 1478
    :cond_66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_74

    .line 1479
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    .line 1480
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    :cond_74
    return-void
.end method

.method updateCurrentContentInsetInOverlayMode()V
    .registers 5

    .line 705
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 707
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_49

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_49

    .line 710
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopViewHeight()I

    move-result v0

    .line 711
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mEnableWindowStatusBarInsets:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    add-int/2addr v0, v2

    .line 712
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz v2, :cond_3a

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 713
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 714
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 721
    :cond_49
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v0

    .line 722
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 724
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mGroupButtonInsetsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 727
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_72

    .line 728
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_76

    .line 730
    :cond_72
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 734
    :goto_76
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_87

    .line 735
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8b

    .line 737
    :cond_87
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 741
    :goto_8b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_97

    .line 742
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 746
    :cond_97
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_9f

    .line 747
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 749
    :cond_9f
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    return-void
.end method
