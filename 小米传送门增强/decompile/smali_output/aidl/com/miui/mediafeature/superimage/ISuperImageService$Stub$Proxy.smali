.class Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISuperImageService.java"

# interfaces
.implements Laidl/com/miui/mediafeature/superimage/ISuperImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 99
    iget-object v0, p0, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public superProcessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    :try_start_8
    const-string v2, "aidl.com.miui.mediafeature.superimage.ISuperImageService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 129
    invoke-static {v0, p1, v2}, Laidl/com/miui/mediafeature/superimage/ISuperImageService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 130
    iget-object p1, p0, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p1}, Laidl/com/miui/mediafeature/superimage/ISuperImageService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_29
    move-exception p1

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw p1
.end method
