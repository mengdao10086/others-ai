.class public Lcom/miui/contentextension/clipboard/MiContinuityService;
.super Landroid/app/Service;
.source "MiContinuityService.java"

# interfaces
.implements Lcom/xiaomi/continuity/channel/ChannelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;

.field private mChannelManager:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;


# direct methods
.method public static synthetic $r8$lambda$R9WlcEGyOAZK30EedkmsWfTXiMo(Lcom/miui/contentextension/clipboard/MiContinuityService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/clipboard/MiContinuityService;->lambda$onCreate$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;-><init>(Lcom/miui/contentextension/clipboard/MiContinuityService;)V

    iput-object v0, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mBinder:Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 5

    .line 53
    new-instance v0, Lcom/xiaomi/continuity/ServiceName$Builder;

    invoke-direct {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;-><init>()V

    const-string v1, "ContentExtensionService"

    .line 54
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;->build()Lcom/xiaomi/continuity/ServiceName;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/xiaomi/continuity/channel/ServerChannelOptions;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/xiaomi/continuity/channel/ServerChannelOptions;-><init>(I)V

    .line 58
    invoke-static {p0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mChannelManager:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    if-nez v2, :cond_27

    return-void

    .line 62
    :cond_27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->registerChannelListener(Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MiContinuityService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;)I
    .registers 12

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MiContinuityService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mChannelManager:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    if-nez v2, :cond_2a

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Service;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->createChannel(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/ChannelListener;Ljava/util/concurrent/Executor;)I

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 72
    iget-object p1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mBinder:Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;

    return-object p1
.end method

.method public onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V
    .registers 6

    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChannelConfirm:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.MiContinuityService"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mChannelManager:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    if-eqz p1, :cond_2c

    const/4 p2, 0x0

    .line 103
    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->confirmChannel(II)I

    :cond_2c
    return-void
.end method

.method public onChannelCreateFailed(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;II)V
    .registers 5

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChannelCreateFailed:errorCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.MiContinuityService"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChannelCreateSuccess(Lcom/xiaomi/continuity/channel/Channel;)V
    .registers 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChannelCreateSuccess:channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MiContinuityService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 110
    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelRole()I

    move-result v1

    if-ne v0, v1, :cond_3f

    .line 111
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 113
    const-string p1, "Taplus.ContentExtension"

    const-string v0, "sendBroadcastByMiuiPlus: content is empty"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_33
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/clipboard/MiContinuityService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/contentextension/clipboard/MiContinuityService$1;-><init>(Lcom/miui/contentextension/clipboard/MiContinuityService;Ljava/lang/String;Lcom/xiaomi/continuity/channel/Channel;)V

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    :cond_3f
    return-void
.end method

.method public onChannelReceive(Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;)V
    .registers 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChannelReceive:packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-interface {p2}, Lcom/xiaomi/continuity/channel/Packet;->asBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.MiContinuityService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Lcom/xiaomi/continuity/channel/Channel;->getChannelRole()I

    move-result p1

    if-ne v0, p1, :cond_46

    .line 136
    new-instance p1, Ljava/lang/String;

    invoke-interface {p2}, Lcom/xiaomi/continuity/channel/Packet;->asBytes()[B

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 137
    const-class p2, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;

    invoke-static {p1, p2}, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->parseJsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;

    if-eqz p1, :cond_46

    .line 139
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->getNerType()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->getClipboardData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/miui/contentextension/clipboard/MiuiPlusReceiver;->doAction(Landroid/content/Context;ILjava/lang/String;)V

    :cond_46
    return-void
.end method

.method public onChannelRelease(Lcom/xiaomi/continuity/channel/Channel;I)V
    .registers 4

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChannelRelease: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.MiContinuityService"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChannelTransferProgressUpdate(Lcom/xiaomi/continuity/channel/Channel;Lcom/xiaomi/continuity/channel/Packet;Lcom/xiaomi/continuity/channel/PacketTransferProgress;)V
    .registers 4

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChannelTransferProgressUpdate:progress: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.MiContinuityService"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    const-string v0, "Taplus.MiContinuityService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/clipboard/MiContinuityService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/clipboard/MiContinuityService$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/clipboard/MiContinuityService;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    .line 65
    sget-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->INSTANCE:Lcom/miui/contentextension/utils/MiLinkUtil;

    invoke-virtual {v0, p0}, Lcom/miui/contentextension/utils/MiLinkUtil;->checkMiLinOpenAndOpration(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    const-string v0, "Taplus.MiContinuityService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/xiaomi/continuity/ServiceName$Builder;

    invoke-direct {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;-><init>()V

    const-string v1, "ContentExtensionService"

    .line 80
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;->build()Lcom/xiaomi/continuity/ServiceName;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService;->mChannelManager:Lcom/xiaomi/continuity/channel/ContinuityChannelManager;

    if-eqz v1, :cond_28

    .line 84
    invoke-virtual {v1, v0}, Lcom/xiaomi/continuity/channel/ContinuityChannelManager;->unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I

    :cond_28
    return-void
.end method
