.class public Lmiuix/internal/widget/ArrowActionSheet;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ArrowActionSheet.java"

# interfaces
.implements Lmiuix/internal/widget/ActionSheet$IActionSheet;


# instance fields
.field final mActionController:Lmiuix/internal/widget/ActionSheetController;

.field private final mAnchorView:Landroid/view/View;

.field private mArrowIconLongSide:I

.field private mArrowIconShortSide:I

.field private mArrowLinkOffset:I

.field private mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

.field private mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

.field private mContext:Landroid/content/Context;

.field private mDefaultMargin:I

.field private mFixedWidth:I

.field private mIsDismissForShift:Z

.field private mIsFromAlertShape:Z

.field private mOffset:Landroid/graphics/Point;

.field private mOffsetToPoint:I


# direct methods
.method public static synthetic $r8$lambda$CccrMu_5RhfAEcTPy7hDk9Qt4lI(Lmiuix/internal/widget/ArrowActionSheet;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/internal/widget/ArrowActionSheet;->lambda$dismissWithAnimationExistDecorView$0()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .registers 6

    .line 59
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet;->mOffset:Landroid/graphics/Point;

    .line 60
    new-instance p2, Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ARROW_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    invoke-direct {p2, p1, p0, v0, v1}, Lmiuix/internal/widget/ActionSheetController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;Lmiuix/internal/widget/ActionSheet$ActionSheetMode;)V

    iput-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    .line 61
    iput-object p3, p0, Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;

    .line 62
    iput-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lmiuix/internal/widget/ArrowActionSheet;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/graphics/Point;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/internal/widget/ArrowActionSheet;)I
    .registers 1

    .line 34
    iget p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/internal/widget/ArrowActionSheet;)I
    .registers 1

    .line 34
    iget p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/internal/widget/ArrowActionSheet;)I
    .registers 1

    .line 34
    iget p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/internal/widget/ArrowActionSheet;)I
    .registers 1

    .line 34
    iget p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mFixedWidth:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/content/Context;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/internal/widget/ArrowActionSheet;)I
    .registers 1

    .line 34
    iget p0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_link_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_long_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_short_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconShortSide:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_content_arrow_fixed_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mFixedWidth:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_offset_to_point:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I

    .line 125
    invoke-direct {p0}, Lmiuix/internal/widget/ArrowActionSheet;->setContentController()V

    return-void
.end method

.method private synthetic lambda$dismissWithAnimationExistDecorView$0()V
    .registers 3

    .line 785
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    return-void
.end method

