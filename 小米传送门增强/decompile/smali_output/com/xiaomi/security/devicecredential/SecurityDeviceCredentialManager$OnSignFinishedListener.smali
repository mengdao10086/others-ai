.class Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;
.super Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSignFinishedListener"
.end annotation


# instance fields
.field private mSignResult:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 256
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V
    .registers 2

    .line 256
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->getSignResult()[B

    move-result-object p0

    return-object p0
.end method

.method private getSignResult()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->waitForResult()V

    .line 279
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->checkResultCode()V

    .line 280
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->mSignResult:[B

    return-object v0
.end method


# virtual methods
.method public onForceReloadFinished()V
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong callback!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetSecurityDeviceIdFinished(Ljava/lang/String;)V
    .registers 3

    .line 263
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wrong callback!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSignFinished([B)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->mSignResult:[B

    return-void
.end method
