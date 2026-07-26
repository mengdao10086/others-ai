.class Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;
.super Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnGetSecurityDeviceIdFinishListener"
.end annotation


# instance fields
.field private mSecurityDeviceId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V
    .registers 2

    .line 226
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSecurityDeviceId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->waitForResult()V

    .line 251
    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->checkResultCode()V

    .line 252
    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->mSecurityDeviceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onForceReloadFinished()V
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong callback!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetSecurityDeviceIdFinished(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->mSecurityDeviceId:Ljava/lang/String;

    return-void
.end method

.method public onSignFinished([B)V
    .registers 3

    .line 239
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wrong callback!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
