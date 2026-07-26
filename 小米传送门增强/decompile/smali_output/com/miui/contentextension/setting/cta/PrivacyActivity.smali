.class public Lcom/miui/contentextension/setting/cta/PrivacyActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;
    }
.end annotation


# instance fields
.field private mActivity:Ljava/lang/String;

.field private mIsNewCta:Z

.field private mIsTrackQuit:Z

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;

.field private mSelectedType:Ljava/lang/String;

.field private mShouldSendClipboard:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsTrackQuit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsTrackQuit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monCtaClick(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->onCtaClick(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mShouldSendClipboard:Z

    return-void
.end method

.method private onCtaClick(Z)V
    .registers 6

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCtaClick enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.PrivacyActivity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "taplus_clipboard"

    if-eqz p1, :cond_44

    const/4 v1, 0x1

    .line 184
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 185
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 186
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->showCtaIfNeed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 187
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setAgreeNewPrivacy(Landroid/content/Context;)V

    .line 189
    :cond_2a
    iget-object v2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 190
    iput-boolean v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mShouldSendClipboard:Z

    .line 192
    :cond_34
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 193
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 194
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 196
    invoke-static {p0, v1}, Lcom/miui/contentextension/analy/Analy;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    .line 198
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->adjustIfOpenImageCatcher(Landroid/content/Context;)V

    goto :goto_4e

    :cond_44
    const/4 v1, 0x0

    .line 200
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 201
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 202
    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 204
    :goto_4e
    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mSelectedType:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mActivity:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/miui/contentextension/analy/CtaAnaly;->trackClick(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/setting/cta/CtaEvent;

    iget-object v3, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/miui/contentextension/setting/cta/CtaEvent;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private showCtaDialog()V
    .registers 2

    .line 141
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->tryToShowNewCtaDialog(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsNewCta:Z

    return-void

    .line 145
    :cond_a
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .registers 3

    .line 149
    new-instance v0, Lcom/miui/contentextension/view/CtaDialog;

    new-instance v1, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;-><init>(Lcom/miui/contentextension/setting/cta/PrivacyActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/view/CtaDialog;-><init>(Landroid/content/Context;Lcom/miui/contentextension/view/CtaDialog$DialogListener;)V

    .line 171
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    .line 172
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_19
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Taplus.PrivacyActivity"

    invoke-static {v0, p3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x6f

    if-ne p1, p3, :cond_50

    .line 76
    iget-boolean p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsNewCta:Z

    if-eqz p1, :cond_50

    const/4 p1, -0x3

    if-eq p2, p1, :cond_4d

    const/4 p1, 0x1

    if-eq p2, p1, :cond_49

    const/16 p3, 0x29a

    if-eq p2, p3, :cond_37

    .line 90
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_50

    :cond_37
    const/4 p2, 0x0

    .line 85
    invoke-direct {p0, p2}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->onCtaClick(Z)V

    .line 86
    iget-object p2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mSelectedType:Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mActivity:Ljava/lang/String;

    const-string v1, "regular"

    invoke-static {v1, p2, p3, v0}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsTrackQuit:Z

    goto :goto_50

    .line 82
    :cond_49
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->onCtaClick(Z)V

    goto :goto_50

    .line 79
    :cond_4d
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->showCtaDialog()V

    :cond_50
    :goto_50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 45
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 48
    const-string v1, "selected_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mSelectedType:Ljava/lang/String;

    .line 49
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    .line 50
    const-string v1, "activity_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mActivity:Ljava/lang/String;

    .line 52
    :cond_21
    new-instance v0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;

    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mSelectedType:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mActivity:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;-><init>(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mReceiver:Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    if-nez p1, :cond_3e

    .line 56
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->showCtaDialog()V

    :cond_3e
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 133
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mReceiver:Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mShouldSendClipboard:Z

    if-eqz v0, :cond_15

    .line 136
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 68
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "is_new_cta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsNewCta:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 62
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "is_new_cta"

    iget-boolean v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->mIsNewCta:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
