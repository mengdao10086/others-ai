.class public abstract Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorShareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorShareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mirror.IMirrorShareCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorShareCallback;
    .registers 3

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorShareCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorShareCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/mirror/IMirrorShareCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 0
    const-string v0, "com.xiaomi.mirror.IMirrorShareCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_21

    if-eq p1, v1, :cond_19

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/IMirrorShareCallback;->onStateChanged(Ljava/lang/String;)V

    return v1

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
