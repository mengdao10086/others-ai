.class public Lcom/miui/contentextension/setting/activity/MainSettingsActivity;
.super Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;
.source "MainSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;
    }
.end annotation


# instance fields
.field private mFromClipboard:Z

.field private mIsNewCta:Z

.field private mIsTrackQuit:Z

.field private mReceiver:Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;

.field private mSettingsFragment:Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsTrackQuit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsTrackQuit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monCtaClick(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->onCtaClick(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;-><init>()V

    return-void
.end method

.method private onCtaClick(Z)V
    .registers 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCtaClick enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MainSettingsActivity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    .line 197
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 198
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 199
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->showCtaIfNeed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 200
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setAgreeNewPrivacy(Landroid/content/Context;)V

    .line 202
    :cond_28
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 203
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 204
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 206
    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    .line 208
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->adjustIfOpenImageCatcher(Landroid/content/Context;)V

    .line 209
    invoke-static {p0}, Lcom/miui/contentextension/utils/TaplusPrivacyManager;->privacyAgree(Landroid/content/Context;)V

    goto :goto_45

    :cond_3b
    const/4 v0, 0x0

    .line 211
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 212
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 213
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 216
    :goto_45
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "other"

    invoke-static {p1, v2, v0, v1}, Lcom/miui/contentextension/analy/CtaAnaly;->trackClick(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/cta/CtaEvent;

    iget-boolean v2, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mFromClipboard:Z

    invoke-direct {v1, p1, v2}, Lcom/miui/contentextension/setting/cta/CtaEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private showDialog()V
    .registers 3

    .line 167
    new-instance v0, Lcom/miui/contentextension/view/CtaDialog;

    new-instance v1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;-><init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/view/CtaDialog;-><init>(Landroid/content/Context;Lcom/miui/contentextension/view/CtaDialog$DialogListener;)V

    .line 188
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    .line 189
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_19
    return-void
.end method


# virtual methods
.method protected getFragment()Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
    .registers 2

    .line 59
    new-instance v0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-direct {v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mSettingsFragment:Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mSettingsFragment:Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
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

    const-string v0, "Taplus.MainSettingsActivity"

    invoke-static {v0, p3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x6f

    const/4 v0, 0x0

    if-ne p1, p3, :cond_5b

    .line 69
    iget-boolean p3, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsNewCta:Z

    if-eqz p3, :cond_5b

    const/4 p1, -0x3

    if-eq p2, p1, :cond_55

    const/4 p1, 0x1

    if-eq p2, p1, :cond_51

    const/16 p3, 0x29a

    if-eq p2, p3, :cond_3a

    goto :goto_6f

    .line 78
    :cond_3a
    invoke-direct {p0, v0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->onCtaClick(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 79
    const-string v0, "regular"

    const-string v1, "other"

    invoke-static {v0, v1, p2, p3}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsTrackQuit:Z

    goto :goto_6f

    .line 75
    :cond_51
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->onCtaClick(Z)V

    goto :goto_6f

    .line 72
    :cond_55
    iget-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mFromClipboard:Z

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->showCtaDialog(Z)V

    goto :goto_6f

    :cond_5b
    const/16 p3, 0x65

    if-ne p1, p3, :cond_6f

    const/16 p1, 0x66

    if-ne p2, p1, :cond_6f

    .line 87
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mSettingsFragment:Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;

    if-eqz p1, :cond_6f

    .line 88
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->setTaplusEnable(Z)V

    .line 89
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mSettingsFragment:Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->setClipboardEnable(Z)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 50
    invoke-super {p0, p1}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance p1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;-><init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Lcom/miui/contentextension/setting/activity/MainSettingsActivity-IA;)V

    iput-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mReceiver:Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/contentextension/App;->onActivityCreated(Landroid/app/Activity;)V

    .line 54
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->prepareConfigList()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 151
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mReceiver:Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/contentextension/App;->onActivityDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 102
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "is_new_cta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsNewCta:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 96
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "is_new_cta"

    iget-boolean v1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsNewCta:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 108
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 110
    :try_start_3
    invoke-static {p0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    .line 111
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->switchCatcherConfig(Landroid/content/Context;Z)V

    if-eqz v0, :cond_37

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TEXT_CONTENT_EXTENSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.miui.contentextension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_37

    :catch_1c
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MainSettingsActivity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void
.end method

.method public showCtaDialog(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mFromClipboard:Z

    .line 159
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->tryToShowNewCtaDialog(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->mIsNewCta:Z

    return-void

    .line 163
    :cond_c
    invoke-direct {p0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->showDialog()V

    return-void
.end method
