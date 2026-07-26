.class public abstract Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityDeviceCredentialManager.java"

# interfaces
.implements Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 48
    instance-of v1, v0, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/security/devicecredential/ISecurityDeviceCredentialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
