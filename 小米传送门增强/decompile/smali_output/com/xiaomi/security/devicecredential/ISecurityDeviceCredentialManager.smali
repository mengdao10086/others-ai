.class public interface abstract Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;
.super Ljava/lang/Object;
.source "ISecurityDeviceCredentialManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSecurityDeviceId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isThisDeviceSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sign(I[BZ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
