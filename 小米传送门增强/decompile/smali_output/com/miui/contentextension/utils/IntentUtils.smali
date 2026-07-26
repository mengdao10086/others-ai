.class public Lcom/miui/contentextension/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field public static final INVALID_SCHEMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "file"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/IntentUtils;->INVALID_SCHEMES:[Ljava/lang/String;

    return-void
.end method

.method public static isIntentValid(Landroid/content/Intent;)Z
    .registers 6

    .line 35
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 36
    sget-object v0, Lcom/miui/contentextension/utils/IntentUtils;->INVALID_SCHEMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 37
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    return v2

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static startApplicationEditorActivity(Landroid/content/Context;)V
    .registers 4

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "extra_pkgname"

    const-string v2, "com.miui.contentextension"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startApplicationEditorActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taplus.IntentUtils"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;Ljava/lang/String;ZII)V
    .registers 7

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string p1, "normal"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string p1, "bitmapWidth"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string p1, "bitmapHeight"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string p1, "com.miui.contentextension"

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/high16 p1, 0x10000000

    .line 99
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_33

    :cond_2d
    const p1, 0x10008000

    .line 101
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    :goto_33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPrivacyActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "selected_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string p1, "package"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string p1, "activity_page"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPrivacyClipboardActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "update_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPrivacyUpdateActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "update_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
