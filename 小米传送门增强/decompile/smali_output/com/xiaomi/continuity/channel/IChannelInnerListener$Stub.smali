.class public abstract Lcom/xiaomi/continuity/channel/IChannelInnerListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/channel/IChannelInnerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/channel/IChannelInnerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.continuity.channel.IChannelInnerListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    .line 0
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.continuity.channel.IChannelInnerListener"

    if-eq p1, v0, :cond_ea

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ee

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_27

    sget-object p4, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/xiaomi/continuity/ServiceName;

    :cond_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onRequestSocketPort(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;I)V

    :goto_2e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_44

    sget-object p1, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/continuity/ServiceName;

    :cond_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onServerRegisterStatus(Lcom/xiaomi/continuity/ServiceName;I)V

    goto :goto_2e

    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onReceived(I[BI)V

    goto :goto_2e

    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onChannelRelease(II)V

    goto :goto_2e

    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_84

    sget-object p4, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/xiaomi/continuity/ServiceName;

    :cond_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v0, p4, p2}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onChannelCreateFailed(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;II)V

    goto :goto_2e

    :pswitch_90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a6

    sget-object p4, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/continuity/ServiceName;

    goto :goto_a7

    :cond_a6
    move-object p4, v0

    :goto_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b6

    sget-object v0, Lcom/xiaomi/continuity/channel/ChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/continuity/channel/ChannelInfo;

    :cond_b6
    invoke-interface {p0, p1, p4, v0}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onChannelCreated(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ChannelInfo;)V

    goto/16 :goto_2e

    :pswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d1

    sget-object p4, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/continuity/ServiceName;

    goto :goto_d2

    :cond_d1
    move-object p4, v0

    :goto_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e5

    sget-object v0, Lcom/xiaomi/continuity/channel/ConfirmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/continuity/channel/ConfirmInfo;

    :cond_e5
    invoke-interface {p0, p1, p4, v2, v0}, Lcom/xiaomi/continuity/channel/IChannelInnerListener;->onChannelConfirm(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;ILcom/xiaomi/continuity/channel/ConfirmInfo;)V

    goto/16 :goto_2e

    :cond_ea
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_90
        :pswitch_6e
        :pswitch_5f
        :pswitch_4c
        :pswitch_32
        :pswitch_11
    .end packed-switch
.end method
