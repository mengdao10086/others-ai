.class public abstract Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.super Landroid/os/Binder;
.source "OnRemoteCallFinishedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private notifyResultArrive()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method protected checkResultCode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 37
    iget v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mResultCode:I

    if-nez v0, :cond_5

    return-void

    .line 41
    :cond_5
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    iget v1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mResultCode:I

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v0
.end method

.method protected abstract onForceReloadFinished()V
.end method

.method public final onForceReloadFinished(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mResultCode:I

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onForceReloadFinished()V

    .line 118
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->notifyResultArrive()V

    return-void
.end method

.method public final onGetSecurityDeviceIdFinished(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mResultCode:I

    .line 103
    invoke-virtual {p0, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onGetSecurityDeviceIdFinished(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->notifyResultArrive()V

    return-void
.end method

.method protected abstract onGetSecurityDeviceIdFinished(Ljava/lang/String;)V
.end method

.method public final onSignFinished(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mResultCode:I

    .line 110
    invoke-virtual {p0, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onSignFinished([B)V

    .line 111
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->notifyResultArrive()V

    return-void
.end method

.method protected abstract onSignFinished([B)V
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "com.xiaomi.security.devicecredential.ionremotecallfinishedlistener.v0"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_33

    const/4 v2, 0x2

    if-eq p1, v2, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 78
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onForceReloadFinished(I)V

    return v1

    .line 86
    :cond_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onSignFinished(I[B)V

    return v1

    .line 69
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->onGetSecurityDeviceIdFinished(ILjava/lang/String;)V

    return v1
.end method

.method protected waitForResult()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v1, 0x493e0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 30
    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "remotecall timeout."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
