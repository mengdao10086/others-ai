.class public Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.super Ljava/lang/Object;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;,
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;,
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    }
.end annotation


# static fields
.field private static sService:Landroid/os/IBinder;


# direct methods
.method public static getSecurityDeviceId()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V

    .line 77
    :goto_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 80
    :try_start_12
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 82
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_42

    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 90
    :try_start_28
    # invokes: Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->getSecurityDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->access$100(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_28 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v2

    .line 92
    iget v3, v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_41

    .line 97
    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "getSecurityDeviceId: Hardware service not ready, retry..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_a

    .line 93
    :cond_41
    throw v2

    :catchall_42
    move-exception v0

    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 87
    throw v0
.end method

.method private static declared-synchronized getService()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    const-class v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;

    monitor-enter v0

    .line 201
    :try_start_3
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-eqz v1, :cond_17

    .line 202
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService != null. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    goto :goto_1f

    :catchall_15
    move-exception v1

    goto :goto_4b

    .line 205
    :cond_17
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService == null. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1f
    if-nez v1, :cond_40

    .line 209
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder not alive. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_28
    const-string v1, "miui.sedc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-eqz v1, :cond_33

    goto :goto_47

    .line 214
    :cond_33
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: NULL binder, retry..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_28

    .line 219
    :cond_40
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder alive. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_47
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_15

    monitor-exit v0

    return-object v1

    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_15

    throw v1
.end method

.method public static isThisDeviceSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 57
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 59
    :try_start_c
    const-string v3, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 60
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 61
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 62
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_27

    if-eqz v0, :cond_20

    move v3, v4

    .line 64
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_27
    move-exception v0

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 66
    throw v0
.end method

.method public static sign(I[BZ)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V

    .line 110
    :goto_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 113
    :try_start_12
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x3

    .line 118
    invoke-interface {v0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_4b

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 126
    :try_start_31
    # invokes: Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->getSignResult()[B
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->access$300(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;)[B

    move-result-object p0
    :try_end_35
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_31 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception v2

    .line 128
    iget v3, v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_4a

    .line 133
    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "sign: Hardware service not ready, retry..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 134
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_a

    .line 129
    :cond_4a
    throw v2

    :catchall_4b
    move-exception p0

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw p0
.end method
