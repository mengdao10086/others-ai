.class public Lmiuix/internal/widget/AlertActionSheet;
.super Lmiuix/appcompat/app/AlertDialog;
.source "AlertActionSheet.java"

# interfaces
.implements Lmiuix/internal/widget/ActionSheet$IActionSheet;


# instance fields
.field final mActionController:Lmiuix/internal/widget/ActionSheetController;

.field private mArrowActionAnchor:Landroid/view/View;

.field private mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

.field private mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

.field protected mContext:Landroid/content/Context;

.field private mFreeFormPhoneCompatHeight:I

.field private mFreeFormTabletCompatHeight:I

.field private mIsDismissForShift:Z

.field private mIsFlipTinyScreen:Z

.field private mIsFromArrowShape:Z

.field private mMaxFixedWidth:I

.field private mNormalMargin:I

.field private mSmallMargin:I


# direct methods
.method public static synthetic $r8$lambda$KSYN4-HrNlMC0n8xI2gXkL-et6s(Lmiuix/internal/widget/AlertActionSheet;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/internal/widget/AlertActionSheet;->lambda$dismissWithAnimationExistDecorView$0()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/AlertActionSheet;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 71
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mContext:Landroid/content/Context;

    .line 73
    new-instance p2, Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ActionSheetMode;->ALERT_MODE:Lmiuix/internal/widget/ActionSheet$ActionSheetMode;

    invoke-direct {p2, p1, p0, v0, v1}, Lmiuix/internal/widget/ActionSheetController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;Lmiuix/internal/widget/ActionSheet$ActionSheetMode;)V

    iput-object p2, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    .line 74
    invoke-direct {p0, p1}, Lmiuix/internal/widget/AlertActionSheet;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/AlertActionSheet;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/AlertActionSheet;)I
    .registers 1

    .line 37
    iget p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/AlertActionSheet;)I
    .registers 1

    .line 37
    iget p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/internal/widget/AlertActionSheet;)I
    .registers 1

    .line 37
    iget p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mMaxFixedWidth:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/internal/widget/AlertActionSheet;)I
    .registers 1

    .line 37
    iget p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mFreeFormTabletCompatHeight:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/internal/widget/AlertActionSheet;)I
    .registers 1

    .line 37
    iget p0, p0, Lmiuix/internal/widget/AlertActionSheet;->mFreeFormPhoneCompatHeight:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lmiuix/internal/widget/AlertActionSheet;->setContentController()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_content_alert_max_fixed_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mMaxFixedWidth:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mFreeFormPhoneCompatHeight:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_tablet_t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mFreeFormTabletCompatHeight:I

    .line 84
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v0, :cond_4b

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p1, 0x0

    :goto_4c
    iput-boolean p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z

    return-void
.end method

.method private synthetic lambda$dismissWithAnimationExistDecorView$0()V
    .registers 3

    .line 448
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    return-void
.end method

