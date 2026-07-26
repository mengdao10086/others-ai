.class Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/IContinuityServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/IContinuityServiceManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/continuity/IContinuityServiceManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.continuity.IContinuityServiceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityServiceManager;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub;->getDefaultImpl()Lcom/xiaomi/continuity/IContinuityServiceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaomi/continuity/IContinuityServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_2f
    move-exception p1

    goto :goto_39

    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    goto :goto_28

    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
