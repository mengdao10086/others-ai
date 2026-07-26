.class public Lmiuix/appcompat/widget/HyperPopupWindow;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;,
        Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;,
        Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;,
        Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;,
        Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;
    }
.end annotation


# instance fields
.field private mAnimationExtensionMargin:I

.field private mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mCornerRadius:F

.field private mEnableSecondaryMenu:Z

.field private mFocusedMainPopupItemView:Landroid/view/View;

.field private mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

.field private mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

.field protected mMainPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field private mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

.field private mRootBounds:Landroid/graphics/Rect;

.field private mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

.field private mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;


# direct methods
.method public static synthetic $r8$lambda$_ZCQZMad8gNBB3X-qtTJ1q-1bvk(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->lambda$enableMainMenuAccessibility$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z

    const/16 p2, 0x23

    .line 80
    iput p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    .line 88
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAutoDismiss(Z)V

    .line 89
    new-instance p1, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;

    invoke-direct {p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 90
    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 91
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    return-object p0
.end method

.method static synthetic access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p0
.end method

.method static synthetic access$2302(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .registers 2

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p1
.end method

.method static synthetic access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p0
.end method

.method static synthetic access$2402(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .registers 2

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p1
.end method

.method static synthetic access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;)F
    .registers 1

    .line 64
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lmiuix/appcompat/widget/HyperPopupWindow;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    return p0
.end method

.method static synthetic access$3100(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    .registers 5

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lmiuix/appcompat/widget/HyperPopupWindow;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z

    return p0
.end method

.method static synthetic access$3300(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    .registers 6

    .line 64
    invoke-direct/range {p0 .. p5}, Lmiuix/appcompat/widget/HyperPopupWindow;->offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    return-void
.end method

.method static synthetic access$3400(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lmiuix/appcompat/widget/HyperPopupWindow;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    return p0
.end method

.method static synthetic access$3700(Lmiuix/appcompat/widget/HyperPopupWindow;)I
    .registers 1

    .line 64
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    return-object p0
.end method

.method static synthetic access$4000(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4002(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4100(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;
    .registers 1

    .line 64
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->getRootBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4202(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$502(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .registers 2

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->expandSecondaryMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;
    .registers 1

    .line 64
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->collapseSecondaryMenu()V

    return-void
.end method

.method private announceForSecondaryMenu(Ljava/lang/String;)V
    .registers 3

    .line 337
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 338
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method private collapseSecondaryMenu()V
    .registers 3

    .line 297
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    if-nez v0, :cond_5

    return-void

    .line 300
    :cond_5
    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->toFrontAnim()V

    .line 303
    invoke-virtual {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->doCollapseAnimation()V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 305
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->enableMainMenuAccessibility(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_collapse_state:I

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-direct {p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->announceForSecondaryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private disableMainMenuAccessibility(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method private enableMainMenuAccessibility(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 324
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 325
    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method private expandSecondaryMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 3

    .line 289
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->toBackAnim()V

    .line 290
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->doExpandAnimation(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 291
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->disableMainMenuAccessibility(Landroid/view/View;)V

    .line 292
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_expand_state:I

    .line 293
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->announceForSecondaryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private static getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    .registers 14

    const/high16 v0, -0x80000000

    .line 345
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    const/4 v0, 0x0

    .line 347
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 348
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    .line 349
    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v4, 0x0

    move v6, v0

    :goto_21
    if-ge v6, v2, :cond_49

    if-nez p1, :cond_2a

    .line 352
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 354
    :cond_2a
    invoke-interface {p0, v6, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 355
    invoke-virtual {v4, p3, v1}, Landroid/view/View;->measure(II)V

    .line 356
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v8, -0x1

    if-eq p4, v8, :cond_3c

    .line 358
    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 360
    :cond_3c
    aget-object v8, v3, v6

    aput v7, v8, v0

    .line 361
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    aput v7, v8, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_49
    return-object v3
.end method

.method private getRootBounds()Landroid/graphics/Rect;
    .registers 8

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 371
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v1}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->clone()Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object v1

    .line 372
    iget-object v2, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 373
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 374
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 375
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    .line 376
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    .registers 5

    .line 277
    instance-of v0, p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 278
    check-cast p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v1

    .line 281
    :goto_d
    instance-of p2, p1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz p2, :cond_14

    .line 283
    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    :cond_14
    return-object v1
.end method

.method private static getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 491
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 492
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 493
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 494
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private synthetic lambda$enableMainMenuAccessibility$0()V
    .registers 3

    .line 325
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    const/16 v1, 0x8

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    .registers 9

    .line 853
    iget-object p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    .line 854
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 855
    iget v1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    add-int/2addr v1, p3

    .line 856
    iget v2, p5, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_10

    sub-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 858
    iput p3, p5, Landroid/graphics/Rect;->top:I

    goto :goto_14

    .line 860
    :cond_10
    iput p3, p5, Landroid/graphics/Rect;->top:I

    .line 861
    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    .line 863
    :goto_14
    iget p3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    iget p1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    invoke-static {p3, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3c

    const/4 p3, 0x5

    if-eq p1, p3, :cond_30

    .line 872
    iput p2, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    .line 873
    iget p1, p5, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_3c

    :cond_30
    add-int/2addr p4, p2

    .line 868
    iput p4, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 869
    iget p1, p5, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->left:I

    :cond_3c
    :goto_3c
    return-void
.end method

.method private prepareWindowElevation()V
    .registers 4

    .line 262
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->shouldSetElevation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 265
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 266
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 268
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_9

    if-nez p2, :cond_5

    goto :goto_9

    :cond_5
    const/4 v0, -0x1

    .line 840
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_9
    :goto_9
    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .line 844
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 845
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    if-eqz p1, :cond_14

    .line 848
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_14
    return-void
.end method

.method private showAtLocation(Landroid/view/View;IIILandroid/graphics/Rect;)V
    .registers 9

    .line 223
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->prepareWindowElevation()V

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 227
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-nez p5, :cond_1f

    .line 231
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v1, p3

    add-int/2addr v2, p4

    .line 232
    invoke-virtual {p5, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1f
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v0, p5, v1, v2}, Lmiuix/popupwidget/widget/PopupWindow;->computeGravity(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result p5

    .line 238
    invoke-virtual {p0, p5}, Lmiuix/appcompat/widget/HyperPopupWindow;->showWithAnim(I)V

    .line 240
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p5

    if-nez p5, :cond_3a

    .line 241
    iget-object p5, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p5, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 243
    :cond_3a
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/widget/PopupWindow;->superShowAtLocation(Landroid/view/View;III)V

    .line 244
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 245
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-nez p1, :cond_4b

    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez p1, :cond_54

    .line 246
    :cond_4b
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 248
    :cond_54
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private toBackAnim()V
    .registers 7

    .line 879
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    .line 880
    sget v1, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 881
    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const v3, 0x3f733333    # 0.95f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3800()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    filled-new-array {v2, v3, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 882
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3800()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private toFrontAnim()V
    .registers 7

    .line 886
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    .line 887
    sget v1, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 888
    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2600()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    filled-new-array {v2, v3, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 889
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2600()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method protected doCollapseAnimation()V
    .registers 33

    move-object/from16 v4, p0

    move-object/from16 v1, p0

    .line 397
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object v0

    .line 398
    iget-object v2, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v2

    move-object/from16 v25, v2

    .line 399
    iget-object v3, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v15

    move-object/from16 v24, v15

    .line 400
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v15, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setMeasureWidth(I)V

    .line 401
    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 402
    iget-object v3, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v9

    .line 403
    iget-object v3, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 404
    invoke-static {v9, v3}, Lmiuix/appcompat/widget/HyperPopupWindow;->getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 407
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 408
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 409
    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v5

    move v3, v7

    .line 410
    iget v5, v9, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sub-int v10, v5, v10

    move v5, v10

    .line 411
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v7, v11

    .line 412
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v10

    .line 413
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    .line 414
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    .line 415
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v14

    .line 416
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v16

    .line 417
    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v26, v2

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    move-object/from16 v17, v15

    .line 418
    iget v15, v0, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v13

    move/from16 v18, v13

    move v13, v15

    .line 419
    iget v15, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v2

    move-object/from16 v27, v17

    .line 420
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v17, v0, v18

    .line 422
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 423
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v22

    .line 424
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v23

    .line 425
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v18

    .line 426
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v19

    .line 427
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v20

    .line 428
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v21

    .line 429
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 430
    iget-object v0, v4, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    const/4 v4, 0x1

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z
    invoke-static {v0, v4}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 431
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v28, Lmiuix/appcompat/widget/HyperPopupWindow$2;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    const/16 v30, 0x0

    move-object/from16 v31, v26

    move/from16 v26, v2

    move/from16 v2, v30

    move/from16 v4, v30

    invoke-direct/range {v0 .. v25}, Lmiuix/appcompat/widget/HyperPopupWindow$2;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;IIIIIIIIIIIIIIIIIIIIIILmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;Lmiuix/smooth/SmoothFrameLayout2;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object v28, v0, v26

    move-object/from16 v1, v29

    .line 432
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x2

    .line 477
    new-array v1, v1, [F

    fill-array-data v1, :array_142

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 478
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "fraction"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 480
    invoke-virtual/range {v27 .. v27}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->getCornerRadius()F

    move-result v0

    move-object/from16 v1, v31

    .line 482
    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 483
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 484
    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerProperty:Lmiuix/animation/property/FloatProperty;
    invoke-static/range {v27 .. v27}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2500(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2600()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 486
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;
    invoke-static/range {v27 .. v27}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2700(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static/range {v27 .. v27}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2800(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :array_142
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method protected doExpandAnimation(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 10

    .line 381
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->clone()Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object v6

    .line 382
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 383
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 384
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 385
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 386
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 387
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 388
    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/widget/ListAdapter;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 389
    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->inflate()V

    .line 391
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    .line 392
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setMinWidth(I)V

    .line 393
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v0, v1, v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method protected prepareContentView()V
    .registers 3

    .line 100
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 101
    invoke-super {p0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareContentView()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setClippingEnabled(Z)V
    .registers 4

    .line 106
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    goto :goto_e

    :cond_a
    const/16 v1, 0x23

    .line 110
    iput v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    .line 112
    :goto_e
    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 114
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    return-void
.end method

.method public setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .registers 3

    .line 210
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 211
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    invoke-static {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-void
.end method

.method public setSecondaryMenuEnabled(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z

    return-void
.end method

.method public show(Landroid/view/View;)V
    .registers 11

    .line 118
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 120
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    .line 121
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_51

    .line 122
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->superSetContentViewWithoutClip(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 127
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 128
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 132
    :cond_51
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    invoke-static {v0, v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 133
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->inflate()V

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setMenuListAccessibilityDelegate()V

    .line 135
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2, v3, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z

    .line 136
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-boolean v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z

    if-eqz v0, :cond_ae

    .line 184
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 185
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 186
    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 187
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 188
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    sub-int v6, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v2

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lmiuix/appcompat/widget/HyperPopupWindow;->showAtLocation(Landroid/view/View;IIILandroid/graphics/Rect;)V

    goto :goto_dc

    .line 190
    :cond_ae
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 192
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 193
    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 194
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 195
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I

    sub-int v4, v0, v1

    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->showAtLocation(Landroid/view/View;IIILandroid/graphics/Rect;)V

    :goto_dc
    return-void
.end method

.method protected showWithAnim(I)V
    .registers 4

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_23

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez v0, :cond_23

    .line 255
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->spring_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 256
    new-instance v1, Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-direct {v1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    .line 258
    :cond_23
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showWithAnim(I)V

    return-void
.end method

.method public update()V
    .registers 2

    .line 200
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->update()Z

    return-void
.end method

.method protected updateLocation(Landroid/view/View;)V
    .registers 2

    .line 205
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->update()Z

    return-void
.end method
