.class public abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getId:I = 0x1

.field static final TRANSACTION_getInfo:I = 0x2

.field static final TRANSACTION_getMemory:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 35
    :cond_23
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;->getMemory()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_43

    .line 38
    :cond_2e
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;->getInfo()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-static {p3, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_43

    .line 41
    :cond_39
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;->getId()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_43
    return v1
.end method
