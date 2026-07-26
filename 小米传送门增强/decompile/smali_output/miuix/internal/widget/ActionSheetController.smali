.class Lmiuix/internal/widget/ActionSheetController;
.super Ljava/lang/Object;
.source "ActionSheetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;
    }
.end annotation


# instance fields
.field private mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

.field private mActionItems:[Ljava/lang/CharSequence;

.field private mActionSheetLayout:I

.field protected mCanceledOnTouchOutside:Z

.field private mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

.field private mContentLayout:I

.field private mContentPanel:Landroid/view/ViewGroup;

.field private mContentPanelHeight:I

.field private mContentPanelWidth:I

.field private final mContext:Landroid/content/Context;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private final mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

.field private mDimBg:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field protected mEnableEnterAnim:Z

.field protected mHapticFeedbackEnabled:Z

.field protected mHasPendingDismiss:Z

.field protected mIsAssociatedActivityNavigationBarHidden:Z

.field private mIsDialogAnimating:Z

.field protected mIsFlipTinyScreen:Z

.field private mIsFromRebuild:Z

.field private mIsInFreeForm:Z

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListItemLayout:I

.field private mListView:Landroid/widget/ListView;

.field mListViewAdapter:Landroid/widget/ListAdapter;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mOnDismissListenerWrapper:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private final mOnShowListenerWrapper:Landroid/content/DialogInterface$OnShowListener;

.field private mPanelMargins:Landroid/graphics/Rect;

.field private mRootView:Lmiuix/internal/widget/ActionSheetRootView;

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenOrientation:I

.field private mSeparateClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSeparateText:Ljava/lang/CharSequence;

.field private mSeparateView:Landroid/widget/TextView;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private final mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private final mTypeColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$34YyBP6JjtKVkdSeEzsx2S2J82o(Lmiuix/internal/widget/ActionSheetController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->lambda$adjustSpringEnabled$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;Lmiuix/internal/widget/ActionSheet$ActionSheetMode;)V
    .registers 8

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mTypeColorMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lmiuix/internal/widget/ActionSheetController;->mScreenOrientation:I

    .line 100
    new-instance v1, Lmiuix/appcompat/widget/DialogAnimHelper;

    invoke-direct {v1}, Lmiuix/appcompat/widget/DialogAnimHelper;-><init>()V

    iput-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    .line 103
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mHasPendingDismiss:Z

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lmiuix/internal/widget/ActionSheetController;->mCanceledOnTouchOutside:Z

    .line 109
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsAssociatedActivityNavigationBarHidden:Z

    .line 110
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsInFreeForm:Z

    .line 114
    new-instance v2, Lmiuix/internal/widget/ActionSheetController$1;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ActionSheetController$1;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    iput-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mOnShowListenerWrapper:Landroid/content/DialogInterface$OnShowListener;

    .line 130
    new-instance v2, Lmiuix/internal/widget/ActionSheetController$2;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ActionSheetController$2;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    iput-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mOnDismissListenerWrapper:Landroid/content/DialogInterface$OnDismissListener;

    .line 159
    new-instance v2, Lmiuix/internal/widget/ActionSheetController$3;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ActionSheetController$3;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    iput-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 186
    iput-object p4, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    .line 187
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 189
    iput-object p3, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    .line 190
    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindowManager:Landroid/view/WindowManager;

    .line 191
    iput-boolean v1, p0, Lmiuix/internal/widget/ActionSheetController;->mEnableEnterAnim:Z

    .line 192
    sget-boolean p2, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p2, :cond_66

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_66

    move v0, v1

    :cond_66
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsFlipTinyScreen:Z

    .line 193
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->initViewAndLayout(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnShowListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/internal/widget/ActionSheetController;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/internal/widget/ActionSheetController;)Landroid/view/Window;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/internal/widget/ActionSheetController;Landroid/content/res/Configuration;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->runConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/internal/widget/ActionSheetController;Landroid/view/WindowInsets;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/widget/DialogAnimHelper;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/internal/widget/ActionSheetController;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->handleDismiss()V

    return-void
.end method

.method private adjustAlertMessageMaxLine()V
    .registers 6

    .line 586
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 587
    :cond_5
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 588
    sget-boolean v1, Lmiuix/os/Build;->IS_TABLET:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-le v1, v3, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 590
    :goto_19
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 591
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_33

    goto :goto_34

    :cond_33
    move v2, v4

    :goto_34
    if-eqz v1, :cond_43

    const v0, 0x3ea8f5c3    # 0.33f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_43

    .line 595
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_49

    .line 597
    :cond_43
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_49
    return-void
.end method

.method private adjustSpringEnabled()V
    .registers 3

    .line 948
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 951
    :cond_9
    new-instance v1, Lmiuix/internal/widget/ActionSheetController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ActionSheetController$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_11
    return-void
.end method

.method private cleanWindowInsetsAnimation()V
    .registers 3

    .line 716
    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_1a

    .line 717
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 718
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSetupWindowInsetsAnimation:Z

    :cond_1a
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .registers 5

    .line 999
    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1001
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_21

    .line 1002
    :goto_e
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1003
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/internal/widget/ActionSheetController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    return-void
.end method

.method private configWindow()V
    .registers 4

    .line 655
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 658
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 660
    new-instance v0, Lmiuix/internal/widget/ActionSheetController$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/internal/widget/ActionSheetController$7;-><init>(Lmiuix/internal/widget/ActionSheetController;I)V

    .line 694
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 696
    new-instance v0, Lmiuix/internal/widget/ActionSheetController$8;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ActionSheetController$8;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    .line 710
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 711
    iput-boolean v1, p0, Lmiuix/internal/widget/ActionSheetController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_27

    .line 502
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_27

    .line 506
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_27

    .line 508
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_27

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    return p1

    :cond_27
    :goto_27
    return v0
.end method

.method private getCutoutMode(II)I
    .registers 3

    .line 0
    if-nez p2, :cond_7

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x1

    :cond_7
    :goto_7
    return p2
.end method

.method private getScreenOrientation()I
    .registers 4

    .line 1025
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1028
    :cond_6
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    return v1

    :cond_16
    :goto_16
    const/4 v0, 0x2

    return v0
.end method

.method private getVisibleItemTotalHeight(Landroid/widget/ListView;I)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-gtz p2, :cond_6

    goto :goto_20

    :cond_6
    move v1, v0

    .line 967
    :goto_7
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 968
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 970
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method private handleDismiss()V
    .registers 2

    .line 977
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private initListener()V
    .registers 3

    .line 385
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-nez v0, :cond_5

    return-void

    .line 388
    :cond_5
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnShowListenerWrapper:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 389
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnDismissListenerWrapper:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private initViewAndLayout(Landroid/content/Context;)V
    .registers 6

    .line 198
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne v0, v1, :cond_9

    sget v0, Lmiuix/appcompat/R$attr;->actionSheetAlertStyle:I

    goto :goto_b

    :cond_9
    sget v0, Lmiuix/appcompat/R$attr;->actionSheetArrowStyle:I

    .line 199
    :goto_b
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionSheet:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 200
    sget v0, Lmiuix/appcompat/R$styleable;->ActionSheet_actionSheetLayout:I

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_sheet_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ActionSheetController;->mActionSheetLayout:I

    .line 201
    sget v0, Lmiuix/appcompat/R$styleable;->ActionSheet_actionSheetContentLayout:I

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_sheet_alert_content:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentLayout:I

    .line 202
    sget v0, Lmiuix/appcompat/R$styleable;->ActionSheet_actionSheetListItem:I

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_sheet_list_item:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListItemLayout:I

    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$adjustSpringEnabled$0()V
    .registers 4

    .line 952
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 953
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 956
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v2, v1}, Lmiuix/internal/widget/ActionSheetController;->getVisibleItemTotalHeight(Landroid/widget/ListView;I)I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1f

    move v1, v0

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 957
    :goto_20
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    return-void
.end method

