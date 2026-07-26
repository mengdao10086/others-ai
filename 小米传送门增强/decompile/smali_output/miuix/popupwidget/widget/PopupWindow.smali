.class public Lmiuix/popupwidget/widget/PopupWindow;
.super Landroid/widget/PopupWindow;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/PopupWindow$ContentSize;,
        Lmiuix/popupwidget/widget/PopupWindow$ContainerView;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

.field private mAnimationStyle:I

.field private mAutoDismiss:Z

.field private mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

.field protected mContentView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private mDensityDpi:I

.field private mDetachAnchorLayoutFlag:Z

.field private mDifferDensityCompat:Z

.field private mDimAmount:F

.field protected mElevation:I

.field protected mElevationExtra:I

.field private mFenceDecor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasShadow:Z

.field private mHideSoftInputEnabled:Z

.field protected mIgnoreAnchorVisibility:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinSafeInsetDimen:I

.field private final mObserver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

.field protected mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mShadowColor:I

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mUserAnimationGravity:I

.field protected mWindowAnimationEnabled:Z

.field private mWindowManagerFlags:I


# direct methods
.method public static synthetic $r8$lambda$1Wumkd-_J05f3UtjOnk9aFAhGqc(Lmiuix/popupwidget/widget/PopupWindow;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0H2jK77HOozREPSepIqY_RXP8o(Lmiuix/popupwidget/widget/PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVbA_FuZXuA9f6O3wyb_EJwSvCE(Lmiuix/popupwidget/widget/PopupWindow;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .registers 9

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mUserAnimationGravity:I

    .line 87
    iput v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHasShadow:Z

    const/4 v1, 0x0

    .line 90
    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    .line 92
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHideSoftInputEnabled:Z

    .line 94
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 95
    iput v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const/4 v3, 0x2

    .line 96
    iput v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    .line 97
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    .line 98
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    .line 100
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    .line 102
    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$1;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$1;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    iput-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 205
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 207
    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$2;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$2;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    iput-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 136
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->updateDisplayConfig(Landroid/view/View;)V

    .line 140
    new-instance v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-direct {v4}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;-><init>()V

    iput-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 141
    iput-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    if-nez p3, :cond_57

    .line 143
    new-instance p3, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;

    invoke-direct {p3}, Lmiuix/popupwidget/internal/strategy/MarginPopupWindowStrategy;-><init>()V

    iput-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    :cond_57
    if-eqz p2, :cond_5c

    .line 146
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    .line 148
    :cond_5c
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    invoke-direct {p2, v3}, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;-><init>(Lmiuix/popupwidget/widget/PopupWindow$1;)V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 153
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;

    invoke-direct {p2, p0, p1}, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;-><init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    .line 154
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 155
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 156
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance p3, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareContentView()V

    .line 158
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 159
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda2;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-super {p0, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    .line 167
    sget-boolean p3, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz p3, :cond_b1

    const/high16 p3, 0x42000000    # 32.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 168
    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    goto :goto_c5

    .line 170
    :cond_b1
    sget p2, Lmiuix/popupwidget/R$attr;->popupWindowElevation:I

    invoke-static {p1, p2}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    .line 174
    :goto_c5
    sget p2, Lmiuix/popupwidget/R$attr;->popupWindowDimAmount:I

    invoke-static {p1, p2, v2}, Lmiuix/internal/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/popupwidget/widget/PopupWindow;)Lmiuix/popupwidget/widget/PopupWindow$ContentSize;
    .registers 1

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/widget/PopupWindow;)Landroid/widget/ListView;
    .registers 1

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/popupwidget/widget/PopupWindow;)Lmiuix/springback/view/SpringBackLayout;
    .registers 1

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    return-object p0
.end method

.method static synthetic access$401(Lmiuix/popupwidget/widget/PopupWindow;)V
    .registers 1

    .line 57
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$500(Lmiuix/popupwidget/widget/PopupWindow;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    return-void
.end method

.method static synthetic access$600(Lmiuix/popupwidget/widget/PopupWindow;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/res/Configuration;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected static computeGravity(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I
    .registers 7

    .line 985
    invoke-static {p2, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    .line 987
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    const/16 v0, 0x30

    const/16 v1, 0x50

    const/16 v2, 0xa

    if-le p3, v2, :cond_28

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    if-le p2, p3, :cond_26

    goto :goto_2b

    :cond_26
    :goto_26
    move v0, v1

    goto :goto_2b

    :cond_28
    if-ne p2, v1, :cond_2b

    goto :goto_26

    .line 1000
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, v2, :cond_49

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    if-le p1, p0, :cond_47

    or-int/lit8 v0, v0, 0x3

    goto :goto_49

    :cond_47
    or-int/lit8 v0, v0, 0x5

    :cond_49
    :goto_49
    return v0
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    if-eqz v1, :cond_39

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    if-eq p1, v1, :cond_39

    .line 218
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    const/4 p1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->updateDisplayConfig(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupWindow;->getBaseActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupWindow;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 222
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismissWithNoNotify()V

    .line 223
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 224
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 225
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 226
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_39
    if-eqz v0, :cond_4b

    .line 232
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    if-nez p1, :cond_4b

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    :cond_4b
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mHasContentWidth:Z

    return-void
.end method

.method private detachAnchorView()V
    .registers 3

    .line 314
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 316
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1a
    return-void
.end method

.method private dismissWithAnim()V
    .registers 3

    .line 685
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez v0, :cond_8

    .line 686
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_10

    .line 688
    :cond_8
    new-instance v1, Lmiuix/popupwidget/widget/PopupWindow$7;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/PopupWindow$7;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->dismissWithAnim(Ljava/lang/Runnable;)V

    :goto_10
    return-void
.end method

.method private dismissWithNoNotify()V
    .registers 3

    .line 245
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v1, 0x0

    .line 246
    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 247
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    .line 248
    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method private static getBaseActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 970
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 971
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 972
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 974
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isActivityRunning(Landroid/app/Activity;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 980
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 156
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 160
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_7

    .line 161
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 528
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 529
    iget-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_1e

    if-ltz v4, :cond_1e

    iget-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_1e

    .line 530
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1e
    return-void
.end method

.method private updateDisplayConfig(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_6

    .line 903
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 905
    :cond_6
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    if-eqz p1, :cond_19

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1d

    :cond_19
    iget-object v2, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_1d
    if-eqz p1, :cond_24

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_28

    :cond_24
    iget-object p1, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 910
    :goto_28
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedWidth:I

    .line 911
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinAllowedWidth:I

    .line 912
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    .line 913
    sget p1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_safe_margin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinSafeInsetDimen:I

    return-void
.end method

.method private static updateSafeInsetsByDecor(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/Rect;
    .registers 11

    .line 918
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 919
    invoke-virtual {v0, p2, v1, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 920
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 921
    invoke-static {p1, v2}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 922
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_7f

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_36

    .line 931
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 932
    iget v3, p1, Landroid/graphics/Insets;->left:I

    iget v4, p1, Landroid/graphics/Insets;->top:I

    iget v5, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7f

    .line 939
    :cond_36
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 941
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 944
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    .line 945
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v6

    .line 946
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v7

    .line 947
    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    .line 943
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 951
    :cond_54
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 952
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 953
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 954
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 955
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 951
    invoke-virtual {v0, v4, v5, v6, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 960
    :cond_7f
    :goto_7f
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 962
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 963
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 964
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 965
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public changeWindowBackground(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 591
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_c

    return-void

    .line 595
    :cond_c
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 596
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2b

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_2b

    :cond_29
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    .line 600
    :cond_2b
    :goto_2b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 603
    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkMaxHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    .line 826
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected checkMaxWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    .line 830
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected checkMinWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    .line 834
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected computePopupContentSize()V
    .registers 5

    .line 776
    const-string v0, "PopupWindow"

    const-string v1, "computePopupContentSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_17

    .line 778
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2, v3}, Lmiuix/popupwidget/widget/PopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I

    move-result-object v0

    iput-object v0, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    goto :goto_1c

    .line 780
    :cond_17
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->getContentViewBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 782
    :goto_1c
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 327
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    .line 328
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismissWithAnim()V

    .line 329
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public getAnchor()Landroid/view/View;
    .registers 2

    .line 322
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected getContentViewBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .registers 5

    .line 812
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 813
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 814
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 815
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 816
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 817
    iget-object p1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_20
    return-void
.end method

.method protected getDecorView()Landroid/view/View;
    .registers 2

    .line 867
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 870
    :cond_b
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 868
    :cond_14
    :goto_14
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 772
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetX:I

    return v0
.end method

.method protected getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I
    .registers 16

    .line 788
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    const/high16 v1, -0x80000000

    .line 789
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 791
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 792
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    .line 793
    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v3, v5, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    const/4 v5, 0x0

    move v7, v1

    move v8, v7

    move-object v9, v5

    :goto_27
    if-ge v7, v3, :cond_52

    .line 795
    invoke-interface {p1, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    if-eq v10, v8, :cond_31

    move-object v9, v5

    move v8, v10

    :cond_31
    if-nez p2, :cond_38

    .line 801
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 803
    :cond_38
    invoke-interface {p1, v7, v9, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 804
    invoke-virtual {v9, v0, v2}, Landroid/view/View;->measure(II)V

    .line 805
    aget-object v10, v4, v7

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    aput v11, v10, v1

    .line 806
    aget-object v10, v4, v7

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    aput v11, v10, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_52
    return-object v4
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 754
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 768
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetY:I

    return v0
.end method

.method public getWindowManagerFlags()I
    .registers 2

    .line 400
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    return v0
.end method

.method protected prepareContentView()V
    .registers 2

    .line 178
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public prepareShow(Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 423
    const-string p1, "PopupWindow"

    const-string v1, "show: anchor is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 426
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 427
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 430
    iget-boolean v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    if-nez v2, :cond_1b

    if-nez v1, :cond_1b

    return v0

    .line 433
    :cond_1b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 434
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 435
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    if-lez v2, :cond_13f

    iget v2, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    if-lez v2, :cond_13f

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    if-gtz v1, :cond_37

    goto/16 :goto_13f

    .line 439
    :cond_37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->shouldSetElevation()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 442
    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 443
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 445
    :cond_48
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_83

    .line 446
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lmiuix/popupwidget/R$layout;->miuix_appcompat_drop_down_popup_list:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 447
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/popupwidget/R$attr;->immersionWindowBackground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 449
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :cond_6a
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    sget v3, Lmiuix/popupwidget/R$id;->spring_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/springback/view/SpringBackLayout;

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 452
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$4;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$4;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 464
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowAnimationEnabled(Z)V

    .line 467
    :cond_83
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_96

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v2, v4, :cond_b9

    .line 468
    :cond_96
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 469
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 471
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    .line 472
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    .line 473
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x23

    .line 474
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 477
    :cond_b9
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_e1

    .line 479
    new-instance v4, Lmiuix/popupwidget/widget/PopupWindow$5;

    invoke-direct {v4, p0}, Lmiuix/popupwidget/widget/PopupWindow$5;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 527
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    new-instance v4, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 533
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 536
    :cond_e1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->computePopupContentSize()V

    .line 537
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 539
    iget-boolean v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHideSoftInputEnabled:Z

    if-eqz v2, :cond_104

    .line 541
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 542
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_104
    const/16 p1, 0x1d

    if-lt v1, p1, :cond_13e

    .line 546
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-nez p1, :cond_13e

    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez p1, :cond_13e

    .line 547
    new-instance p1, Lmiuix/popupwidget/widget/PopupAnimHelper;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    .line 548
    invoke-virtual {p1, v3}, Lmiuix/popupwidget/widget/PopupAnimHelper;->setEdgeExtension(Z)V

    .line 549
    iget p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-nez v0, :cond_132

    .line 551
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_130

    sget p1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_132

    :cond_130
    sget p1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    .line 553
    :cond_132
    :goto_132
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->setDimValue(F)V

    .line 554
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->setWindowManagerFlags(I)V

    :cond_13e
    return v3

    :cond_13f
    :goto_13f
    return v0
.end method

.method protected prepareWindowElevation(Landroid/view/View;I)V
    .registers 6

    .line 404
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->shouldSetElevation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 407
    :cond_7
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_27

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 409
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    const/high16 v2, 0x41d00000    # 26.0f

    mul-float/2addr p2, v2

    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    int-to-float v2, v2

    invoke-static {p1, v0, v1, p2, v2}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_2e

    :cond_27
    int-to-float p2, p2

    .line 415
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 416
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setPopupShadowAlpha(Landroid/view/View;)V

    :goto_2e
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 279
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 280
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 282
    :cond_9
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_12

    .line 284
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_12
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 306
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 307
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    .line 309
    :cond_9
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 2

    .line 334
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    .line 335
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method protected setAnimationStyleByGravity(I)V
    .registers 4

    .line 846
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu:I

    const/16 v1, 0x33

    if-ne p1, v1, :cond_9

    .line 848
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_LeftTop:I

    goto :goto_32

    :cond_9
    const/16 v1, 0x53

    if-ne p1, v1, :cond_10

    .line 850
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_LeftBottom:I

    goto :goto_32

    :cond_10
    const/16 v1, 0x35

    if-ne p1, v1, :cond_17

    .line 852
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_RightTop:I

    goto :goto_32

    :cond_17
    const/16 v1, 0x55

    if-ne p1, v1, :cond_1e

    .line 854
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_RightBottom:I

    goto :goto_32

    :cond_1e
    const/16 v1, 0x30

    if-ne p1, v1, :cond_25

    .line 856
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Top:I

    goto :goto_32

    :cond_25
    const/16 v1, 0x50

    if-ne p1, v1, :cond_2c

    .line 858
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Bottom:I

    goto :goto_32

    :cond_2c
    const/16 v1, 0x11

    if-ne p1, v1, :cond_32

    .line 860
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Center:I

    .line 862
    :cond_32
    :goto_32
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 5

    .line 189
    instance-of v0, p1, Lmiuix/smooth/SmoothFrameLayout2;

    if-eqz v0, :cond_7

    .line 190
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    goto :goto_23

    .line 192
    :cond_7
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    .line 193
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 194
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 196
    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 198
    :goto_23
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 199
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    new-instance p1, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;

    invoke-direct {p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 202
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setDecorView(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 356
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    goto :goto_1e

    .line 358
    :cond_16
    new-instance v0, Lmiuix/popupwidget/widget/PopupWindow$3;

    invoke-direct {v0, p0, p1}, Lmiuix/popupwidget/widget/PopupWindow$3;-><init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1e
    return-void
.end method

.method public setDimAmount(F)V
    .registers 2

    .line 388
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 375
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iput p1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    :cond_7
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 4

    .line 763
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mOffsetXSet:Z

    .line 764
    iput p1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetX:I

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .registers 2

    .line 822
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupShadowAlpha(Landroid/view/View;)V
    .registers 4

    .line 561
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 562
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_20

    .line 564
    :cond_d
    new-instance v0, Lmiuix/popupwidget/widget/PopupWindow$6;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow$6;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 581
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_20
    return-void
.end method

.method public setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 4

    .line 758
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mOffsetYSet:Z

    .line 759
    iput p1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetY:I

    return-void
.end method

.method public setWindowAnimationEnabled(Z)V
    .registers 2

    .line 339
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    return-void
.end method

.method public setWindowManagerFlags(I)V
    .registers 2

    .line 396
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    return-void
.end method

.method protected shouldSetElevation()Z
    .registers 6

    .line 839
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 840
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 841
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 842
    :goto_1b
    iget-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHasShadow:Z

    if-eqz v1, :cond_28

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-gt v1, v4, :cond_27

    if-eqz v0, :cond_28

    :cond_27
    move v2, v3

    :cond_28
    return v2
.end method

.method public show(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 617
    :cond_3
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_c

    .line 618
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 620
    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 621
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 607
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_9

    .line 608
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    .line 610
    :cond_9
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 11

    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAsDropDown popupwindowspec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v2, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 635
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v2, v0}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 636
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v2, v3}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v2

    .line 637
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v4, v3, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 638
    iget v3, v3, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 639
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    .line 640
    invoke-virtual {v5, v6, v6, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 641
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 642
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showWithAnchor getWidth "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getHeight "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 647
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7a

    .line 648
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mUserAnimationGravity:I

    if-eq v1, v3, :cond_6b

    goto :goto_7b

    .line 651
    :cond_6b
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v3, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {v3, v5, v1, v4}, Lmiuix/popupwidget/widget/PopupWindow;->computeGravity(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v1

    goto :goto_7b

    :cond_7a
    move v1, v6

    .line 655
    :goto_7b
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_88

    .line 656
    sget v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v3, v4}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 658
    :cond_88
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->showWithAnim(I)V

    .line 659
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 661
    invoke-super {p0, p1, v6, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 663
    :cond_94
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    .line 664
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 665
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-nez p1, :cond_ac

    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez p1, :cond_b5

    .line 666
    :cond_ac
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 668
    :cond_b5
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .registers 3

    .line 698
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 699
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4

    .line 704
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 705
    invoke-virtual {p0, p3}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 706
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5

    .line 711
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 712
    invoke-virtual {p0, p3}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 713
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 714
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 10

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    .line 725
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 727
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    goto :goto_1a

    :cond_16
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    iget v2, v2, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mWidth:I

    .line 728
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-lez v3, :cond_25

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    goto :goto_29

    :cond_25
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    iget v3, v3, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mHeight:I

    .line 729
    :goto_29
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v2, p3

    add-int/2addr v3, p4

    .line 730
    invoke-virtual {v4, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 732
    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_40

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v4, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->computeGravity(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v0

    .line 736
    :cond_40
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 737
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v1, v2, v3}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 739
    :cond_4f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 740
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    .line 741
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 742
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-nez p1, :cond_6a

    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-nez p1, :cond_73

    .line 743
    :cond_6a
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 745
    :cond_73
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->showWithAnim(I)V

    .line 746
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method protected showWithAnim(I)V
    .registers 4

    .line 672
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowAnimationEnabled:Z

    if-eqz v0, :cond_9

    goto :goto_2a

    .line 675
    :cond_9
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1f

    .line 677
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_1f

    :cond_1d
    sget v0, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    .line 679
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->setDimValue(F)V

    .line 680
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->showWithAnim(I)V

    goto :goto_2d

    .line 673
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    :goto_2d
    return-void
.end method

.method protected superSetContentViewWithoutClip(Landroid/view/View;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 185
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected superShowAtLocation(Landroid/view/View;III)V
    .registers 5

    .line 718
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method protected updateLocation(Landroid/view/View;)V
    .registers 7

    .line 256
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 257
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->computePopupContentSize()V

    .line 258
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 260
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v1, v2}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v1

    .line 261
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 262
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 263
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v3, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 265
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    if-eqz v2, :cond_5a

    .line 266
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v4, v3, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    add-int/2addr v4, v0

    iget v3, v3, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    add-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-static {v0, v2, v1, p1}, Lmiuix/popupwidget/widget/PopupWindow;->computeGravity(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result p1

    .line 268
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimHelper:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->update(I)V

    :cond_5a
    return-void
.end method

.method public updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .registers 10

    .line 876
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 877
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5d

    if-nez v1, :cond_d

    goto :goto_5d

    .line 881
    :cond_d
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updateSafeInsets(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 882
    iget-object v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 883
    iget-object v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 884
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 885
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 886
    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 887
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 888
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 889
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 886
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 890
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMaxWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 891
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMinWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 892
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMaxHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 894
    iput-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 895
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 896
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    .line 897
    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 898
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    iput v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    :cond_5d
    :goto_5d
    return-void
.end method

.method protected updateSafeInsets(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4

    .line 252
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinSafeInsetDimen:I

    invoke-static {v0, p1, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updateSafeInsetsByDecor(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
