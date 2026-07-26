.class final Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 454
    const-string v0, ""

    return-object v0

    .line 456
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 460
    :try_start_f
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_29

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_29
    move-exception v2

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v2
.end method

.method public a(Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 475
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 479
    :try_start_e
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 482
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2e

    if-eqz p1, :cond_27

    move v1, v3

    .line 485
    :cond_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_2e
    move-exception p1

    .line 485
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
