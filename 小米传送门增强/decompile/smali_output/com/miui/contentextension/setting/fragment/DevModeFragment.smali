.class public Lcom/miui/contentextension/setting/fragment/DevModeFragment;
.super Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.source "DevModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeveloperModePref:Landroidx/preference/CheckBoxPreference;

.field private mOcrUseServerPref:Landroidx/preference/CheckBoxPreference;

.field private mServerPreviewPref:Landroidx/preference/CheckBoxPreference;

.field private mServerStagingPref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .registers 4

    .line 46
    const-string v0, "ocr_use_server_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mOcrUseServerPref:Landroidx/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_ocr_use_server"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mOcrUseServerPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mOcrUseServerPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v0, "developer_mode_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mDeveloperModePref:Landroidx/preference/CheckBoxPreference;

    .line 51
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_dev_developer_mode_v1"

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mDeveloperModePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 56
    const-string v0, "server_preview_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerPreviewPref:Landroidx/preference/CheckBoxPreference;

    .line 57
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_dev_server_preview_v1"

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerPreviewPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    const-string v0, "server_staging_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerStagingPref:Landroidx/preference/CheckBoxPreference;

    .line 63
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_dev_server_staging_v1"

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerStagingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .registers 2

    .line 0
    const v0, 0x7f130003

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-super {p0, p1, p2}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->initPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 72
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mDeveloperModePref:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    const-string v2, "key_ocr_use_server"

    if-ne p1, v0, :cond_2f

    if-nez p2, :cond_50

    .line 74
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, v2, p2}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/contentextension/setting/DevModeCloseEvent;

    invoke-direct {p2, v1}, Lcom/miui/contentextension/setting/DevModeCloseEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_50

    .line 80
    :cond_2f
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerPreviewPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3b

    .line 81
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v0, "key_dev_server_preview_v1"

    invoke-static {p1, v0, p2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_50

    .line 82
    :cond_3b
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mServerStagingPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_47

    .line 83
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    const-string v0, "key_dev_server_staging_v1"

    invoke-static {p1, v0, p2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_50

    .line 84
    :cond_47
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mOcrUseServerPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_50

    .line 85
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/DevModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p2}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_50
    :goto_50
    return v1
.end method
