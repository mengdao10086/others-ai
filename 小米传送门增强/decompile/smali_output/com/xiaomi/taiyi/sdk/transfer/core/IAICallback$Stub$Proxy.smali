.class Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;
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
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAICallback"

    return-object v0
.end method

.method public onResponse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    :try_start_4
    const-string v1, "com.xiaomi.taiyi.sdk.transfer.core.IAICallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p1

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10
    throw p1
.end method
