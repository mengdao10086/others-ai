.class public Lmiuix/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lmiuix/appcompat/app/AlertController$AlertParams;

.field private mActionSheetEnabled:Z

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 483
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mActionSheetEnabled:Z

    .line 513
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 514
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 515
    iput p2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method

.method private createActionSheet()Lmiuix/appcompat/app/AlertDialog;
    .registers 4

    .line 1322
    new-instance v0, Lmiuix/internal/widget/ActionSheet$Builder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1323
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1324
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1326
    :cond_1a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1327
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1329
    :cond_2b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setActionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1330
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1331
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setSeparateText(Ljava/lang/CharSequence;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1333
    :cond_45
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_4e

    .line 1334
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setSeparateClickListener(Landroid/content/DialogInterface$OnClickListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1336
    :cond_4e
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz v1, :cond_57

    .line 1337
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1339
    :cond_57
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v1, :cond_60

    .line 1340
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1342
    :cond_60
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_69

    .line 1343
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1345
    :cond_69
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_72

    .line 1346
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1348
    :cond_72
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7b

    .line 1349
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ActionSheet$Builder;->setListViewAdapter(Landroid/widget/ListAdapter;)Lmiuix/internal/widget/ActionSheet$Builder;

    .line 1351
    :cond_7b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1354
    invoke-virtual {v0}, Lmiuix/internal/widget/ActionSheet$Builder;->create()Lmiuix/internal/widget/ActionSheet$IActionSheet;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    .line 1355
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_90

    const/4 v1, 0x1

    .line 1356
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1358
    :cond_90
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_99

    .line 1359
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1361
    :cond_99
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method private createAlertDialog()Lmiuix/appcompat/app/AlertDialog;
    .registers 4

    .line 1371
    new-instance v0, Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1372
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v2, v0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController$AlertParams;->apply(Lmiuix/appcompat/app/AlertController;)V

    .line 1373
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 1374
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    .line 1375
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1377
    :cond_23
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1378
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1379
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1380
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 1381
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_48

    .line 1382
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_48
    return-object v0
.end method


# virtual methods
.method public create()Lmiuix/appcompat/app/AlertDialog;
    .registers 6

    .line 1310
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-nez v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    .line 1312
    :goto_13
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-nez v4, :cond_1c

    iget v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-nez v0, :cond_1c

    move v2, v3

    .line 1313
    :cond_1c
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mActionSheetEnabled:Z

    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    .line 1314
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->createActionSheet()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_29
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->createAlertDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 959
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 960
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 859
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 573
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 642
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 583
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 593
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1027
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1028
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1029
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 1030
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 725
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 726
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 738
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 739
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 879
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 889
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 910
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 699
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 700
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 712
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 713
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1145
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1146
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1147
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 1148
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1124
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1125
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1126
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 1127
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 537
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 552
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1288
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 1289
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    .line 1398
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-object v0
.end method
