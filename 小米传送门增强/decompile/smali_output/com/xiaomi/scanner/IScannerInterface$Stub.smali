.class public abstract Lcom/xiaomi/scanner/IScannerInterface$Stub;
.super Landroid/os/Binder;
.source "IScannerInterface.java"

# interfaces
.implements Lcom/xiaomi/scanner/IScannerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/IScannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.xiaomi.scanner.IScannerInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.xiaomi.scanner.IScannerInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_24

    if-eq p1, v1, :cond_19

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_19
    invoke-interface {p0}, Lcom/xiaomi/scanner/IScannerInterface;->detectImage()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-static {p3, p1, v1}, Lcom/xiaomi/scanner/IScannerInterface$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return v1

    .line 57
    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
