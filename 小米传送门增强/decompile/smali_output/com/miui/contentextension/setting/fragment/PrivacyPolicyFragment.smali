.class public Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;
.super Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;
    }
.end annotation


# instance fields
.field private mCheckPrivacyPermission:Landroidx/preference/Preference;

.field private mCheckPrivacyPolicy:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mRevokePrivacyPolicy:Landroidx/preference/Preference;

.field private mRevokePrivacyPolicyCategory:Landroidx/preference/Preference;

.field private mThirdPartyDesc:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountdownTimer(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/os/CountDownTimer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRevokePrivacyPolicyCategory(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroidx/preference/Preference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokePrivacyPolicyCategory:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountdownTimer(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/os/CountDownTimer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRevoke(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->handleRevoke(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNoNetDialog(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showNoNetDialog(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRevokeFailedDialog(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showRevokeFailedDialog(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;-><init>()V

    return-void
.end method

.method private handleRevoke(Ljava/lang/String;)V
    .registers 4

    .line 207
    new-instance v0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;

    invoke-direct {v0, p1, p0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;-><init>(Ljava/lang/String;Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 68
    const-string v0, "key_check_privacy_policy"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPolicy:Landroidx/preference/Preference;

    if-eqz v0, :cond_d

    .line 70
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    :cond_d
    const-string v0, "key_third_party_desc"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mThirdPartyDesc:Landroidx/preference/Preference;

    if-eqz v0, :cond_1a

    .line 75
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    :cond_1a
    const-string v0, "key_check_privacy_permission"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPermission:Landroidx/preference/Preference;

    if-eqz v0, :cond_44

    .line 80
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_44

    .line 82
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPermission:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 83
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPermission:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 84
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPermission:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 89
    :cond_44
    const-string v0, "key_revoke_privacy_policy"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokePrivacyPolicy:Landroidx/preference/Preference;

    if-eqz v0, :cond_51

    .line 91
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    :cond_51
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isDouyinPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 94
    :cond_61
    const-string v0, "key_revoke_privacy_policy_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokePrivacyPolicyCategory:Landroidx/preference/Preference;

    if-eqz v0, :cond_6f

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6f
    return-void
.end method

.method private showNoNetDialog(Landroid/content/Context;)V
    .registers 5

    .line 128
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110009

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f1001d8

    .line 129
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1001d7

    .line 130
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$1;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V

    const v2, 0x7f1001d6

    .line 131
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 145
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100214

    .line 146
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100210

    filled-new-array {p2, p2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002a

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;

    invoke-direct {p2, p0, p3}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Ljava/lang/String;)V

    const p3, 0x7f100211

    .line 149
    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;

    invoke-direct {p2, p0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V

    .line 161
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 171
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 173
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 p1, 0x0

    .line 174
    invoke-virtual {v6, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    new-instance p1, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;JJLandroid/widget/Button;)V

    .line 203
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private showRevokeFailedDialog(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_a

    .line 257
    const-string p1, "Taplus.PrivacyPolicyFragment"

    const-string v0, "revoke failed because fragment detach"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_a
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110009

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100216

    .line 261
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f100215

    .line 262
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$5;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V

    const v2, 0x7f1001d6

    .line 263
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startWebPage(Ljava/lang/String;)V
    .registers 4

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .registers 2

    .line 0
    const v0, 0x7f130006

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-super {p0, p1, p2}, Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->initPreference()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 277
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 279
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 280
    iput-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 282
    :cond_d
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_16

    .line 283
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 284
    iput-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_16
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPolicy:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_e

    const/4 p1, 0x0

    .line 104
    invoke-static {p1}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->startWebPage(Ljava/lang/String;)V

    goto :goto_58

    .line 105
    :cond_e
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mThirdPartyDesc:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1a

    .line 106
    invoke-static {v1}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->startWebPage(Ljava/lang/String;)V

    goto :goto_58

    .line 107
    :cond_1a
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mCheckPrivacyPermission:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_34

    .line 108
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/contentextension/setting/activity/PrivacyPermissionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v0, "action_bar_title"

    const-string v2, "privacy_permission"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 111
    :cond_34
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mRevokePrivacyPolicy:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_58

    .line 112
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 113
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showNoNetDialog(Landroid/content/Context;)V

    goto :goto_58

    .line 115
    :cond_46
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "taplus"

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return v1
.end method
