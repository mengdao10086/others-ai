.class public Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupContentHolder"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchorHeight:I

.field private mAnchorPaddingBottom:I

.field private mAnchorPaddingTop:I

.field private final mBoundsRect:Landroid/graphics/Rect;

.field private mContentView:Lmiuix/smooth/SmoothFrameLayout2;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewPaddingBottom:I

.field private mHeaderViewPaddingTop:I

.field private mIsInAnimation:Z

.field private mListView:Landroid/widget/ListView;

.field private mMinWidth:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

.field private mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field private mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public static synthetic $r8$lambda$R18aSfmmuo-_dHF0gnY7pVHtyq8(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/widget/ListAdapter;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .registers 6

    .line 523
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 506
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    .line 508
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 516
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 524
    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    .line 525
    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    .line 526
    iput-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 527
    iput-object p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .registers 4

    .line 518
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 506
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    .line 508
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 516
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 519
    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    .line 520
    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p0
.end method

.method static synthetic access$002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .registers 2

    .line 498
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p1
.end method

.method static synthetic access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p0
.end method

.method static synthetic access$1102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .registers 2

    .line 498
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p1
.end method

.method static synthetic access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/view/View;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 498
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p0
.end method

.method static synthetic access$1502(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p0
.end method

.method static synthetic access$1602(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p0
.end method

.method static synthetic access$1702(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p1
.end method

.method static synthetic access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p0
.end method

.method static synthetic access$1802(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p1
.end method

.method static synthetic access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p0
.end method

.method static synthetic access$1902(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .registers 1

    .line 498
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p0
.end method

.method static synthetic access$2002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .registers 2

    .line 498
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p1
.end method

.method static synthetic access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;
    .registers 1

    .line 498
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Z
    .registers 1

    .line 498
    iget-boolean p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z
    .registers 2

    .line 498
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p1
.end method

.method private synthetic lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 613
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 614
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_1e

    if-ltz v4, :cond_1e

    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_1e

    .line 615
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1e
    return-void
.end method


# virtual methods
.method inflate()V
    .registers 4

    .line 539
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    if-nez v0, :cond_46

    .line 540
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_hyper_popup_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/smooth/SmoothFrameLayout2;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 541
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_2d

    .line 543
    move-object v1, v0

    check-cast v1, Lmiuix/smooth/SmoothContainerDrawable2;

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F
    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    :cond_2d
    if-eqz v0, :cond_34

    .line 546
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    sget v1, Lmiuix/appcompat/R$id;->spring_back:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    new-instance v2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 562
    :cond_46
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6e

    .line 564
    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 612
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 618
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_6e
    return-void
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setMenuListAccessibilityDelegate()V
    .registers 3

    .line 820
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_d

    goto :goto_15

    .line 823
    :cond_d
    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$4;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_15
    :goto_15
    return-void
.end method

.method protected setMinWidth(I)V
    .registers 2

    .line 816
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    return-void
.end method

.method show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z
    .registers 34

    move-object/from16 v3, p0

    move-object/from16 v0, p3

    .line 623
    iget-object v5, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 624
    iget-object v2, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    if-eqz p4, :cond_36

    .line 626
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 627
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 628
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 629
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mAnimationExtensionMargin:I
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 631
    :cond_36
    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iget v7, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    iget v8, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    invoke-static {v1, v4, v6, v7, v8}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3100(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object v1

    iput-object v1, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    .line 632
    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v1, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 633
    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v1, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v1

    .line 634
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v4, v5}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v15

    .line 635
    iget v13, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 636
    iget v10, v5, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 637
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    add-int v14, v1, v13

    add-int v12, v15, v10

    invoke-virtual {v4, v1, v15, v14, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 638
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3200(Lmiuix/appcompat/widget/HyperPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 639
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    move v6, v1

    move v7, v15

    move v8, v13

    move v9, v10

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    invoke-static/range {v4 .. v9}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3300(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    :cond_75
    if-nez p4, :cond_be

    .line 643
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    const/4 v6, 0x0

    if-le v14, v5, :cond_84

    move v5, v6

    goto :goto_85

    :cond_84
    int-to-float v5, v13

    :goto_85
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 644
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v15, v2, :cond_8f

    goto :goto_90

    :cond_8f
    int-to-float v6, v10

    :goto_90
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 646
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v13, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 647
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3200(Lmiuix/appcompat/widget/HyperPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 648
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 649
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v0

    iput v15, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 651
    :cond_aa
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3400(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/ViewGroup;Landroid/view/View;)V

    const/16 v20, 0x1

    goto/16 :goto_249

    .line 655
    :cond_be
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v4

    iget-object v5, v4, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    .line 656
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v5, v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3500(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 657
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v6, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    iget-object v8, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v9, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v9}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2302(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    .line 658
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 659
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F
    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;)F

    move-result v6

    invoke-virtual {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setRadius(F)V

    .line 660
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I
    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3600(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v6

    iget-object v8, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I
    invoke-static {v8}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3700(Lmiuix/appcompat/widget/HyperPopupWindow;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 662
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v10, v4, v6

    move v4, v10

    .line 663
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v11, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    move v6, v8

    .line 664
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v7, v10, v16

    move/from16 v16, v12

    move v12, v8

    move v8, v7

    .line 665
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v12

    move/from16 v17, v13

    move v13, v10

    move v10, v5

    .line 668
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 p4, v4

    move v4, v9

    move/from16 v9, v18

    .line 669
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v21, v11

    move/from16 v11, v18

    .line 671
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    invoke-virtual {v4, v13, v12, v7, v5}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 672
    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 673
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, v21

    .line 674
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v12

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 675
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 676
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 678
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    move/from16 v7, v16

    move v12, v0

    .line 679
    iget v13, v2, Landroid/graphics/Rect;->top:I

    move/from16 v21, v6

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v6

    move/from16 v19, v14

    move v14, v13

    move/from16 p2, v13

    .line 680
    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v4

    move/from16 v16, v13

    move/from16 p3, v13

    .line 681
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v6

    move/from16 v18, v13

    sub-int/2addr v1, v4

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move v11, v13

    move/from16 v8, v17

    move/from16 v9, p2

    move/from16 v10, p3

    move v13, v1

    sub-int v26, v15, v6

    move/from16 v15, v26

    sub-int v4, v19, v4

    move/from16 v17, v4

    sub-int v6, v7, v6

    move/from16 v19, v6

    .line 687
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v4, v1

    sub-int v6, v6, v26

    invoke-direct {v7, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 688
    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    iget-object v4, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v6, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V

    .line 690
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 691
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 692
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 693
    invoke-virtual {v1, v0, v9, v10, v11}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 694
    invoke-virtual {v1}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 695
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 696
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 697
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2402(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    .line 699
    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    iget-object v1, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;-><init>(Landroid/view/View;)V

    iput-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    .line 700
    invoke-virtual {v0, v8}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setMeasureWidth(I)V

    .line 701
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 702
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    iput-boolean v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 703
    iget-object v0, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v6, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    move-object v0, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    move/from16 v6, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v11, v25

    move/from16 v4, p4

    invoke-direct/range {v0 .. v19}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIIIIIIIII)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_249
    return v20
.end method

.method update()Z
    .registers 9

    .line 789
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 790
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getRootBounds()Landroid/graphics/Rect;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4100(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;
    invoke-static {v0, v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4002(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 791
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iget v4, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    iget v5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    invoke-static {v0, v2, v3, v4, v5}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3100(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object v0

    iput-object v0, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    .line 792
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 793
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v2

    .line 794
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v3

    .line 795
    iget v4, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 796
    iget v5, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 797
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    add-int v6, v2, v4

    add-int v7, v3, v5

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 798
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mEnableSecondaryMenu:Z
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3200(Lmiuix/appcompat/widget/HyperPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 799
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3300(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    .line 800
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4000(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 801
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4000(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 802
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 803
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 804
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4000(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;
    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$4000(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_af

    .line 806
    :cond_84
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 807
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 808
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 809
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 810
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_af
    const/4 v0, 0x1

    return v0
.end method
