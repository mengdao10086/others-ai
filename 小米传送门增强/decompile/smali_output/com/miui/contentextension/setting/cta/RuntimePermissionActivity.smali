.class public Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "RuntimePermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;
    }
.end annotation


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private isNormalImage:Z

.field private mIsTrackQuit:Z

.field private mPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mReceiver:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;

.field private permission:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mIsTrackQuit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mIsTrackQuit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    return-void
.end method

.method private requestPermission()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 70
    const-string v0, "Taplus.RuntimePermissionActivity"

    const-string v1, "\u6ca1\u6709\u6743\u9650\uff0c\u7533\u8bf7\u6743\u9650"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1001fe

    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x7b

    .line 75
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_41

    .line 77
    :cond_3e
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->saveImage()V

    :goto_41
    return-void
.end method

.method private saveImage()V
    .registers 4

    .line 82
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->isNormalImage:Z

    const-string v1, "Taplus.RuntimePermissionActivity"

    if-eqz v0, :cond_13

    .line 83
    const-string v0, "save normal Image"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapWidth:I

    iget v1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapHeight:I

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveNormalImage(Landroid/content/Context;II)V

    goto :goto_23

    .line 86
    :cond_13
    const-string v0, "save super Image"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    iget v1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapWidth:I

    iget v2, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapHeight:I

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveSuperImage(Landroid/content/Context;II)V

    :goto_23
    return-void
.end method

.method private showRequestPermissionRationaleDialog()V
    .registers 4

    .line 113
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001fd

    .line 114
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001fb

    .line 115
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08008c

    .line 117
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001fc

    .line 118
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$2;-><init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10002a

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$1;-><init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 136
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showSaveFailedToast()V
    .registers 2

    const v0, 0x7f100159

    .line 175
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showShortToast(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 51
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 54
    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->permission:Ljava/lang/String;

    .line 55
    const-string v1, "normal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->isNormalImage:Z

    .line 56
    const-string v1, "bitmapWidth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapWidth:I

    .line 57
    const-string v1, "bitmapHeight"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->bitmapHeight:I

    .line 59
    :cond_2b
    new-instance v0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;-><init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity-IA;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mReceiver:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    if-nez p1, :cond_43

    .line 63
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->requestPermission()V

    :cond_43
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 180
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mReceiver:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_36

    const/4 p1, 0x0

    .line 95
    aget p1, p3, p1

    const-string p2, "Taplus.RuntimePermissionActivity"

    if-nez p1, :cond_1a

    .line 96
    const-string p1, "\u6743\u9650\u540c\u610f"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->saveImage()V

    .line 98
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_36

    .line 100
    :cond_1a
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 101
    const-string p1, "\u63d0\u793a\u7528\u6237\u4e3a\u4ec0\u4e48\u9700\u8981\u7533\u8bf7\u6743\u9650"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->showRequestPermissionRationaleDialog()V

    goto :goto_36

    .line 104
    :cond_2b
    const-string p1, "\u4e0d\u63d0\u793a\u7528\u6237\u4e3a\u4ec0\u4e48\u9700\u8981\u7533\u8bf7\u6743\u9650"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->showSaveFailedToast()V

    .line 106
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_36
    :goto_36
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 163
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 164
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1d

    .line 165
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->mPermissionDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 167
    invoke-static {}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderScreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 168
    const-string v0, "Taplus.RuntimePermissionActivity"

    const-string v1, "RuntimePermissionActivity onStop finish"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1d
    return-void
.end method
