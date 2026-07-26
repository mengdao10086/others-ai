.class public abstract Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "SettingsBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    return-void
.end method

.method private setActionBarTitle()V
    .registers 3

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 72
    const-string v1, "action_bar_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "dev_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const v0, 0x7f100283

    goto :goto_33

    .line 75
    :cond_18
    const-string v1, "privacy_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const v0, 0x7f10020f

    goto :goto_33

    .line 77
    :cond_24
    const-string v1, "privacy_permission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x7f10005a

    goto :goto_33

    :cond_30
    const v0, 0x7f100284

    .line 81
    :goto_33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method


# virtual methods
.method protected abstract getFragment()Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.end method

.method protected isSplitModeEnabled()Z
    .registers 2

    .line 65
    invoke-static {p0}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isSplitModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_11

    invoke-static {}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isFolderScreen()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 43
    :cond_11
    invoke-direct {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->setActionBarTitle()V

    .line 44
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "J18 adapter title -- is big Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->isSplitModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-is split screen\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SettingsBaseActivity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->isSplitModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 50
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 54
    :cond_53
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->getFragment()Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    .line 57
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
