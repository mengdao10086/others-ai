.class Lmiuix/appcompat/app/AppDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "AppDelegate.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/ActionBarDelegateImpl;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

.field private final mActivityIdentity:Ljava/lang/String;

.field private mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mDelegateFinished:Z

.field private mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

.field private mFloatingRoot:Landroid/view/ViewGroup;

.field private mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsUserResponsiveEnabled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field private mSplitActionBarEnable:Z

.field private mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUIMode:I

.field private mUpdateWindowInfoRunnable:Ljava/lang/Runnable;

.field private mUserIsFloatingWindow:Ljava/lang/Boolean;

.field mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic $r8$lambda$3Sr00TMfPe9u6Ram_CsX3uemma0(Lmiuix/appcompat/app/AppDelegate;Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V
    .registers 6

    .line 99
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    .line 82
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 83
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    .line 87
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 89
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    .line 696
    new-instance p1, Lmiuix/appcompat/app/AppDelegate$3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AppDelegate$3;-><init>(Lmiuix/appcompat/app/AppDelegate;)V

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 102
    iput-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .registers 1

    .line 72
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/AppDelegate;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;
    .registers 1

    .line 72
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    return-object p0
.end method

.method private attachToWindow(Landroid/view/Window;)V
    .registers 5

    .line 187
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_21

    .line 192
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 193
    instance-of v2, v0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    if-nez v2, :cond_1b

    .line 197
    new-instance v1, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 201
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    return-void

    .line 194
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureWindow()V
    .registers 3

    .line 175
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_12

    .line 178
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_12

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->attachToWindow(Landroid/view/Window;)V

    .line 181
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_17

    return-void

    .line 182
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDecorViewLayoutRes(Landroid/view/Window;)I
    .registers 7

    .line 662
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 664
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 665
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 666
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar_movable:I

    goto :goto_1d

    .line 668
    :cond_18
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    goto :goto_1d

    .line 671
    :cond_1b
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_simple:I

    .line 674
    :goto_1d
    sget v3, Lmiuix/appcompat/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_32

    .line 676
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v1, v3

    .line 680
    :cond_32
    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Dialog;

    if-eqz v3, :cond_49

    .line 681
    sget v3, Lmiuix/appcompat/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v3, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    .line 683
    invoke-static {p1, v0}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    :cond_49
    return v1
.end method

.method private installSubDecor()V
    .registers 7

    .line 336
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 340
    :cond_5
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->ensureWindow()V

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    .line 342
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 345
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget-object v3, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 347
    sget v3, Lmiuix/appcompat/R$styleable;->Window_responsiveEnabled:I

    iget-boolean v4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 348
    new-instance v3, Lmiuix/appcompat/app/AppDelegate$1;

    invoke-direct {v3, p0, p0}, Lmiuix/appcompat/app/AppDelegate$1;-><init>(Lmiuix/appcompat/app/AppDelegate;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 356
    :cond_30
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowLayoutMode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_44

    .line 359
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 362
    :cond_44
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 367
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_57

    const/16 v3, 0x8

    .line 368
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 370
    :cond_57
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_64

    const/16 v3, 0x9

    .line 371
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 373
    :cond_64
    sget v3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 374
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowFloating:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 376
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setTranslucentStatus(I)V

    .line 379
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    iput v3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 382
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V

    .line 384
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_ae

    .line 385
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 386
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    .line 387
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->addExtraPaddingObserver(Lmiuix/container/ExtraPaddingObserver;)V

    .line 388
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 392
    :cond_ae
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_166

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_166

    .line 393
    sget v3, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 394
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 395
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 396
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 397
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 403
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_ea

    .line 404
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 408
    :cond_ea
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 409
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    .line 414
    :cond_f5
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_108

    .line 415
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 419
    :cond_108
    const-string v1, "splitActionBarWhenNarrow"

    .line 420
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 423
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    goto :goto_12b

    .line 425
    :cond_123
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    .line 428
    :goto_12b
    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    if-eqz v3, :cond_13d

    .line 429
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0, v1, v3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 430
    sget v1, Lmiuix/appcompat/R$styleable;->Window_hyperSplitMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 431
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setHyperSplitMenuEnabled(Z)V

    .line 434
    :cond_13d
    sget v1, Lmiuix/appcompat/R$styleable;->Window_endActionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 435
    sget v1, Lmiuix/appcompat/R$styleable;->Window_hyperActionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 436
    invoke-virtual {p0, v0, v1, v4}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(ZZZ)V

    goto :goto_166

    .line 438
    :cond_14f
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_166

    .line 439
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 444
    :cond_166
    :goto_166
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 363
    :cond_16a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private installToDecor(Landroid/view/Window;)V
    .registers 9

    .line 591
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 592
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 594
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 595
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v2, :cond_52

    .line 596
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 597
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 598
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-virtual {v2, v0, v3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;

    move-result-object v0

    .line 599
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 600
    iget-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 601
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {v2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->shouldInterceptBack()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 602
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance v4, Lmiuix/appcompat/app/AppDelegate$2;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lmiuix/appcompat/app/AppDelegate$2;-><init>(Lmiuix/appcompat/app/AppDelegate;Z)V

    invoke-virtual {v2, v3, v4}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 610
    :cond_52
    iget-boolean v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mUserExtraPaddingPolicy:Z

    if-nez v2, :cond_59

    .line 611
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->initExtraPaddingPolicy()V

    .line 613
    :cond_59
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 614
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const v4, 0x1020002

    if-eqz v3, :cond_c1

    .line 615
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 616
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 617
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 618
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 619
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    .line 620
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getExtraPaddingPolicy()Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 621
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 622
    invoke-virtual {p1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c1

    .line 624
    :goto_9f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_b1

    const/4 v5, 0x0

    .line 625
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 626
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 627
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_9f

    :cond_b1
    const/4 v5, -0x1

    .line 630
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setId(I)V

    .line 631
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 633
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_c1

    .line 634
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 638
    :cond_c1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 640
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_d0

    .line 641
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    .line 643
    :cond_d0
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p1, :cond_dd

    .line 644
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->init(Landroid/view/View;Z)V

    :cond_dd
    return-void
.end method

.method private isSystemProcess()Z
    .registers 3

    .line 689
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWindowActionBarEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 693
    sget v0, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .registers 6

    .line 868
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 870
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    sget-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    invoke-direct {p0, v0, p1, v3, v1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(ZIZZ)V

    return-void
.end method

.method private notifyFloatWindowModeChanged(Z)V
    .registers 3

    .line 542
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanged(Z)V

    return-void
.end method

.method private setFloatingWindowMode(ZIZZ)V
    .registers 6

    .line 505
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    if-eqz v0, :cond_55

    if-nez p4, :cond_b

    sget-boolean p4, Lmiuix/os/Build;->IS_TABLET:Z

    if-nez p4, :cond_b

    goto :goto_55

    .line 508
    :cond_b
    iget-boolean p4, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    if-eq p4, p1, :cond_4a

    iget-object p4, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 509
    invoke-interface {p4, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanging(Z)Z

    move-result p4

    if-eqz p4, :cond_4a

    .line 510
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 512
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 513
    iget-boolean p2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 515
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_38

    if-eqz p1, :cond_33

    const/4 p4, -0x2

    .line 518
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_38

    :cond_33
    const/4 p4, -0x1

    .line 521
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    :cond_38
    :goto_38
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_44

    .line 527
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 528
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    :cond_44
    if-eqz p3, :cond_55

    .line 532
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->notifyFloatWindowModeChanged(Z)V

    goto :goto_55

    .line 534
    :cond_4a
    iget p3, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    if-eq p2, p3, :cond_55

    .line 536
    iput p2, p0, Lmiuix/appcompat/app/AppDelegate;->mUIMode:I

    .line 537
    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method private shouldShowFloatingActivityTabletMode()Z
    .registers 2

    .line 587
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingModeSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private updateSystemUiStateInFloatingTheme(Z)V
    .registers 8

    .line 475
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v2, v1, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v4

    .line 478
    :goto_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getTranslucentStatus()I

    move-result v5

    if-eqz v5, :cond_1f

    move v5, v3

    goto :goto_20

    :cond_1f
    move v5, v4

    :goto_20
    if-nez v2, :cond_27

    if-eqz v5, :cond_25

    goto :goto_27

    :cond_25
    move v2, v4

    goto :goto_28

    :cond_27
    :goto_27
    move v2, v3

    :goto_28
    const/16 v5, 0x1e

    if-nez p1, :cond_43

    if-eqz v2, :cond_32

    or-int/lit16 p1, v1, 0x400

    :goto_30
    move v1, p1

    goto :goto_35

    :cond_32
    and-int/lit16 p1, v1, -0x401

    goto :goto_30

    .line 487
    :goto_35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_4f

    if-eqz v2, :cond_3f

    .line 489
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_4f

    .line 491
    :cond_3f
    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_4f

    :cond_43
    const/high16 p1, 0xc000000

    .line 495
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 497
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_4f

    .line 498
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 501
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 572
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 573
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 575
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 576
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 823
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    .line 824
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 817
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    .line 818
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 4

    .line 206
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 207
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 209
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_d
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 854
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppDelegate;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public executeCloseEnterAnimation()V
    .registers 2

    .line 781
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 782
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeCloseEnterAnimation()V

    :cond_7
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .registers 2

    .line 769
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 770
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenEnterAnimation()V

    :cond_7
    return-void
.end method

.method public executeOpenExitAnimation()V
    .registers 2

    .line 775
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 776
    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/IActivitySwitcherAnimation;->executeOpenExitAnimation()V

    :cond_7
    return-void
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1104
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 972
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .registers 2

    .line 468
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_9

    .line 469
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 2

    .line 107
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getResponsiveSubject()Landroid/app/Activity;
    .registers 2

    .line 834
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getResponsiveSubject()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 218
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method public hideFloatingBrightPanel()V
    .registers 2

    .line 757
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 758
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingBrightPanel()V

    :cond_7
    return-void
.end method

.method public hideFloatingDimBackground()V
    .registers 2

    .line 751
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 752
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingDimBackground()V

    :cond_7
    return-void
.end method

.method public installFloatingSwitcher(ZLandroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 160
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 161
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isFromMultiApp(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 162
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1c

    .line 164
    :cond_17
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->install(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    :goto_1c
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 923
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 924
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method public isDelegateFinishing()Z
    .registers 2

    .line 813
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    return v0
.end method

.method public isFloatingTheme()Z
    .registers 2

    .line 454
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    return v0
.end method

.method public isInFloatingWindowMode()Z
    .registers 2

    .line 458
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUserIsFloatingWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 866
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    .line 867
    new-instance v0, Lmiuix/appcompat/app/AppDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/AppDelegate$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mUpdateWindowInfoRunnable:Ljava/lang/Runnable;

    .line 872
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 873
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mUpdateWindowInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 875
    :cond_28
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 876
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mUserExtraPaddingPolicy:Z

    if-nez v0, :cond_47

    .line 877
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    .line 878
    iget v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    if-eq v1, v0, :cond_47

    .line 879
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    .line 880
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->initExtraPaddingPolicy()V

    .line 881
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_47

    .line 882
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V

    .line 886
    :cond_47
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 887
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 888
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    :cond_55
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 977
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 978
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 980
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2c

    .line 982
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 983
    instance-of v4, v3, Lmiuix/appcompat/app/IFragment;

    if-eqz v4, :cond_29

    .line 984
    check-cast v3, Lmiuix/appcompat/app/IFragment;

    .line 986
    invoke-interface {v3}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v4

    if-nez v4, :cond_29

    .line 987
    invoke-interface {v3, p1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 116
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->checkThemeLegality()V

    .line 117
    sget-boolean v0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 119
    sput-boolean v1, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->sIsActionBarClassInit:Z

    .line 120
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadClass(Landroid/content/Context;)V

    .line 123
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontal:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-eqz v0, :cond_23

    move v3, v1

    .line 125
    :cond_23
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalEnable:I

    invoke-static {v0, v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 127
    iget-boolean v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    if-eqz v2, :cond_30

    move v0, v1

    .line 130
    :cond_30
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v3, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalInitEnable:I

    iget-boolean v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    invoke-static {v2, v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    .line 132
    iget-boolean v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    if-eqz v3, :cond_3f

    move v2, v1

    .line 135
    :cond_3f
    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v4, Lmiuix/appcompat/R$attr;->windowExtraPaddingApplyToContentEnable:I

    iget-boolean v5, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    invoke-static {v3, v4, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    .line 137
    iget-boolean v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    .line 142
    :goto_4f
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    .line 143
    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 144
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->setExtraPaddingApplyToContentEnable(Z)V

    .line 145
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 147
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AppDelegate;->installFloatingSwitcher(ZLandroid/os/Bundle;)V

    return-void
.end method

.method protected onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 712
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-eqz p1, :cond_c

    .line 289
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 6

    if-eqz p1, :cond_9

    .line 246
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 249
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isEndActionMenuEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSplitActionBarEnable:Z

    if-eqz p1, :cond_47

    .line 251
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 254
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3a

    if-nez p1, :cond_2e

    .line 257
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 261
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 263
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    :cond_2e
    if-eqz v2, :cond_3e

    .line 268
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 270
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    goto :goto_3e

    :cond_3a
    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_44

    .line 278
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_47

    .line 281
    :cond_44
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_47
    :goto_47
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 930
    invoke-super {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDestroy()V

    .line 931
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 932
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 934
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mUpdateWindowInfoRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_23

    .line 935
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    .line 995
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraHorizontalPadding:I

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 304
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    .line 310
    :cond_e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_4b

    .line 311
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 312
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4b

    .line 314
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_38

    .line 315
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_44

    .line 317
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_44
    if-nez p1, :cond_4b

    .line 321
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_4b
    return v0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1019
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 332
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPanelViewAdded(ILandroid/view/View;Landroid/view/Menu;Landroid/view/Menu;)V
    .registers 6

    .line 299
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lmiuix/appcompat/app/ActivityCallback;->onPanelViewAdded(ILandroid/view/View;Landroid/view/Menu;Landroid/view/Menu;)V

    return-void
.end method

.method public onPostResume()V
    .registers 3

    .line 235
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onPostResume()V

    .line 237
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_11
    return-void
.end method

.method protected onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 3

    .line 717
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    if-eqz p1, :cond_c

    .line 294
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 859
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_9

    .line 860
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    :cond_9
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 911
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 912
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_16

    .line 913
    const-string v0, "miuix:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 915
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 896
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 898
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_20

    .line 899
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 900
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 903
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_33

    .line 904
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 905
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 906
    const-string v1, "miuix:ActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_33
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 223
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onStop()V

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 227
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v1, :cond_14

    .line 229
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_14
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1024
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1025
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1027
    :cond_11
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1166
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_7

    .line 1167
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 546
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 547
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 549
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    .line 550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 551
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 553
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 557
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 561
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 562
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 564
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 565
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 566
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    :cond_13
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setEnableSwipToDismiss(Z)V
    .registers 3

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 746
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setEnableSwipToDismiss(Z)V

    :cond_7
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 1056
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraHorizontalPaddingEnable(Z)V

    .line 1057
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_a

    .line 1058
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    :cond_a
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .registers 3

    .line 1064
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 1065
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_a

    .line 1066
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingInitEnable(Z)V

    :cond_a
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 1072
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setExtraPaddingApplyToContentEnable(Z)V

    .line 1073
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_a

    .line 1074
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraPaddingApplyToContentEnable(Z)V

    :cond_a
    return-void
.end method

.method public setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V
    .registers 3

    .line 727
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 728
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setOnFloatingCallback(Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;)V

    :cond_7
    return-void
.end method

.method public setResponsiveEnabled(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsUserResponsiveEnabled:Z

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 649
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mTitle:Ljava/lang/CharSequence;

    .line 650
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_9

    .line 651
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public shouldDelegateActivityFinish()Z
    .registers 3

    .line 802
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_e

    .line 803
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->delegateFinishFloatingActivityInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 805
    iput-boolean v1, p0, Lmiuix/appcompat/app/AppDelegate;->mDelegateFinished:Z

    :cond_d
    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public showFloatingBrightPanel()V
    .registers 2

    .line 763
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->showFloatingBrightPanel()V

    :cond_7
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1007
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_9

    .line 1008
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 1010
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_12

    .line 1011
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method