.method private prepareTypeColorMap(Landroid/content/Context;)V
    .registers 10

    .line 602
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    if-eqz v0, :cond_3f

    if-nez p1, :cond_7

    goto :goto_3f

    .line 605
    :cond_7
    sget v0, Lmiuix/appcompat/R$color;->miuix_appcompat_action_sheet_item_text_primary_color_light:I

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_action_sheet_item_text_error_color_light:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 609
    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_action_sheet_item_text_primary_color_dark:I

    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_action_sheet_item_text_error_color_dark:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 613
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mTypeColorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 614
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_3f

    aget-object v5, v2, v4

    .line 615
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 616
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_31

    aget v6, v1, v6

    goto :goto_33

    :cond_31
    aget v6, v0, v6

    .line 617
    :goto_33
    iget-object v7, p0, Lmiuix/internal/widget/ActionSheetController;->mTypeColorMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_3f
    :goto_3f
    return-void
.end method

.method private runConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    .line 397
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->updateRootViewSizeByWindow()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: mRootViewSizeDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionSheetController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    const/16 v2, 0x2eb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2b

    iget-object v5, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v5, v2, :cond_2b

    move v5, v4

    goto :goto_2c

    :cond_2b
    move v5, v3

    :goto_2c
    if-eqz v0, :cond_36

    .line 400
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ge v0, v2, :cond_36

    move v0, v4

    goto :goto_37

    :cond_36
    move v0, v3

    .line 401
    :goto_37
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    instance-of v6, v2, Lmiuix/internal/widget/ArrowActionSheet;

    if-eqz v6, :cond_6e

    if-eqz v0, :cond_6e

    .line 403
    check-cast v2, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v2}, Lmiuix/internal/widget/ArrowActionSheet;->dismissForShiftWithoutAnimation()V

    .line 405
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {p1}, Lmiuix/internal/widget/ArrowActionSheet;->getArrowAnchor()Landroid/view/View;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v0}, Lmiuix/internal/widget/ArrowActionSheet;->getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v0

    .line 407
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v2, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v2, p1}, Lmiuix/internal/widget/ArrowActionSheet;->createAlertActionSheet(Landroid/view/View;)Lmiuix/internal/widget/AlertActionSheet;

    move-result-object p1

    .line 408
    invoke-virtual {p1, v0}, Lmiuix/internal/widget/AlertActionSheet;->setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 409
    invoke-virtual {p1, v3}, Lmiuix/internal/widget/AlertActionSheet;->setEnableEnterAnim(Z)V

    .line 410
    invoke-virtual {p1, v4}, Lmiuix/internal/widget/AlertActionSheet;->setIsFromArrowShape(Z)V

    .line 411
    invoke-virtual {p1}, Lmiuix/internal/widget/AlertActionSheet;->show()V

    .line 412
    const-string p1, "onConfigurationChanged first branch: ArrowActionSheet -> AlertActionSheet shift"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 413
    :cond_6e
    instance-of v0, v2, Lmiuix/internal/widget/AlertActionSheet;

    if-eqz v0, :cond_ab

    if-eqz v5, :cond_ab

    .line 414
    check-cast v2, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v2}, Lmiuix/internal/widget/AlertActionSheet;->getArrowActionAnchor()Landroid/view/View;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v0}, Lmiuix/internal/widget/AlertActionSheet;->getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v0

    if-eqz p1, :cond_b3

    if-eqz v0, :cond_b3

    .line 418
    sget-object v2, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_MODE_NONE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v0, v2, :cond_b3

    .line 420
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v2, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v2}, Lmiuix/internal/widget/AlertActionSheet;->dismissForShiftWithoutAnimation()V

    .line 422
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v2, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v2, p1}, Lmiuix/internal/widget/AlertActionSheet;->createArrowActionSheet(Landroid/view/View;)Lmiuix/internal/widget/ArrowActionSheet;

    move-result-object p1

    .line 423
    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ArrowActionSheet;->setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 424
    invoke-virtual {p1, v3}, Lmiuix/internal/widget/ArrowActionSheet;->setEnableEnterAnim(Z)V

    .line 425
    invoke-virtual {p1, v4}, Lmiuix/internal/widget/ArrowActionSheet;->setIsFromAlertShape(Z)V

    .line 426
    invoke-virtual {p1}, Lmiuix/internal/widget/ArrowActionSheet;->show()V

    .line 427
    const-string p1, "onConfigurationChanged second branch: AlertActionSheet -> ArrowActionSheet shift"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 431
    :cond_ab
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 432
    const-string p1, "onConfigurationChanged third branch: run config changed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    return-void
