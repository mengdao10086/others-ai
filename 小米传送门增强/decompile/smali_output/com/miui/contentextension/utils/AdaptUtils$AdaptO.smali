.class public Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;
.super Ljava/lang/Object;
.source "AdaptUtils.java"


# direct methods
.method private static isForeground(Landroid/content/Context;)Z
    .registers 6

    .line 71
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 74
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 75
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method public static startForeground(Landroid/app/Service;)V
    .registers 7

    .line 39
    const-string v0, "startForeground"

    const-string v1, "Taplus.AdaptO"

    const-string v2, "Taplus"

    if-nez p0, :cond_9

    return-void

    .line 42
    :cond_9
    :try_start_9
    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 44
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 45
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 47
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-string v2, "taplus"

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 49
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x64

    .line 52
    invoke-virtual {p0, v3, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 54
    invoke-static {v1, v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method

.method private static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p0, :cond_1e

    if-nez p1, :cond_5

    goto :goto_1e

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start foreground service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.AdaptO"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p0, :cond_28

    if-nez p1, :cond_5

    goto :goto_28

    .line 30
    :cond_5
    invoke-static {p0}, Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;->isForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start servcie(isForeground): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.AdaptO"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_28

    .line 34
    :cond_25
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_28
    :goto_28
    return-void
.end method