.method private setContentController()V
    .registers 3

    .line 97
    new-instance v0, Lmiuix/internal/widget/AlertActionSheet$1;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/AlertActionSheet$1;-><init>(Lmiuix/internal/widget/AlertActionSheet;)V

    iput-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mContentController:Lmiuix/internal/widget/ActionSheet$ContentController;

    .line 227
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    if-eqz v1, :cond_e

    .line 228
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/ActionSheetController;->setContentController(Lmiuix/internal/widget/ActionSheet$ContentController;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected createArrowActionSheet(Landroid/view/View;)Lmiuix/internal/widget/ArrowActionSheet;
    .registers 5

    .line 291
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowActionAnchor:Landroid/view/View;

    .line 292
    new-instance v0, Lmiuix/internal/widget/ArrowActionSheet;

    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmiuix/internal/widget/ArrowActionSheet;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 293
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 294
    invoke-virtual {p0}, Lmiuix/internal/widget/AlertActionSheet;->isHapticFeedbackEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setHapticFeedbackEnabled(Z)V

    .line 295
    invoke-virtual {p0}, Lmiuix/internal/widget/AlertActionSheet;->isCanceledOnTouchOutside()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setCanceledOnTouchOutside(Z)V

    .line 296
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 297
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2d
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 300
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/widget/ArrowActionSheet;->setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    :cond_4c
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemTypes()[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 303
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getActionItems()[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->getItemTypes()[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;

    move-result-object v1

    iget-object v2, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v2}, Lmiuix/internal/widget/ActionSheetController;->getItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/internal/widget/ArrowActionSheet;->setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    :cond_79
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getShowAnimListener()Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 306
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getShowAnimListener()Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 308
    :cond_8a
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 309
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setActionSheetOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 311
    :cond_9b
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 312
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setActionSheetOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    :cond_ac
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 315
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 316
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setActionSheetOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 318
    :cond_c6
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getListViewAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_d7

    .line 319
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getListViewAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setListViewAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    :cond_d7
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    if-eqz p1, :cond_f1

    .line 322
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 323
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ArrowActionSheet;->setActionSheetOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 325
    :cond_f1
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getConfigurationChangedListener()Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;

    .line 328
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {p1}, Lmiuix/internal/widget/ActionSheetController;->getItemProvider()Lmiuix/appcompat/app/AccessibilityDelegateProvider;

    return-object v0
.end method

.method public dismiss()V
    .registers 4

    .line 423
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 426
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    return-void

    .line 429
    :cond_1a
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 434
    :cond_31
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 435
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 436
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    goto :goto_44

    .line 438
    :cond_41
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationOrNot(Landroid/view/View;)V

    :goto_44
    return-void
.end method

.method protected dismissForShiftWithoutAnimation()V
    .registers 2

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/AlertActionSheet;->setIsDismissForShift(Z)V

    .line 459
    invoke-virtual {p0}, Lmiuix/internal/widget/AlertActionSheet;->dismissWithoutAnimation()V

    return-void
.end method

.method protected dismissWithAnimationExistDecorView(Landroid/view/View;)V
    .registers 4

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 445
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {p1, v0}, Lmiuix/internal/widget/ActionSheetController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_22

    .line 447
    :cond_1a
    new-instance v0, Lmiuix/internal/widget/AlertActionSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/AlertActionSheet$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/AlertActionSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_22
    return-void
.end method

.method public dismissWithoutAnimation()V
    .registers 4

    .line 464
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 468
    :cond_1a
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 469
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    return-void

    .line 472
    :cond_29
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/internal/widget/ActionSheetController;->setPendingDismiss(Z)V

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 477
    :cond_40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 383
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 386
    :cond_a
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->miuixSuperDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getArrowActionAnchor()Landroid/view/View;
    .registers 2

    .line 355
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowActionAnchor:Landroid/view/View;

    return-object v0
.end method

.method public getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 2

    .line 363
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 234
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 239
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 2

    .line 486
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->isCanceledOnTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected isDismissForShift()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsDismissForShift:Z

    return v0
.end method

.method protected isFromArrowShape()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsFromArrowShape:Z

    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v0, v0, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 372
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnAttachedToWindow()V

    .line 373
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v1, v1, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_1b

    .line 375
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 377
    :cond_1b
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v1}, Lmiuix/internal/widget/ActionSheetController;->onAttachedToWindow()V

    .line 378
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 280
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 281
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 282
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onCreate()V

    .line 285
    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 286
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->superOnCreate(Landroid/os/Bundle;)V

    .line 287
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->installContent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 417
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnDetachedFromWindow()V

    .line 418
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->onDetachedFromWindow()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 391
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnStart()V

    .line 392
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheetController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 397
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 398
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 399
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopBefore()V

    .line 402
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superOnStop()V

    .line 403
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 404
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_1d

    .line 405
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopAfter()V

    :cond_1d
    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 266
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/widget/ActionSheetController;->setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 271
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/internal/widget/ActionSheetController;->setActionItems([Ljava/lang/CharSequence;[Lmiuix/internal/widget/ActionSheet$ActionSheetItemType;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setActionSheetOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3

    .line 512
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setActionSheetOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3

    .line 504
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setActionSheetOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 3

    .line 508
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setActionSheetOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 3

    .line 500
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public setArrowActionAnchor(Landroid/view/View;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowActionAnchor:Landroid/view/View;

    return-void
.end method

.method public setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    .line 482
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setEnableEnterAnim(Z)V
    .registers 3

    .line 454
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setEnableEnterAnim(Z)V

    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 3

    .line 89
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    iput-boolean p1, v0, Lmiuix/internal/widget/ActionSheetController;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method protected setIsDismissForShift(Z)V
    .registers 2

    .line 343
    iput-boolean p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsDismissForShift:Z

    return-void
.end method

.method protected setIsFromArrowShape(Z)V
    .registers 2

    .line 335
    iput-boolean p1, p0, Lmiuix/internal/widget/AlertActionSheet;->mIsFromArrowShape:Z

    return-void
.end method

.method public setListViewAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 367
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setListViewAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 249
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 3

    .line 491
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public setSeparateButtonText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setSeparateItemText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSeparateClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->setSeparateClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 412
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->superShow()V

    return-void
.end method
