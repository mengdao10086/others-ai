.class public Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "PrivacyClipboardActivity.java"


# instance fields
.field private mUpdateInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    return-void
.end method

.method private showPrivacyUpdateDialog()V
    .registers 7

    .line 40
    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;->mUpdateInfo:Ljava/lang/String;

    const v0, 0x7f100027

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity$1;

    invoke-direct {v5, p0}, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity$1;-><init>(Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;)V

    .line 40
    const-string v2, "taplus"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/contentextension/utils/Utils;->showPrivacyClipboardDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 29
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 32
    const-string v1, "update_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;->mUpdateInfo:Ljava/lang/String;

    :cond_11
    if-nez p1, :cond_16

    .line 35
    invoke-direct {p0}, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;->showPrivacyUpdateDialog()V

    :cond_16
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 71
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 72
    invoke-static {}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderScreen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    const-string v0, "Taplus.PrivacyClipboardActivity"

    const-string v1, "PrivacyClipboardActivity onDestroy finish"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_13
    return-void
.end method
