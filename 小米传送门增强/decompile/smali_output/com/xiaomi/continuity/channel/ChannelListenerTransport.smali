.class Lcom/xiaomi/continuity/channel/ChannelListenerTransport;
.super Lcom/xiaomi/continuity/channel/IChannelInnerListener$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/ContinuityServiceListener;


# instance fields
.field private final mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

.field private final mTrustLevel:I


# direct methods
.method public constructor <init>(ILcom/xiaomi/continuity/channel/ChannelInnerListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/IChannelInnerListener$Stub;-><init>()V

    const-string v0, "invalid null lListener"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mTrustLevel:I

    iput-object p2, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    const/16 v1, 0x1f6

    invoke-interface {v0, v1}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onException(I)V

    return-void
.end method

.method public onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V

    return-void
.end method

.method public onChannelCreateFailed(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;II)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onChannelCreateFailed(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;II)V

    return-void
.end method

.method public onChannelCreated(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ChannelInfo;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onChannelCreated(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ChannelInfo;)V

    invoke-virtual {p3}, Lcom/xiaomi/continuity/channel/ChannelInfo;->WipeTransKey()V

    return-void
.end method

.method public onChannelRelease(II)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onChannelRelease(II)V

    return-void
.end method

.method public onReceived(I[BI)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onReceived(I[BI)V

    return-void
.end method

.method public onRequestSocketPort(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onRequestSocketPort(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;I)V

    return-void
.end method

.method public onServerRegisterStatus(Lcom/xiaomi/continuity/ServiceName;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ChannelListenerTransport;->mChannelInnerListener:Lcom/xiaomi/continuity/channel/ChannelInnerListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/channel/ChannelInnerListener;->onServerRegisterStatus(Lcom/xiaomi/continuity/ServiceName;I)V

    return-void
.end method

.method public registerBinderDeathListener(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V
    .registers 2

    .line 0
    invoke-virtual {p1, p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method

.method public unregisterBinderDeathListener(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V
    .registers 2

    .line 0
    invoke-virtual {p1, p0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->removeServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    return-void
.end method