.end method

.method private setWindowNavigationBarHidden()V
    .registers 3

    .line 520
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1002

    .line 522
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsAssociatedActivityNavigationBarHidden:Z

    :cond_10
    return-void
.end method

.method private setupContent()V
    .registers 4

    .line 872
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 875
    :cond_5
    sget v1, Lmiuix/appcompat/R$id;->action_sheet_message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    .line 876
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    sget v1, Lmiuix/appcompat/R$id;->action_sheet_content_divider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDivider:Landroid/view/View;

    .line 877
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4a

    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 878
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3a

    .line 880
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    :cond_3a
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_68

    .line 883
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68

    .line 886
    :cond_4a
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_59

    .line 887
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    :cond_59
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_68

    .line 890
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_68
    :goto_68
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->setupListView()V

    .line 894
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne v0, v1, :cond_7d

    .line 895
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    sget v1, Lmiuix/appcompat/R$id;->separate_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateView:Landroid/widget/TextView;

    .line 897
    :cond_7d
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 898
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$string;->miuix_appcompat_cancel_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateText:Ljava/lang/CharSequence;

    .line 900
    :cond_8f
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateView:Landroid/widget/TextView;

    if-eqz v0, :cond_a7

    .line 901
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateView:Landroid/widget/TextView;

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 903
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateView:Landroid/widget/TextView;

    new-instance v1, Lmiuix/internal/widget/ActionSheetController$9;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ActionSheetController$9;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a7
    return-void
