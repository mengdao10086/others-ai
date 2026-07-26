.class public Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;
.super Ljava/lang/Object;
.source "CtaAndPrivacyUpdateUtil.java"


# direct methods
.method private static getContext()Landroid/content/Context;
    .registers 1

    .line 112
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalPermission()[Ljava/lang/String;
    .registers 1

    .line 104
    const-string v0, "android.permission-group.STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalPermissionDesc()[Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuntimePermission()[Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getRuntimePermissionDesc()[Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isCtaOpen(Landroid/content/Context;)Z
    .registers 3

    .line 120
    const-string v0, "key_new_cta_open"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDouyinPrivacyEnable(Landroid/content/Context;)Z
    .registers 3

    .line 157
    const-string v0, "key_douyin_privacy_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDouyinPrivacyEnable result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.CtaUtil"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isQSearchCtaEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 136
    const-string v0, "key_new_qsearch_cta_open"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isTaplusCtaEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 141
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isDouyinPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isQSearchCtaEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static setAgreeNewPrivacy(Landroid/content/Context;)V
    .registers 3

    .line 124
    const-string v0, "key_agree_new_privacy"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCtaOpen(Landroid/content/Context;Z)V
    .registers 3

    .line 116
    const-string v0, "key_new_cta_open"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDouyinPrivacyEnable(Landroid/content/Context;Z)V
    .registers 3

    .line 153
    const-string v0, "key_douyin_privacy_enable"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static shouldShowPrivacyPage(Landroid/content/Context;)Z
    .registers 2

    .line 149
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->showCtaIfNeed(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static showCtaIfNeed(Landroid/content/Context;)Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static tryToShowNewCtaDialog(Landroid/app/Activity;)Z
    .registers 7

    .line 59
    const-string v0, "Taplus.CtaUtil"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v2, "miui.intent.action.SYSTEM_PERMISSION_DECLARE_NEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_purpose"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "runtime_perm"

    invoke-static {}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->getRuntimePermission()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "runtime_perm_desc"

    invoke-static {}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->getRuntimePermissionDesc()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "optional_perm"

    invoke-static {}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->getOptionalPermission()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "optional_perm_desc"

    invoke-static {}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->getOptionalPermissionDesc()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "agree_desc"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "user_agreement"

    invoke-static {}, Lcom/miui/contentextension/utils/Utils;->getUserAgreement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 68
    invoke-static {v2}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "privacy_policy"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v3, "use_network"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v3, "show_locked"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :try_start_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryToShowNewCtaDialog "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c0

    const/16 v3, 0x6f

    .line 76
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_a7

    return v4

    :catch_a7
    move-exception p0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToShowNewCtaDialog:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    return v2
.end method
