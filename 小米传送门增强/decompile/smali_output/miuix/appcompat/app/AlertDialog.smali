.class public Lmiuix/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;,
        Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;,
        Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;,
        Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;,
        Lmiuix/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final DIALOG_CONTENT_LAYOUT:[I


# instance fields
.field final mAlert:Lmiuix/appcompat/app/AlertController;

.field protected mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

.field protected mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

.field private mShowDescription:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$HdFigGK5UrJRW-GUjSQOpLf6iwk(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->lambda$show$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JqXhVDfqA7gkuQjSOaiqrneHB7I(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$a7f0ChZFuKg_XYB5FWodyMa6kX8(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->lambda$dismissWithAnimationExistDecorView$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 105
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content:I

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content_land:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/app/AlertDialog;->DIALOG_CONTENT_LAYOUT:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 122
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 1443
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    .line 123
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->parseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    .line 124
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 126
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 128
    :cond_1b
    new-instance v0, Lmiuix/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p2, p0, v1}, Lmiuix/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 129
    instance-of p2, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_31

    .line 130
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    .line 132
    :cond_31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_show_dialog_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mShowDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method private synthetic lambda$dismissWithAnimationExistDecorView$2()V
    .registers 3

    .line 1510
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 1444
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1445
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1446
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1454
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    :cond_19
    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 2

    .line 455
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->hasPendingDismiss()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 456
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_b
    return-void
.end method

.method private parseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    if-nez p1, :cond_7

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 146
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/ContextThemeWrapper;

    if-ne v0, v1, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_14
    return-object p1
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    return p1

    .line 154
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$attr;->miuiAlertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 156
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 1463
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isAsyncInflatePanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1464
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->safeRemovePanelFromParent()V

    .line 1466
    :cond_15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1467
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1469
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->setPendingDismiss(Z)V

    return-void

    .line 1472
    :cond_2c
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController;->setPendingDismiss(Z)V

    .line 1473
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 1475
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->removeInfoOfContext(Landroid/content/Context;)V

    .line 1477
    :cond_43
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1478
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 1479
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1480
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    goto :goto_62

    .line 1482
    :cond_5b
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationOrNot(Landroid/view/View;)V

    goto :goto_62

    .line 1485
    :cond_5f
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    :goto_62
    return-void
.end method

.method protected dismissIfAttachedToWindow(Landroid/view/View;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1517
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 1520
    :cond_9
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method protected dismissWithAnimationExistDecorView(Landroid/view/View;)V
    .registers 4

    .line 1506
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 1507
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_22

    .line 1509
    :cond_1a
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_22
    return-void
.end method

.method protected dismissWithAnimationOrNot(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1494
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationExistDecorView(Landroid/view/View;)V

    goto :goto_13

    .line 1497
    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    goto :goto_13

    .line 1500
    :cond_10
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_13
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 406
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 409
    :cond_a
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAssociatedActivity()Landroid/app/Activity;
    .registers 4

    .line 1532
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1533
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_8
    if-nez v0, :cond_21

    if-eqz v1, :cond_21

    .line 1535
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_14

    .line 1536
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_8

    .line 1538
    :cond_14
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1f

    .line 1539
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_8

    :cond_1f
    const/4 v1, 0x0

    goto :goto_8

    :cond_21
    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 3

    .line 172
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 181
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 217
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected isSystemSpecialUiThread()Z
    .registers 3

    .line 1634
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1635
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.imms"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1636
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_server"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    return v0
.end method

.method public miuixSuperDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 413
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 1406
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 1407
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1408
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_1a

    .line 1409
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 1411
    :cond_1a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->onAttachedToWindow()V

    .line 1412
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 379
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 381
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onCreate()V

    .line 384
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-boolean v0, v0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-nez v0, :cond_23

    .line 385
    :cond_1b
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 387
    :cond_23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 388
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->installContent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1435
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 1436
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayoutReload()V
    .registers 1

    .line 0
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 418
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 419
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 427
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 428
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_d

    .line 429
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopBefore()V

    .line 432
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStop()V

    .line 434
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 435
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mLifecycleOwnerCompat:Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;

    if-eqz v0, :cond_22

    .line 436
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$LifecycleOwnerCompat;->onStopAfter()V

    :cond_22
    return-void
.end method

.method public realDismiss()V
    .registers 1

    .line 1524
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method protected setAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1424
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mShowDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    .line 1429
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1430
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    .line 1617
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1618
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 3

    .line 1622
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 190
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 451
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    .line 452
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 453
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 454
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    .line 459
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-wide v2, v2, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method

.method protected superOnAttachedToWindow()V
    .registers 1

    .line 1416
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected superOnCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 392
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public superOnDetachedFromWindow()V
    .registers 1

    .line 1440
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method protected superOnStart()V
    .registers 1

    .line 422
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected superOnStop()V
    .registers 1

    .line 442
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    return-void
.end method

.method public superShow()V
    .registers 1

    .line 464
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
