.class Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public authorize(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_8
    const-string v2, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, p1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_29
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    return-object v0
.end method

.method public loadAsync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    :try_start_4
    const-string v1, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p1

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p1
.end method

.method public loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_8
    const-string v2, "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, p1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_29
    move-exception p1

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    throw p1
.end method
