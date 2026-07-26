.class public interface abstract Laidl/com/miui/mediafeature/superimage/ISuperImageService;
.super Ljava/lang/Object;
.source "ISuperImageService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laidl/com/miui/mediafeature/superimage/ISuperImageService$_Parcel;,
        Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub;
    }
.end annotation


# virtual methods
.method public abstract superProcessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
