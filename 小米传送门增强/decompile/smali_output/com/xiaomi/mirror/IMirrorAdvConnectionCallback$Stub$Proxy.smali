.class Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;
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

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "com.xiaomi.mirror.IMirrorAdvConnectionCallback"

    return-object v0
.end method

.method public onLost()V
    .registers 5

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.xiaomi.mirror.IMirrorAdvConnectionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