.end method

.method private setupContentPanel()V
    .registers 10

    .line 539
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    if-eqz v0, :cond_e7

    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 544
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    if-nez v2, :cond_27

    .line 547
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentLayout:I

    iget-object v4, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    invoke-virtual {v2, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    .line 549
    :cond_27
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    instance-of v3, v2, Lmiuix/internal/widget/ArrowActionSheetPanel;

    if-eqz v3, :cond_38

    .line 550
    check-cast v2, Lmiuix/internal/widget/ArrowActionSheetPanel;

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    invoke-interface {v3}, Lmiuix/internal/widget/ActionSheet$ContentController;->getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/internal/widget/ArrowActionSheetPanel;->setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 552
    :cond_38
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v5, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    iget-object v6, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcContentPanelWidth(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelWidth:I

    .line 553
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v5, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    iget-object v6, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-interface/range {v2 .. v7}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcContentPanelHeight(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelHeight:I

    .line 554
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcHorizontalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object v2

    .line 555
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    aget v4, v2, v8

    iput v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    .line 556
    aget v2, v2, v5

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 557
    iget v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelWidth:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7d

    .line 558
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelWidth:I

    :cond_7d
    const/16 v2, 0x1e

    if-lt v0, v2, :cond_93

    .line 561
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcVerticalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object v0

    .line 562
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    aget v2, v0, v8

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 563
    aget v0, v0, v5

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 565
    :cond_93
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetRootView;->setContentPanelExtraBounds(Landroid/graphics/Rect;)V

    .line 567
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_ae

    .line 568
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelWidth:I

    iget v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_be

    .line 570
    :cond_ae
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 571
    iget v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 572
    iget v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanelHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 574
    :goto_be
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 575
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 576
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 577
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 579
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e6

    .line 581
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_e6
    return-void

    .line 540
    :cond_e7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "action sheet require set contentController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupContentView(Z)V
    .registers 3

    .line 528
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->setupContentPanel()V

    if-nez p1, :cond_8

    .line 530
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->setupContent()V

    .line 532
    :cond_8
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->adjustSpringEnabled()V

    .line 533
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v0, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne p1, v0, :cond_14

    .line 534
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->adjustAlertMessageMaxLine()V

    :cond_14
    return-void
.end method

.method private setupListView()V
    .registers 9

    .line 920
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 923
    :cond_5
    sget v1, Lmiuix/appcompat/R$id;->actionSheetSpringBack:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 924
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    sget v1, Lmiuix/appcompat/R$id;->action_sheet_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    .line 925
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_27

    .line 926
    new-instance v1, Lmiuix/internal/widget/ActionSheetController$10;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ActionSheetController$10;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 937
    :cond_27
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListViewAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_42

    .line 938
    new-instance v0, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiuix/internal/widget/ActionSheetController;->mListItemLayout:I

    iget-object v5, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItems:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    iget-object v7, p0, Lmiuix/internal/widget/ActionSheetController;->mTypeColorMap:Ljava/util/Map;

    const v4, 0x1020014

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 940
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController$ActionSheetListViewAdapter;->setProvider(Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V

    .line 944
    :cond_42
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setupWindow()V
    .registers 6

    .line 440
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 441
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_color_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 442
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 443
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_NoAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 444
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 449
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_74

    .line 453
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v3, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne v2, v3, :cond_3e

    .line 454
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_46

    .line 456
    :cond_3e
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v2

    :goto_46
    if-eqz v2, :cond_63

    .line 459
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 460
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->getScreenOrientation()I

    move-result v4

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v4, v2}, Lmiuix/internal/widget/ActionSheetController;->getCutoutMode(II)I

    move-result v2

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_74

    .line 463
    :cond_63
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x3

    .line 468
    :goto_6c
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 471
    :cond_74
    :goto_74
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiuix/internal/widget/ActionSheetController;->clearFitSystemWindow(Landroid/view/View;)V

    if-lt v0, v1, :cond_d5

    .line 473
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 475
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne v0, v1, :cond_98

    .line 477
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_a0

    .line 480
    :cond_98
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 482
    :goto_a0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/internal/widget/ActionSheetController;->getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z

    move-result v1

    if-eqz v0, :cond_c4

    .line 484
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_c4

    if-nez v1, :cond_bf

    .line 489
    iget-boolean v1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsInFreeForm:Z

    if-eqz v1, :cond_c4

    .line 490
    :cond_bf
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 492
    :cond_c4
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/internal/widget/ActionSheetController;->getAssociatedActivitySystemBarVisibility(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 494
    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsInFreeForm:Z

    if-nez v0, :cond_d5

    .line 496
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->setWindowNavigationBarHidden()V

    :cond_d5
    return-void
.end method

.method private updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V
    .registers 16

    .line 826
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcVerticalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object v0

    .line 827
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcHorizontalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object v1

    .line 830
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_1c
    move v7, v2

    goto :goto_25

    :cond_1e
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    goto :goto_1c

    .line 831
    :goto_25
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_31
    move v12, v2

    goto :goto_3a

    :cond_33
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    goto :goto_31

    .line 832
    :goto_3a
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v4, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v6, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcContentPanelWidth(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I

    move-result v2

    .line 833
    iget-object v8, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    iget-object v9, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v11, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    move-object v13, p1

    invoke-interface/range {v8 .. v13}, Lmiuix/internal/widget/ActionSheet$ContentController;->calcContentPanelHeight(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I

    move-result p1

    .line 834
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 836
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v2, :cond_66

    .line 837
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move v2, v5

    goto :goto_67

    :cond_66
    move v2, v6

    .line 840
    :goto_67
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v4, p1, :cond_6e

    .line 841
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move v2, v5

    .line 845
    :cond_6e
    iget p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aget v4, v0, v6

    if-eq p1, v4, :cond_7b

    .line 846
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 847
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    iput v4, p1, Landroid/graphics/Rect;->top:I

    move v2, v5

    .line 850
    :cond_7b
    iget p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aget v0, v0, v5

    if-eq p1, v0, :cond_88

    .line 851
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 852
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    move v2, v5

    .line 855
    :cond_88
    iget p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aget v0, v1, v6

    if-eq p1, v0, :cond_95

    .line 856
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 857
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->left:I

    move v2, v5

    .line 860
    :cond_95
    iget p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aget v0, v1, v5

    if-eq p1, v0, :cond_a2

    .line 861
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 862
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_a3

    :cond_a2
    move v5, v2

    .line 865
    :goto_a3
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mPanelMargins:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ActionSheetRootView;->setContentPanelExtraBounds(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_b1

    .line 867
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b1
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .registers 4

    .line 811
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 815
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 816
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_16

    .line 817
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 818
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_16
    return-void
.end method

.method private updateRootViewSizeByWindow()V
    .registers 5

    .line 991
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 993
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 994
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 995
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private updateWindowCutoutMode()V
    .registers 4

    .line 767
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->getScreenOrientation()I

    move-result v0

    .line 768
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_a0

    iget v1, p0, Lmiuix/internal/widget/ActionSheetController;->mScreenOrientation:I

    if-eq v1, v0, :cond_a0

    .line 769
    iput v0, p0, Lmiuix/internal/widget/ActionSheetController;->mScreenOrientation:I

    .line 770
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 772
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiuix/internal/widget/ActionSheetController;->getCutoutMode(II)I

    move-result v0

    .line 773
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_a0

    .line 774
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 775
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 777
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a0

    .line 782
    :cond_60
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    goto :goto_69

    :cond_68
    const/4 v1, 0x3

    .line 787
    :goto_69
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_a0

    .line 788
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 789
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 791
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private useTabletAnim()Z
    .registers 3

    .line 799
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMode:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ARROW_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method protected checkAndClearFocus()V
    .registers 2

    .line 748
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_b
    return-void
.end method

.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 6

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 725
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->cleanWindowInsetsAnimation()V

    .line 727
    :cond_9
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_13

    if-eqz p1, :cond_12

    .line 729
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_12
    return-void

    .line 733
    :cond_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 734
    invoke-virtual {p0}, Lmiuix/internal/widget/ActionSheetController;->checkAndClearFocus()V

    .line 735
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->useTabletAnim()Z

    move-result v2

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;ZLandroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_3f

    .line 737
    :cond_2a
    const-string p1, "dialog is not attached to window when dismiss is invoked"

    const-string v0, "ActionSheetController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_start_31
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception p1

    .line 742
    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getActionItems()[Ljava/lang/CharSequence;
    .registers 2

    .line 325
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfigurationChangedListener()Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .line 329
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getItemProvider()Lmiuix/appcompat/app/AccessibilityDelegateProvider;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemTypes()[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;
    .registers 2

    .line 333
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 267
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListViewAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 353
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mListViewAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 286
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 271
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    .line 243
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .registers 2

    .line 239
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    .line 251
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method public getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .registers 2

    .line 219
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method public getShowAnimListener()Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .registers 2

    .line 211
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object v0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    move p1, v0

    .line 357
    :goto_6
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsFromRebuild:Z

    .line 358
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsInFreeForm:Z

    .line 359
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiuix/internal/widget/ActionSheetController;->mActionSheetLayout:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 360
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->action_sheet_root_view:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/internal/widget/ActionSheetRootView;

    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    .line 361
    new-instance v1, Lmiuix/internal/widget/ActionSheetController$4;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ActionSheetController$4;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {p1, v1}, Lmiuix/internal/widget/ActionSheetRootView;->setConfigurationChangedCallback(Lmiuix/internal/widget/ActionSheetRootView$ConfigurationChangedCallback;)V

    .line 367
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    invoke-virtual {p1, v1}, Lmiuix/internal/widget/ActionSheetRootView;->setContentController(Lmiuix/internal/widget/ActionSheet$ContentController;)V

    .line 368
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->action_sheet_dim_bg:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    .line 369
    new-instance v1, Lmiuix/internal/widget/ActionSheetController$5;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ActionSheetController$5;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_53

    :cond_51
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_53
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 378
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->updateRootViewSizeByWindow()V

    .line 379
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->setupWindow()V

    .line 380
    invoke-direct {p0, v0}, Lmiuix/internal/widget/ActionSheetController;->setupContentView(Z)V

    .line 381
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->prepareTypeColorMap(Landroid/content/Context;)V

    return-void
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method protected isShowingAnimation()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsDialogAnimating:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 649
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->configWindow()V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 622
    sget-boolean p1, Lmiuix/os/Build;->IS_FLIP:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsFlipTinyScreen:Z

    .line 623
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mIsInFreeForm:Z

    .line 624
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->updateRootViewSizeByWindow()V

    .line 625
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 626
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->updateWindowCutoutMode()V

    .line 627
    invoke-direct {p0, v0}, Lmiuix/internal/widget/ActionSheetController;->setupContentView(Z)V

    .line 629
    :cond_2f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4e

    .line 630
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 632
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V

    .line 634
    :cond_44
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mRootView:Lmiuix/internal/widget/ActionSheetRootView;

    new-instance v0, Lmiuix/internal/widget/ActionSheetController$6;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ActionSheetController$6;-><init>(Lmiuix/internal/widget/ActionSheetController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4e
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    const/4 v0, 0x0

    .line 1123
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1124
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 1125
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ActionSheetController;->translateContentPanel(I)V

    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 8

    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, v0}, Lmiuix/internal/widget/ActionSheetController;->updateDimBgBottomMargin(I)V

    .line 756
    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->updateWindowCutoutMode()V

    .line 757
    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mIsFromRebuild:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lmiuix/internal/widget/ActionSheetController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_20

    .line 758
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/internal/widget/ActionSheetController;->useTabletAnim()Z

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/internal/widget/ActionSheetController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    goto :goto_34

    .line 760
    :cond_20
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 761
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_31

    :cond_2f
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_34
    :goto_34
    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 313
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItems:[Ljava/lang/CharSequence;

    .line 314
    iput-object p2, p0, Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 319
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItems:[Ljava/lang/CharSequence;

    .line 320
    iput-object p2, p0, Lmiuix/internal/widget/ActionSheetController;->mActionItemTypes:[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    .line 321
    iput-object p3, p0, Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setContentController(Lmiuix/internal/widget/ActionSheet$ContentController;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    return-void
.end method

.method public setEnableEnterAnim(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mEnableEnterAnim:Z

    return-void
.end method

.method public setListViewAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mListViewAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 279
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mMessage:Ljava/lang/CharSequence;

    .line 280
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method protected setPendingDismiss(Z)V
    .registers 2

    .line 807
    iput-boolean p1, p0, Lmiuix/internal/widget/ActionSheetController;->mHasPendingDismiss:Z

    return-void
.end method

.method public setSeparateClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setSeparateItemText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateText:Ljava/lang/CharSequence;

    .line 291
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mSeparateView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method protected translateContentPanel(I)V
    .registers 3

    .line 1130
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 1133
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1134
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController;->mContentPanel:Landroid/view/ViewGroup;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
