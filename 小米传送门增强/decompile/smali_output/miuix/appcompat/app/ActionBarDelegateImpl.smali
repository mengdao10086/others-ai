.class public abstract Lmiuix/appcompat/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "ActionBarDelegateImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBarDelegate;
.implements Lmiuix/container/ExtraPaddingObserver;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field protected mActionBar:Lmiuix/appcompat/app/ActionBar;

.field protected mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field protected mContentInset:Landroid/graphics/Rect;

.field protected mDeviceType:I

.field private mEndActionMenuEnabled:Z

.field protected mExtraHorizontalPadding:I

.field protected mExtraPaddingApplyToContentEnable:Z

.field protected mExtraPaddingEnable:Z

.field protected mExtraPaddingInitEnable:Z

.field protected mExtraPaddingObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/container/ExtraPaddingObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field protected mHasActionBar:Z

.field protected mHasAddSplitActionBar:Z

.field private mHyperActionMenuEnabled:Z

.field private mHyperSplitMenuEnabled:Z

.field private mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mImmersionMenuEnabled:Z

.field protected mIsDelegateAnimRunning:Z

.field protected mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

.field private mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field protected mOverlayActionBar:Z

.field protected mSubDecorInstalled:Z

.field private mTranslucentStatus:I

.field protected mUserExtraPaddingPolicy:Z

.field protected mViewWithContentInset:Landroid/view/View;

.field protected mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 106
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 118
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraHorizontalPadding:I

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingObserver:Ljava/util/List;

    .line 125
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mIsDelegateAnimRunning:Z

    .line 129
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 130
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    return-void
.end method

