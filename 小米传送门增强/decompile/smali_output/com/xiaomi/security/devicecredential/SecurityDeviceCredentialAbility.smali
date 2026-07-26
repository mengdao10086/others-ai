.class public Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;
.super Ljava/lang/Object;
.source "SecurityDeviceCredentialAbility.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_INTENTS:[Landroid/content/Intent;


# instance fields
.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Landroid/content/Intent;

    sput-object v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->BIND_SERVICE_INTENTS:[Landroid/content/Intent;

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.account.action.BIND_SECURITY_DEVICE_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v2, "com.xiaomi.account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.finddevice.action.BIND_SECURITY_DEVICE_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v2, "com.xiaomi.finddevice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 27
    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getService()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 181
    :cond_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 183
    sget-object v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->BIND_SERVICE_INTENTS:[Landroid/content/Intent;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_43

    aget-object v4, v0, v3

    .line 184
    iget-object v5, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 185
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v1, "SecurityDeviceCredentialAbility"

    if-eqz v0, :cond_33

    .line 191
    const-string v0, "bind service and get"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    return-object v0

    .line 186
    :cond_33
    const-string v0, "wait bind service timeout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    const/16 v1, -0x6e

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v0

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 196
    :cond_43
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$1;)V

    throw v0
.end method

.method private rethrowException(Landroid/os/RemoteException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lcom/xiaomi/security/devicecredential/ErrorCodeRemoteException;->parse(Landroid/os/RemoteException;)Lcom/xiaomi/security/devicecredential/ErrorCodeRemoteException;

    move-result-object p1

    .line 141
    iget-object v0, p1, Lcom/xiaomi/security/devicecredential/ErrorCodeRemoteException;->errorCode:Ljava/lang/Integer;

    if-nez v0, :cond_b

    .line 142
    iget-object p1, p1, Lcom/xiaomi/security/devicecredential/ErrorCodeRemoteException;->remoteException:Landroid/os/RemoteException;

    throw p1

    .line 144
    :cond_b
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    iget-object p1, p1, Lcom/xiaomi/security/devicecredential/ErrorCodeRemoteException;->errorCode:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public getSecurityDeviceId()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->getService()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException; {:try_start_0 .. :try_end_8} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 63
    invoke-direct {p0, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->rethrowException(Landroid/os/RemoteException;)V

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :catch_15
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThisDeviceSupported()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->getService()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->isThisDeviceSupported()Z

    move-result v0
    :try_end_8
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException; {:try_start_0 .. :try_end_8} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    .line 46
    invoke-direct {p0, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->rethrowException(Landroid/os/RemoteException;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :catch_15
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->isThisDeviceSupported()Z

    move-result v0

    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    .line 166
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 153
    invoke-static {p2}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    .line 154
    iget-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mService:Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    .line 160
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    return-void
.end method

.method public release()V
    .registers 2

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public sign(I[BZ)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->getService()Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object p1
    :try_end_8
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility$BindServiceNotSupportException; {:try_start_0 .. :try_end_8} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 80
    invoke-direct {p0, p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->rethrowException(Landroid/os/RemoteException;)V

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should never happen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :catch_15
    invoke-static {p1, p2, p3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public signWithDeviceCredential([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->sign(I[BZ)[B

    move-result-object p1

    return-object p1
.end method
