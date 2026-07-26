.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$FrameDecoration;,
        Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
    }
.end annotation


# instance fields
.field private mAdapterInvalid:Z

.field private mCacheListContainerMargin:Landroid/graphics/Rect;

.field private mCardStyle:I

.field private mConfigChangeUpdateViewEnable:Z

.field protected mContentInset:Landroid/graphics/Rect;

.field private mCurSelectedItem:I

.field private mDeviceType:I

.field private mEnableHyperMaterial:Z

.field mEnableNavigationBarInsets:Z

.field mEnableWindowInsets:Z

.field private mExtraHorizontalPadding:I

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

.field private mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

.field private mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

.field private mIsEnableCardStyle:Z

.field private mIsOverlayMode:Z

.field private mItemSelectable:Z

.field private mListContainer:Landroid/view/View;

.field private mListViewPaddingBottom:I

.field private mTempNavigationBarInsets:Landroidx/core/graphics/Insets;

.field private mUserExtraPaddingPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 120
    const-string v0, "dropdownPreference"

    const-class v1, Lmiuix/preference/flexible/DropdownPreferenceTemplate;

    invoke-static {v0, v1}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    const-string v0, "textPreference"

    const-class v1, Lmiuix/preference/flexible/TextPreferenceTemplate;

    invoke-static {v0, v1}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 122
    const-string v0, "radioButtonPreference"

    const-class v1, Lmiuix/preference/flexible/RadioButtonPreferenceTemplate;

    invoke-static {v0, v1}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    const-string v0, "preference"

    const-class v1, Lmiuix/preference/flexible/MiuixPreferenceTemplate;

    invoke-static {v0, v1}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 76
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 98
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    const/4 v2, -0x1

    .line 99
    iput v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 100
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 101
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v2, 0x0

    .line 105
    iput-object v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    .line 106
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    .line 113
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mEnableNavigationBarInsets:Z

    .line 114
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mEnableWindowInsets:Z

    .line 116
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mEnableHyperMaterial:Z

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/preference/PreferenceFragment;Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment;->setRecyclerViewPadding(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/preference/PreferenceFragment;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    return p0
.end method

.method static synthetic access$1600(Lmiuix/preference/PreferenceFragment;)Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return p0
.end method

.method static synthetic access$1700(Lmiuix/preference/PreferenceFragment;)Z
    .registers 1

    .line 76
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isDisableAllCardStyle()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lmiuix/preference/PreferenceFragment;)I
    .registers 1

    .line 76
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/PreferenceFragment;)Lmiuix/container/ExtraPaddingPolicy;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z
    .registers 5

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/preference/PreferenceFragment;Landroid/view/View;)Z
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lmiuix/preference/PreferenceFragment;)Landroidx/core/graphics/Insets;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method static synthetic access$702(Lmiuix/preference/PreferenceFragment;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 2

    .line 76
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;

    return-object p1
.end method

.method static synthetic access$800(Lmiuix/preference/PreferenceFragment;)Landroid/view/View;
    .registers 1

    .line 76
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/preference/PreferenceFragment;Landroid/view/View;Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->applyWindowInsets(Landroid/view/View;Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method private addWindowInsetsListener()V
    .registers 3

    .line 486
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mEnableWindowInsets:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isActionBarOverlay()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_17

    .line 490
    :cond_f
    new-instance v1, Lmiuix/preference/PreferenceFragment$2;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceFragment$2;-><init>(Lmiuix/preference/PreferenceFragment;)V

    invoke-static {v0, v1}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private applyWindowInsets(Landroid/view/View;Landroidx/core/graphics/Insets;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 536
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mCacheListContainerMargin:Landroid/graphics/Rect;

    if-eqz v1, :cond_10

    .line 540
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 541
    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_12

    :cond_10
    const/4 v2, 0x0

    move v1, v2

    .line 543
    :goto_12
    iget v3, p2, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 545
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getContentViewMargin(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    if-nez p1, :cond_8

    .line 526
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1

    .line 528
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 4

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 551
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_b

    .line 552
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1f

    :cond_b
    if-eqz p1, :cond_14

    .line 555
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_1f

    .line 557
    :cond_14
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    return-object p1
.end method

.method private initExtraPaddingPolicy()V
    .registers 4

    .line 341
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    sget v1, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 342
    invoke-static {v0, v1, v2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_37

    .line 347
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 349
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v1}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 350
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v1}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    goto :goto_37

    :cond_34
    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    :cond_37
    :goto_37
    return-void
.end method

.method private isDisableAllCardStyle()Z
    .registers 3

    const/4 v0, -0x1

    .line 1557
    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isLayoutHideNavigation(Landroid/view/View;)Z
    .registers 4

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isTargetSdkVersionAboveV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 520
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private isTabletOrFold()Z
    .registers 3

    .line 965
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method private setActionBarOverLayoutBg()V
    .registers 8

    .line 274
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    if-eqz v0, :cond_93

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 279
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 280
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/R$attr;->preferenceCardPageBackground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 283
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v3

    if-nez v3, :cond_34

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/preference/R$attr;->preferenceCardPageNoFloatingBackground:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_34

    move-object v2, v3

    :cond_34
    if-eqz v0, :cond_3a

    .line 291
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_62

    .line 293
    :cond_3a
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_5f

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_62

    .line 297
    :cond_5f
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :goto_62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 301
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7b

    move v3, v5

    goto :goto_7c

    :cond_7b
    move v3, v4

    :goto_7c
    const/high16 v6, 0x8000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_82

    move v4, v5

    :cond_82
    if-eqz v3, :cond_93

    if-nez v4, :cond_93

    .line 306
    instance-of v0, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_93

    .line 307
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_93
    return-void
.end method

.method private setRecyclerViewPadding(Landroidx/core/graphics/Insets;)V
    .registers 7

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 686
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v0, :cond_66

    if-eqz v1, :cond_66

    .line 688
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 689
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 693
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 694
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 695
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 696
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 697
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 698
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 699
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 700
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 701
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    add-int/2addr p1, v4

    .line 700
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_66

    .line 703
    :cond_52
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 704
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v4, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    add-int/2addr p1, v4

    .line 703
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_66
    :goto_66
    return-void
.end method

.method private updateActionBarOverlay()V
    .registers 4

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_19

    .line 255
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_14

    .line 256
    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_1a

    .line 261
    :cond_14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_4

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_21

    .line 264
    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_25

    .line 266
    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_25
    if-eqz v0, :cond_30

    .line 269
    sget v1, Lmiuix/preference/R$attr;->windowActionBarOverlay:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    :cond_30
    return-void
.end method

.method private updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z
    .registers 13

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p1

    if-nez p3, :cond_12

    .line 361
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_12
    move v4, p3

    if-nez p4, :cond_19

    .line 364
    iget-object p3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    :cond_19
    move v5, p4

    .line 366
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 367
    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 370
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v7

    move-object v1, p2

    move v6, p3

    .line 367
    invoke-virtual/range {v1 .. v7}, Lmiuix/container/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 372
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 373
    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    .line 377
    :goto_41
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 4

    .line 611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v0, :cond_15

    .line 613
    instance-of v2, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_15

    .line 614
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    .line 615
    :cond_15
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_20

    .line 616
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 3

    .line 637
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    if-nez v0, :cond_2f

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_23

    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_23

    .line 640
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    goto :goto_2f

    .line 641
    :cond_23
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_2f

    .line 642
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 645
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 232
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return v0
.end method

.method protected getListViewPaddingBottom()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method protected getListViewPaddingTop()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public hasActionBar()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected isActionBarOverlay()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    return v0
.end method

.method public isConfigChangeUpdateViewEnable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected isEmbeddedFragment()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected isInFloatingWindowMode()Z
    .registers 3

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 315
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_f

    .line 316
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10

    .line 897
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 898
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 901
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 903
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    .line 904
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    .line 905
    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    if-eq v1, v0, :cond_8c

    .line 906
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 907
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v1, :cond_2b

    .line 908
    sget v1, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 909
    invoke-static {v0, v1, v2}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 914
    :cond_2b
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_8c

    .line 915
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 917
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 918
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v2}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    move-result p1

    goto :goto_62

    .line 920
    :cond_41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 922
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 923
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_5e

    :cond_5d
    move p1, v1

    .line 927
    :goto_5e
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p1

    :goto_62
    if-eqz p1, :cond_8c

    .line 930
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getExtraHorizontalPadding()I

    move-result p1

    .line 931
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_6f

    .line 932
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPadding(I)Z

    .line 934
    :cond_6f
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_89

    .line 935
    :goto_73
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_89

    .line 936
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/container/ExtraPaddingObserver;

    invoke-interface {v0, p1}, Lmiuix/container/ExtraPaddingObserver;->onExtraPaddingChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 939
    :cond_89
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 945
    :cond_8c
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isTabletOrFold()Z

    move-result p1

    if-eqz p1, :cond_dc

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    if-nez p1, :cond_97

    goto :goto_dc

    .line 948
    :cond_97
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_9e

    return-void

    .line 952
    :cond_9e
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    if-eqz v0, :cond_dc

    .line 953
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 954
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 955
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_dc

    .line 956
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    .line 957
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget-object v2, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 958
    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget v7, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 957
    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 680
    :cond_3
    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceFragment;->setRecyclerViewPadding(Landroidx/core/graphics/Insets;)V

    .line 681
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/preference/PreferenceFragment;->applyWindowInsets(Landroid/view/View;Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 128
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isConfigChangeUpdateViewEnable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    .line 130
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 132
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 134
    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingEnable(Z)V

    .line 135
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalInitEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 136
    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingInitEnable(Z)V

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    sget v0, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    .line 139
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p1

    if-le p1, v1, :cond_45

    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    if-ne p1, v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :cond_46
    :goto_46
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    :cond_48
    return-void
.end method

.method protected final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 9

    .line 566
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter;

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mCardStyle:I

    invoke-direct {v0, p1, v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;ZI)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 567
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setItemSelectable(Z)V

    .line 568
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    invoke-virtual {p1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPadding(I)Z

    .line 569
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 570
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    if-eqz p1, :cond_49

    .line 571
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object v1, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 572
    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    # getter for: Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    iget v6, p1, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 571
    invoke-virtual/range {v0 .. v6}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 575
    :cond_49
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 9

    .line 392
    sget p3, Lmiuix/preference/R$layout;->miuix_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_13

    .line 395
    move-object p3, p1

    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 397
    :cond_13
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 398
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 399
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getListViewPaddingTop()I

    move-result v1

    .line 400
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getListViewPaddingBottom()I

    move-result v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2d

    .line 401
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    :cond_2d
    if-ne v2, v3, :cond_33

    .line 402
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    :cond_33
    iput v2, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    .line 403
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 404
    invoke-static {p1, v1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 405
    new-instance v1, Lmiuix/preference/PreferenceFragment$FrameDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object v1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 406
    iget-boolean p3, p0, Lmiuix/preference/PreferenceFragment;->mEnableHyperMaterial:Z

    invoke-virtual {v1, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->enableHyperMaterial(Z)V

    .line 407
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 408
    new-instance p3, Lmiuix/recyclerview/card/CardDefaultItemAnimator;

    invoke-direct {p3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 409
    iput-object p2, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    .line 410
    invoke-direct {p0, p2}, Lmiuix/preference/PreferenceFragment;->getContentViewMargin(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lmiuix/preference/PreferenceFragment;->mCacheListContainerMargin:Landroid/graphics/Rect;

    .line 411
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    new-instance v1, Lmiuix/preference/PreferenceFragment$1;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceFragment$1;-><init>(Lmiuix/preference/PreferenceFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 451
    instance-of p3, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_7b

    .line 452
    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 455
    :cond_7b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_8e

    .line 457
    sget p3, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_8e

    .line 459
    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 462
    :cond_8e
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->addWindowInsetsListener()V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .line 145
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->updateActionBarOverlay()V

    .line 146
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 149
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v0, :cond_17

    .line 150
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    .line 152
    :cond_17
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_39

    .line 153
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    if-eqz p2, :cond_2d

    .line 155
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    if-eqz p2, :cond_34

    .line 156
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 157
    :cond_34
    iget-object v3, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-direct {p0, v0, v3, v2, v1}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    .line 160
    :cond_39
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 852
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 853
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 854
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 856
    :cond_a
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceFragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .registers 5

    .line 973
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 974
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 975
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-nez v0, :cond_29

    .line 977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_29

    .line 978
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 979
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_29
    if-eqz v0, :cond_2c

    return-void

    .line 987
    :cond_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_39

    return-void

    .line 992
    :cond_39
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_46

    .line 993
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_5f

    .line 994
    :cond_46
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_53

    .line 995
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_5f

    .line 996
    :cond_53
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6a

    .line 997
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    .line 1005
    :goto_5f
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1006
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 999
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 1018
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_b

    .line 1019
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setSelectedPreference(Landroidx/preference/Preference;)V

    .line 1021
    :cond_b
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStop()V
    .registers 1

    .line 165
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 166
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->stopHighlight()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 593
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 594
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isEmbeddedFragment()Z

    move-result p1

    if-nez p1, :cond_29

    .line 595
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 596
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 597
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 598
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    .line 599
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_29
    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 622
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 624
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .registers 3

    .line 223
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_8

    .line 224
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 210
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 211
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v0, :cond_9

    .line 212
    invoke-virtual {v0, p1}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    :cond_9
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .registers 2

    .line 218
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    return-void
.end method

.method public stopHighlight()V
    .registers 2

    .line 882
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_7

    .line 883
    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    :cond_7
    return-void
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 629
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 631
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    :cond_9
    return-void
.end method
