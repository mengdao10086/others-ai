.class public abstract Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub;
.super Landroid/os/Binder;
.source "ISuperImageService.java"

# interfaces
.implements Laidl/com/miui/mediafeature/superimage/ISuperImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidl/com/miui/mediafeature/superimage/ISuperImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Laidl/com/miui/mediafeature/superimage/ISuperImageService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    const-string v0, "aidl.com.miui.mediafeature.superimage.ISuperImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 42
    instance-of v1, v0, Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    return-object v0

    .line 45
    :cond_13
    new-instance v0, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;

    invoke-direct {v0, p0}, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
