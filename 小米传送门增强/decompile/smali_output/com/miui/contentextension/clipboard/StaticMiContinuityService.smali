.class public Lcom/miui/contentextension/clipboard/StaticMiContinuityService;
.super Lcom/xiaomi/continuity/ContinuityListenerService;
.source "StaticMiContinuityService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/xiaomi/continuity/ContinuityListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Intent;)V
    .registers 8

    .line 25
    invoke-super {p0, p1}, Lcom/xiaomi/continuity/ContinuityListenerService;->onNotify(Landroid/content/Intent;)V

    .line 26
    const-string v0, "StaticMiContinuityService:onNotify"

    const-string v1, "Taplus.StaticMiContinuityService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_d

    return-void

    .line 30
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 35
    :cond_18
    const-string v2, "com.xiaomi.continuity.action.SERVICE_ONLINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.xiaomi.continuity.EXTRA_SERVICE_INFO"

    const-string v4, ","

    const-string v5, "com.xiaomi.continuity.EXTRA_DEVICE_INFO"

    if-eqz v2, :cond_5c

    .line 36
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    if-eqz v0, :cond_5b

    if-nez p1, :cond_37

    goto :goto_5b

    .line 41
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceOnline:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    :cond_5b
    :goto_5b
    return-void

    .line 43
    :cond_5c
    const-string v2, "com.xiaomi.continuity.action.SERVICE_OFFLINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 44
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    .line 45
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    .line 46
    const-string v3, "com.xiaomi.continuity.EXTRA_REASON"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_a6

    if-nez v2, :cond_7c

    goto :goto_a6

    .line 50
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceOffline:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    :cond_a6
    :goto_a6
    return-void

    .line 52
    :cond_a7
    const-string v2, "com.xiaomi.continuity.action.SERVICE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 53
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    .line 54
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    if-eqz v0, :cond_e4

    if-nez p1, :cond_c0

    goto :goto_e4

    .line 58
    :cond_c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    :cond_e4
    :goto_e4
    return-void

    .line 60
    :cond_e5
    const-string v2, "com.xiaomi.continuity.action.DEVICE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 61
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;

    if-nez p1, :cond_f6

    return-void

    .line 65
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceChanged:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 66
    :cond_10f
    const-string v2, "com.xiaomi.continuity.action.REQUEST_CONNECTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 67
    const-string v0, "com.xiaomi.continuity.EXTRA_SERVICE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/ServiceName;

    if-nez p1, :cond_122

    return-void

    .line 71
    :cond_122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/continuity/ServiceName;->toMergeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/miui/contentextension/App;->isMiuiLiteRom()Z

    move-result v0

    if-nez v0, :cond_159

    invoke-virtual {p1}, Lcom/xiaomi/continuity/ServiceName;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentExtensionService"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 76
    const-class v0, Lcom/miui/contentextension/clipboard/MiContinuityService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_159
    :goto_159
    return-void
.end method
