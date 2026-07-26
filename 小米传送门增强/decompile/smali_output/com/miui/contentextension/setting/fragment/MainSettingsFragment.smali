.class public Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;
.super Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;
    }
.end annotation


# instance fields
.field private mAboutPreference:Lmiuix/preference/TextPreference;

.field private mAppBlacklistPreference:Landroidx/preference/Preference;

.field private mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDevPreference:Landroidx/preference/Preference;

.field private mDoubleLongPressConflictDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

.field private mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

.field private mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

.field private mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

.field private mOperationModeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mOperationModePreference:Lmiuix/preference/DropDownPreference;

.field private mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

.field private mPrivacyPolicyPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableTaplusPreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperationModePreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Lmiuix/preference/DropDownPreference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetOperationMode(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setOperationMode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;-><init>()V

    return-void
.end method

.method private adjustIfShowDevPref()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_9

    goto :goto_2b

    .line 458
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 459
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 463
    :cond_19
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_dev_developer_mode_v1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 464
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private adjustIfShowImageSavePref()V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_9

    goto :goto_1d

    .line 472
    :cond_9
    invoke-static {}, Lcom/miui/contentextension/utils/SuperImageUtils;->isSupportSuperImage()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 473
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1d

    .line 475
    :cond_16
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method private changeDevPrefStatus(Z)V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_9

    goto :goto_39

    .line 513
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "key_dev_developer_mode_v1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p1, :cond_15

    return-void

    .line 518
    :cond_15
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_24

    .line 521
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_39

    .line 523
    :cond_24
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 524
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "key_dev_server_preview_v1"

    invoke-static {p1, v0, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 525
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "key_dev_server_staging_v1"

    invoke-static {p1, v0, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method private handleOperationMode(Ljava/lang/String;)V
    .registers 6

    .line 235
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isXiaoaiCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v0

    .line 236
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->isAboveOS3Version()Z

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 239
    new-instance v0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V

    new-instance v1, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showDoubleTapWithXiaoAiDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_32

    .line 252
    :cond_2f
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setOperationMode(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method private handleTaplusEnable()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isXiaoaiCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v1

    .line 205
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->isAboveOS3Version()Z

    move-result v2

    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    .line 207
    new-instance v0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$1;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V

    new-instance v1, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$2;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showDoubleTapWithXiaoAiDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_28

    :cond_24
    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    :goto_28
    return-void
.end method

.method private initImageSavePref()V
    .registers 5

    .line 434
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_5

    return-void

    .line 438
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "0"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 447
    iget-object v2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/contentextension/utils/SuperImageUtils;->getImageSaveMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initPreferences()V
    .registers 4

    .line 360
    const-string v0, "guide_image"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/setting/preference/GuidePreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    .line 361
    const-string v0, "common_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    .line 362
    const-string v0, "enable_taplus_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    .line 363
    const-string v0, "enable_clipboard_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    .line 364
    const-string v0, "operation_mode_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    .line 365
    const-string v0, "app_blacklist_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAppBlacklistPreference:Landroidx/preference/Preference;

    .line 366
    const-string v0, "privacy_policy_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    .line 367
    const-string v0, "developer_mode_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    .line 368
    const-string v0, "image_save_mode_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    .line 369
    const-string v0, "about_version_pref"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAboutPreference:Lmiuix/preference/TextPreference;

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/Utilities;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAboutPreference:Lmiuix/preference/TextPreference;

    const v2, 0x7f100242

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAboutPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->initImageSavePref()V

    .line 375
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    if-eqz v0, :cond_8d

    .line 376
    invoke-virtual {v0, p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->setOnGuidePreferenceClickListener(Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;)V

    .line 379
    :cond_8d
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getPressItems(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    if-eqz v1, :cond_af

    .line 381
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCurrentPressItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    :cond_af
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAppBlacklistPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_b6

    .line 387
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    :cond_b6
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_bd

    .line 390
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 392
    :cond_bd
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_c4

    .line 393
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 395
    :cond_c4
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceUtils;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_f3

    .line 397
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mCommonSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 398
    const-string v0, "operation_mode_pref_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_f3

    .line 400
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCurrentPressItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 405
    :cond_f3
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportClipboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 406
    const-string v0, "Taplus.MainSettingsFragment"

    const-string v1, "catcher not support, main fragment clipboard invisible"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_108
    return-void
.end method

.method private setOperationMode(Ljava/lang/String;)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCurrentPressItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->switchAnimation(Ljava/lang/String;Z)V

    return-void
.end method

.method private showDoubleTapWithXiaoAiDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 272
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDoubleLongPressConflictDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 273
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDoubleLongPressConflictDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 276
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_18

    .line 278
    const-string p1, "Taplus.MainSettingsFragment"

    const-string p2, "getActivity() is null"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_18
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110009

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100147

    .line 282
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100145

    .line 283
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100144

    .line 284
    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100146

    .line 285
    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;

    invoke-direct {p2, p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V

    .line 286
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDoubleLongPressConflictDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showOperationModeDialog()V
    .registers 9

    .line 135
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getPressItems(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 138
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 139
    iput-object v2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 141
    :cond_12
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f110009

    invoke-direct {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10024a

    .line 142
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getPressItemIndex(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;

    .line 144
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    iget-object v7, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/contentextension/setting/preference/GuidePreference;Lmiuix/preference/TextPreference;)V

    .line 143
    invoke-virtual {v1, v0, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10027e

    .line 145
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showPrivacyUpdateDialog()V
    .registers 7

    .line 303
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100022

    .line 304
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100027

    .line 306
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;

    invoke-direct {v5, p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;-><init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V

    .line 303
    const-string v2, "taplus"

    invoke-static/range {v0 .. v5}, Lcom/miui/contentextension/utils/Utils;->showPrivacyClipboardDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    return-void
.end method


# virtual methods
.method public OnGuidePreferenceClick(Z)V
    .registers 2

    .line 327
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->changeDevPrefStatus(Z)V

    return-void
.end method

.method public enablePrefConfig(Z)V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 496
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_11

    .line 498
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 500
    :cond_11
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAppBlacklistPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_1d

    .line 502
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 504
    :cond_1d
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    .line 505
    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isClipboardSettingOpen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    .line 504
    :goto_2d
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected getPreferencesResourceId()I
    .registers 2

    .line 0
    const v0, 0x7f130004

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 85
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 91
    invoke-super {p0, p1, p2}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->initPreferences()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/setting/DevModeCloseEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 336
    :cond_3
    invoke-virtual {p1}, Lcom/miui/contentextension/setting/DevModeCloseEvent;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->changeDevPrefStatus(Z)V

    :cond_d
    return-void
.end method

.method public onEventMainThread(Lcom/miui/contentextension/setting/cta/CtaEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 346
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMainThread CtaEvent agree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/cta/CtaEvent;->isAgree()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MainSettingsFragment"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1}, Lcom/miui/contentextension/setting/cta/CtaEvent;->isAgree()Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    .line 348
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    .line 350
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3f

    .line 352
    :cond_30
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    .line 355
    invoke-direct {p0, v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->changeDevPrefStatus(Z)V

    :goto_3f
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MainSettingsFragment"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_67

    .line 153
    check-cast p2, Ljava/lang/Boolean;

    .line 154
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_37

    .line 155
    invoke-virtual {p0, v3}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    .line 156
    invoke-direct {p0, v3}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->changeDevPrefStatus(Z)V

    goto :goto_5f

    .line 158
    :cond_37
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->shouldShowPrivacyPage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    if-eqz p1, :cond_5a

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    .line 161
    invoke-virtual {p1, v3}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->showCtaDialog(Z)V

    goto :goto_5a

    .line 164
    :cond_57
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->handleTaplusEnable()V

    .line 166
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/miui/contentextension/analy/Analy;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    .line 168
    :goto_5f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSettingTaplusOpen(Z)V

    goto :goto_d0

    .line 169
    :cond_67
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_b8

    .line 170
    check-cast p2, Ljava/lang/Boolean;

    .line 171
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_77

    .line 172
    invoke-virtual {p0, v3}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    goto :goto_b0

    .line 174
    :cond_77
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    if-eqz p1, :cond_b0

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    .line 177
    const-string v0, "main fragment clipboard show cta activity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1, v2}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->showCtaDialog(Z)V

    goto :goto_b0

    .line 180
    :cond_9c
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isDouyinPrivacyEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_ad

    .line 181
    const-string p1, "main fragment clipboard show cta dialog"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showPrivacyUpdateDialog()V

    goto :goto_b0

    .line 184
    :cond_ad
    invoke-virtual {p0, v2}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    .line 187
    :cond_b0
    :goto_b0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSettingClipboardOpen(Z)V

    goto :goto_d0

    .line 188
    :cond_b8
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_c2

    .line 189
    check-cast p2, Ljava/lang/String;

    .line 190
    invoke-direct {p0, p2}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->handleOperationMode(Ljava/lang/String;)V

    goto :goto_d0

    .line 191
    :cond_c2
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mImageSaveModePreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_d0

    .line 192
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/SuperImageUtils;->setImageSaveMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSettingImageSaveMode(Ljava/lang/String;)V

    :cond_d0
    :goto_d0
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MainSettingsFragment"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAppBlacklistPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2c

    .line 111
    invoke-static {}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackEnterWhitelist()V

    .line 112
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7a

    .line 113
    :cond_2c
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    const-string v2, "action_bar_title"

    if-ne p1, v0, :cond_50

    .line 114
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/contentextension/setting/activity/PrivacyPolicyActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v0, "privacy_policy"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4f
    return v1

    .line 120
    :cond_50
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mDevPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_63

    .line 121
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/contentextension/setting/activity/DevModeActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v0, "dev_mode"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7a

    .line 123
    :cond_63
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mOperationModePreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_6b

    .line 124
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showOperationModeDialog()V

    goto :goto_79

    .line 125
    :cond_6b
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mAboutPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_79

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 p1, 0x0

    :goto_7a
    if-eqz p1, :cond_7f

    .line 129
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_7f
    return v1
.end method

.method public onResume()V
    .registers 3

    .line 413
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 414
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 415
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->enablePrefConfig(Z)V

    .line 419
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableTaplusPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 421
    :cond_1a
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2e

    .line 422
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isClipboardSettingOpen(Landroid/content/Context;)Z

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 426
    :cond_2e
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->adjustIfShowDevPref()V

    .line 427
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->adjustIfShowImageSavePref()V

    .line 428
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mGuidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    if-eqz v0, :cond_3b

    .line 429
    invoke-virtual {v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->initCopyAnimation()V

    :cond_3b
    return-void
.end method

.method public setClipboardEnable(Z)V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 488
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 489
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mEnableClipboardPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 490
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mPrivacyPolicyPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    .line 491
    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x1

    .line 490
    :goto_21
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setTaplusEnable(Z)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 482
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->enablePrefConfig(Z)V

    return-void
.end method