.method private updateOnBackPressedCallbackState(Z)V
    .registers 4

    .line 351
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-nez v0, :cond_1b

    .line 352
    new-instance v0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Z)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 364
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    goto :goto_1e

    .line 366
    :cond_1b
    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 646
    sget v0, Lmiuix/appcompat/R$id;->content_mask_vs:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_11

    .line 649
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_17

    .line 651
    :cond_11
    sget v0, Lmiuix/appcompat/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 653
    :goto_17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentMask(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method public addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 7

    .line 605
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 609
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar_vs:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_19

    .line 612
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_21

    .line 614
    :cond_19
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    :goto_21
    if-eqz v0, :cond_38

    .line 617
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 618
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 619
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 620
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 621
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 624
    :cond_38
    sget v1, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 625
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar_vs:I

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_51

    .line 628
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    goto :goto_59

    .line 630
    :cond_51
    sget v2, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    :goto_59
    if-eqz v2, :cond_6c

    .line 634
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 635
    invoke-virtual {p3, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    if-eqz v0, :cond_6c

    .line 637
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 638
    invoke-virtual {v2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 639
    invoke-virtual {v2, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_6c
    return-void
.end method

.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 7

    .line 275
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 276
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 278
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 279
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 280
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 281
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(IIII)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 282
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2b

    .line 283
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    iput-boolean p1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    :cond_2b
    return-void
.end method

.method protected createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 3

    .line 427
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz v0, :cond_7

    .line 594
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    :cond_7
    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 143
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_14

    .line 145
    invoke-interface {p0}, Lmiuix/appcompat/app/ActionBarDelegate;->createActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 152
    :cond_14
    :goto_14
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object v0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    .line 191
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 195
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 197
    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 2

    .line 203
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getExtraPaddingPolicy()Lmiuix/container/ExtraPaddingPolicy;
    .registers 2

    .line 699
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-object v0
.end method

.method public abstract getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 156
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1f

    .line 157
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 159
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_1f

    .line 161
    :cond_16
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 164
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .registers 2

    .line 383
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    return v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 174
    :try_start_1
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 178
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 179
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_20

    :cond_1f
    return-object v0

    .line 183
    :catch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v2, "ActionBarDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public hasActionBar()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected initExtraPaddingPolicy()V
    .registers 4

    .line 769
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mDeviceType:I

    sget v1, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 770
    invoke-static {v0, v1, v2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_13

    .line 775
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    :cond_13
    return-void
.end method

.method public isEndActionMenuEnabled()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mEndActionMenuEnabled:Z

    return v0
.end method

.method public isImmersionMenuShowing()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 534
    :cond_8
    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 p1, 0x0

    .line 347
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    const/4 p1, 0x1

    .line 341
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 434
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 209
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_13

    .line 211
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v0, :cond_13

    .line 213
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_13
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mContentInset:Landroid/graphics/Rect;

    return-void
.end method

.method protected abstract onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onDestroy()V
    .registers 2

    .line 232
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 233
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 235
    :cond_7
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_1a

    .line 236
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v0, :cond_1a

    .line 238
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onDestroy()V

    :cond_1a
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 6

    .line 294
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 297
    :cond_5
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    .line 299
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 300
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    if-eqz v1, :cond_19

    iget v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1b

    :cond_19
    iget v3, p1, Landroid/graphics/Rect;->left:I

    :goto_1b
    add-int/2addr v2, v3

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 301
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 302
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    if-eqz v1, :cond_2c

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2e

    :cond_2c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_2e
    add-int/2addr v2, p1

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 303
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_41

    instance-of v1, p1, Landroidx/core/view/ScrollingView;

    if-eqz v1, :cond_41

    .line 305
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToScrollingView(Landroid/view/ViewGroup;)V

    goto :goto_44

    .line 307
    :cond_41
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    :goto_44
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 3

    if-nez p2, :cond_7

    .line 328
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 659
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 661
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method protected reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 388
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 389
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-nez p2, :cond_15

    goto :goto_1b

    .line 394
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_28

    .line 390
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_28

    .line 391
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showOverflowMenu()Z

    :cond_28
    :goto_28
    return-void

    .line 399
    :cond_29
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public requestWindowFeature(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_19

    const/16 v0, 0x9

    if-eq p1, v0, :cond_16

    .line 269
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result p1

    return p1

    .line 260
    :cond_16
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    return v1

    .line 257
    :cond_19
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    return v1

    .line 266
    :cond_1c
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v1

    .line 263
    :cond_1f
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    return v1
.end method

.method public setEndActionMenuEnabled(ZZZ)V
    .registers 5

    .line 481
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mEndActionMenuEnabled:Z

    .line 482
    iput-boolean p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHyperActionMenuEnabled:Z

    .line 483
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_35

    .line 484
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndActionMenuEnable(Z)V

    .line 485
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHyperActionMenuEnable(Z)V

    .line 486
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-boolean p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHyperSplitMenuEnabled:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHyperSplitMenuEnabled(Z)V

    if-eqz p3, :cond_23

    .line 488
    invoke-interface {p0}, Lmiuix/appcompat/app/ActionBarDelegate;->invalidateOptionsMenu()V

    goto :goto_35

    .line 490
    :cond_23
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/appcompat/app/ActionBarDelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_35
    :goto_35
    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .registers 3

    .line 680
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_8

    .line 681
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 736
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingEnable:Z

    .line 737
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_9

    .line 738
    invoke-virtual {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    :cond_9
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .registers 2

    .line 744
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingInitEnable:Z

    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 2

    .line 748
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mExtraPaddingApplyToContentEnable:Z

    return-void
.end method

.method public setHyperSplitMenuEnabled(Z)V
    .registers 3

    .line 460
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHyperSplitMenuEnabled:Z

    .line 461
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_9

    .line 462
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHyperSplitMenuEnabled(Z)V

    :cond_9
    return-void
.end method

.method protected setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 5

    .line 412
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 416
    :cond_5
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 417
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_23

    .line 418
    invoke-virtual {v0, p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 419
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndActionMenuEnable()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 420
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 421
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getEndMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 420
    invoke-interface {p0, v1, v2, p1, v0}, Lmiuix/appcompat/app/ActionBarDelegate;->onPanelViewAdded(ILandroid/view/View;Landroid/view/Menu;Landroid/view/Menu;)V

    :cond_23
    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 4

    .line 371
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    move p1, v0

    .line 376
    :cond_12
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    if-eq v0, p1, :cond_24

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 377
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 378
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    :cond_24
    return-void
.end method

.method public showImmersionMenu()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    if-eqz v1, :cond_1a

    .line 540
    check-cast v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getLastAnchor()Landroid/view/View;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->getLastParent()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_1a

    .line 543
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    .line 548
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2c

    .line 549
    sget v1, Lmiuix/appcompat/R$id;->more:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 551
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void

    .line 556
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find anchor view in actionbar or any other anchor view used before. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    iget-boolean p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez p2, :cond_c

    .line 563
    const-string p1, "ActionBarDelegate"

    const-string p2, "Try to show immersion menu when immersion menu disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_5d

    .line 571
    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-nez p2, :cond_1b

    .line 572
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 573
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 575
    :cond_1b
    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    move-result p2

    if-eqz p2, :cond_5c

    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 576
    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez p2, :cond_49

    .line 577
    new-instance p2, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;Landroid/view/View;)V

    const/16 v0, 0x51

    .line 578
    invoke-virtual {p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 580
    invoke-virtual {p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 581
    iput-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_4e

    .line 583
    :cond_49
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {p2, v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    .line 585
    :goto_4e
    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result p2

    if-nez p2, :cond_5c

    .line 586
    iget-object p2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_5c
    return-void

    .line 568
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify a valid anchor view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 667
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 669
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    :cond_9
    return-void
.end method
