.class public Lcom/miui/contentextension/text/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# direct methods
.method public static synthetic $r8$lambda$HMItuOSHya2YWFoQrQDz1cMFEv8(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/text/PackageChangeReceiver;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleCatcherAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 34
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Taplus.UpdateWhitelistReceiver"

    if-eqz v1, :cond_29

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "catcher action is empty, action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver catcher action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 42
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateBlacklistAndProvider()V

    goto :goto_5c

    .line 43
    :cond_4d
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 44
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->onPackageRemoved(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 5

    .line 21
    const-string v0, "fromCatcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    const-string v1, "Taplus.UpdateWhitelistReceiver"

    if-eqz v0, :cond_13

    .line 23
    const-string v0, "catcher action"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1, p0}, Lcom/miui/contentextension/text/PackageChangeReceiver;->handleCatcherAction(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_13
    if-eqz p2, :cond_1d

    .line 27
    const-string p0, "result finish "

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_19

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_19

    .line 19
    :cond_9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1, v0}, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method
