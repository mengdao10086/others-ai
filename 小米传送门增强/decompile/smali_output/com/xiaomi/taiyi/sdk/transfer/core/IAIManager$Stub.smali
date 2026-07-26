.class public abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authorize:I = 0x1

.field static final TRANSACTION_loadAsync:I = 0x2

.field static final TRANSACTION_loadSync:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

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
    if-eq p1, v1, :cond_4a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 41
    :cond_23
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 42
    invoke-interface {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;->loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-static {p3, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_5c

    .line 45
    :cond_36
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;

    move-result-object p2

    .line 48
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;->loadAsync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V

    goto :goto_5c

    .line 49
    :cond_4a
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 50
    invoke-interface {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;->authorize(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_5c
    return v1
.end method
