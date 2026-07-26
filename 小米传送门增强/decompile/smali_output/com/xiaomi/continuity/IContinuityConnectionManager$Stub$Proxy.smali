.class Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/IContinuityConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/continuity/IContinuityConnectionManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public confirmChannel(II)V
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->confirmChannel(II)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p1

    goto :goto_37

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public createChannel(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I
    .registers 15

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_20

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Lcom/xiaomi/continuity/ServiceName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :catchall_1e
    move-exception p1

    goto :goto_65

    :cond_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    if-eqz p4, :cond_2c

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_2c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2f
    if-eqz p5, :cond_36

    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->createChannel(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_1e

    :goto_56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_1e

    goto :goto_56

    :goto_65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public createChannelbyAddress(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I
    .registers 15

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1d

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Lcom/xiaomi/continuity/netbus/LinkAddress;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :catchall_1b
    move-exception p1

    goto :goto_6e

    :cond_1d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    if-eqz p3, :cond_29

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Lcom/xiaomi/continuity/ServiceName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    if-eqz p4, :cond_35

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Lcom/xiaomi/continuity/channel/ClientChannelOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_38

    :cond_35
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_38
    if-eqz p5, :cond_3f

    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->createChannelbyAddress(Ljava/lang/String;Lcom/xiaomi/continuity/netbus/LinkAddress;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ClientChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_1b

    :goto_5f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_66
    :try_start_66
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_1b

    goto :goto_5f

    :goto_6e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public destroyChannel(I)V
    .registers 7

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->destroyChannel(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    :goto_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p1

    goto :goto_34

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2e

    goto :goto_27

    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getApiFeature()Ljava/lang/String;
    .registers 6

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->getApiFeature()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2d

    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_2d
    move-exception v2

    goto :goto_37

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2d

    goto :goto_26

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getChannelInfoExt(II)Landroid/os/Bundle;
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->getChannelInfoExt(II)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_33
    move-exception p1

    goto :goto_49

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_47

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_33

    goto :goto_2c

    :cond_47
    const/4 p1, 0x0

    goto :goto_2c

    :goto_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyChannelServerCreated(II)V
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->notifyChannelServerCreated(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p1

    goto :goto_38

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_32

    goto :goto_2b

    :goto_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public registerChannelListener(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I
    .registers 10

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1d

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Lcom/xiaomi/continuity/ServiceName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :catchall_1b
    move-exception p1

    goto :goto_5c

    :cond_1d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    if-eqz p3, :cond_29

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Lcom/xiaomi/continuity/channel/ServerChannelOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    if-eqz p4, :cond_33

    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->registerChannelListener(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;Lcom/xiaomi/continuity/channel/ServerChannelOptions;Lcom/xiaomi/continuity/channel/IChannelInnerListener;)I

    move-result p1
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_1b

    :goto_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_54
    :try_start_54
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_1b

    goto :goto_4d

    :goto_5c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public send(I[BLandroid/os/Bundle;Lcom/xiaomi/continuity/channel/ISendResultCallback;)I
    .registers 10

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x0

    if-eqz p3, :cond_20

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :catchall_1e
    move-exception p1

    goto :goto_54

    :cond_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    if-eqz p4, :cond_2a

    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->send(I[BLandroid/os/Bundle;Lcom/xiaomi/continuity/channel/ISendResultCallback;)I

    move-result p1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_1e

    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_1e

    goto :goto_45

    :goto_54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I
    .registers 7

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityConnectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/continuity/ServiceName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :catchall_18
    move-exception p1

    goto :goto_43

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    iget-object v3, p0, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityConnectionManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityConnectionManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaomi/continuity/IContinuityConnectionManager;->unregisterChannelListener(Lcom/xiaomi/continuity/ServiceName;)I

    move-result p1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_18

    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_18

    goto :goto_34

    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
