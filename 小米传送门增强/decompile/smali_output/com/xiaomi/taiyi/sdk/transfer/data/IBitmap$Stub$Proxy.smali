.class Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub;
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
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_8
    const-string v2, "com.xiaomi.taiyi.sdk.transfer.data.IBitmap"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_26
    move-exception v2

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.data.IBitmap"

    return-object v0
.end method
