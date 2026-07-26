.class public Lcom/miui/contentextension/setting/fragment/PrivacyPermissionFragment;
.super Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.source "PrivacyPermissionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mChangeStoragePermission:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .registers 2

    .line 0
    const v0, 0x7f130005

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-super {p0, p1, p2}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 22
    const-string p1, "key_change_storage_permission"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPermissionFragment;->mChangeStoragePermission:Landroidx/preference/Preference;

    if-eqz p1, :cond_10

    .line 24
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_10
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPermissionFragment;->mChangeStoragePermission:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_b

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/IntentUtils;->startApplicationEditorActivity(Landroid/content/Context;)V

    :cond_b
    const/4 p1, 0x1

    return p1
.end method
