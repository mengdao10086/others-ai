.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string v0, "miui.intent.action.MIRROR_DEVICE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_df

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$400(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_df

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_df

    :cond_1f
    const-string v0, "device_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "device_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_manufacturer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->enableHistoryListener()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onUpdate(Ljava/lang/String;)V

    goto :goto_3c

    :cond_54
    return-void

    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MIRROR_DEVICE_CHANGED received. state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiSynergy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_be

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7c

    goto :goto_df

    :cond_7c
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->getListenManufacturer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    goto :goto_80

    :cond_99
    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onLost(Ljava/lang/String;)V

    goto :goto_80

    :cond_9d
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->getListenManufacturer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ba

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    goto :goto_a1

    :cond_ba
    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onUpdate(Ljava/lang/String;)V

    goto :goto_a1

    :cond_be
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->getListenManufacturer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_db

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    goto :goto_c2

    :cond_db
    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onFound(Ljava/lang/String;)V

    goto :goto_c2

    :cond_df
    :goto_df
    return-void
.end method
