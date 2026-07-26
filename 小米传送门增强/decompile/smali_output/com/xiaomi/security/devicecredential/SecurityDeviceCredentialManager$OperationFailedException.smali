.class public Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
.super Ljava/lang/Exception;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationFailedException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationFailedException{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