.method private setContentController()V
    .registers 3

    .line 129
    new-instance v0, Lmiuix/internal/widget/ArrowActionSheet$1;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ArrowActionSheet$1;-><init>(Lmiuix/internal/widget/ArrowActionSheet;)V

    iput-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    .line 565
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    if-eqz v1, :cond_e

    .line 566
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/ActionSheetController;->setContentController(Lmiuix/internal/widget/ActionSheet$ContentController;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected createAlertActionSheet(Landroid/view/View;)Lmiuix/internal/widget/AlertActionSheet;
    .registers 5

    .line 73
    new-instance v0, Lmiuix/internal/widget/AlertActionSheet;

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/internal/widget/AlertActionSheet;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setArrowActionAnchor(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 78
    invoke-virtual {p0}, Lmiuix/internal/widget/ArrowActionSheet;->isCanceledOnTouchOutside()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p0}, Lmiuix/internal/widget/ArrowActionSheet;->isHapticFeedbackEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setHapticFeedbackEnabled(Z)V

    .line 80
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 81
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2e
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 84
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/widget/AlertActionSheet;->setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    :cond_4d
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemTypes()[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 87
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->getItemTypes()[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    move-result-object v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v2}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/internal/widget/AlertActionSheet;->setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    :cond_7a
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getShowAnimListener()Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 90
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getShowAnimListener()Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 92
    :cond_8b
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 93
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setActionSheetOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 95
    :cond_9c
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 96
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setActionSheetOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    :cond_ad
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    if-eqz p1, :cond_c7

    .line 99
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 100
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setActionSheetOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 102
    :cond_c7
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getListViewAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 103
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getListViewAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setListViewAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    :cond_d8
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 106
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/AlertActionSheet;->setActionSheetOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    :cond_f2
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getConfigurationChangedListener()Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;

    .line 112
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemProvider()Lmiuix/appcompat/app/AccessibilityDelegateProvider;

    return-object v0
.end method

.method public dismiss()V
    .registers 4

    .line 761
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 764
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    return-void

    .line 767
    :cond_1a
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    .line 768
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 770
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 772
    :cond_31
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 773
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 774
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    goto :goto_44

    .line 776
    :cond_41
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationOrNot(Landroid/view/View;)V

    :goto_44
    return-void
.end method

.method protected dismissForShiftWithoutAnimation()V
    .registers 2

    const/4 v0, 0x1

    .line 791
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ArrowActionSheet;->setIsDismissForShift(Z)V

    .line 792
    invoke-virtual {p0}, Lmiuix/internal/widget/ArrowActionSheet;->dismissWithoutAnimation()V

    return-void
.end method

.method protected dismissWithAnimationExistDecorView(Landroid/view/View;)V
    .registers 4

    .line 781
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 782
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ActionSheetController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_22

    .line 784
    :cond_1a
    new-instance v0, Lmiuix/internal/widget/ArrowActionSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ArrowActionSheet$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ArrowActionSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_22
    return-void
.end method

.method public dismissWithoutAnimation()V
    .registers 4

    .line 797
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 801
    :cond_1a
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 802
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    return-void

    .line 805
    :cond_29
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    .line 806
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 810
    :cond_40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 718
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 721
    :cond_a
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->miuixSuperDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getArrowAnchor()Landroid/view/View;
    .registers 2

    .line 584
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 2

    .line 580
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 605
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 610
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 2

    .line 750
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->isCanceledOnTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected isDismissForShift()Z
    .registers 2

    .line 600
    iget-boolean v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mIsDismissForShift:Z

    return v0
.end method

.method protected isFromAlertShape()Z
    .registers 2

    .line 592
    iget-boolean v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mIsFromAlertShape:Z

    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 2

    .line 741
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v0, v0, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 726
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onAttachedToWindow()V

    .line 727
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v1, v1, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_1b

    .line 729
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 731
    :cond_1b
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->onAttachedToWindow()V

    .line 732
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 646
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 647
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 648
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onCreate()V

    .line 651
    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 652
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->superOnCreate(Landroid/os/Bundle;)V

    .line 653
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->installContent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 755
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnDetachedFromWindow()V

    .line 756
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->onDetachedFromWindow()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 658
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnStart()V

    .line 659
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 664
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 665
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 666
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopBefore()V

    .line 669
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnStop()V

    .line 670
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 671
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_1d

    .line 672
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopAfter()V

    :cond_1d
    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 637
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/widget/ActionSheetController;->setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 641
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/internal/widget/ActionSheetController;->setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setActionSheetOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3

    .line 705
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setActionSheetOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3

    .line 701
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setActionSheetOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 3

    .line 709
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setActionSheetOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 3

    .line 697
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    .line 746
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setEnableEnterAnim(Z)V
    .registers 3

    .line 683
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setEnableEnterAnim(Z)V

    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 3

    .line 737
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iput-boolean p1, v0, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method protected setIsDismissForShift(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mIsDismissForShift:Z

    return-void
.end method

.method protected setIsFromAlertShape(Z)V
    .registers 2

    .line 588
    iput-boolean p1, p0, Lmiuix/internal/widget/ArrowActionSheet;->mIsFromAlertShape:Z

    return-void
.end method

.method public setListViewAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 620
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setListViewAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 625
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    .line 571
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mOffset:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 572
    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 3

    .line 688
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 679
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superShow()V

    return-void
.end method
