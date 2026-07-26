.class Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/networking/INetworkingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/continuity/networking/INetworkingManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.networking.INetworkingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :catchall_18
    move-exception p1

    goto :goto_46

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/networking/INetworkingManager;->addServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I

    move-result p1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_18

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_18

    goto :goto_37

    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.networking.INetworkingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1d

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/xiaomi/continuity/ServiceName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :catchall_1b
    move-exception p1

    goto :goto_52

    :cond_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    iget-object v3, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/networking/INetworkingManager;->getServiceInfo(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_1b

    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_50

    sget-object p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_1b

    goto :goto_37

    :cond_50
    const/4 p1, 0x0

    goto :goto_37

    :goto_52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getTrustedDeviceList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.networking.INetworkingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/continuity/networking/INetworkingManager;->getTrustedDeviceList()Ljava/util/List;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_2c
    move-exception v2

    goto :goto_38

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object v2, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2c

    goto :goto_25

    :goto_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I
    .registers 8

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.networking.INetworkingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :catchall_18
    move-exception p1

    goto :goto_47

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaomi/continuity/networking/INetworkingManager;->removeServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Ljava/lang/String;)I

    move-result p1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_18

    :goto_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_18

    goto :goto_38

    :goto_47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
