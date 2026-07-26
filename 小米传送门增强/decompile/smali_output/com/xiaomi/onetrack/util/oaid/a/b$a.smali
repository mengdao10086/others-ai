.class public final Lcom/xiaomi/onetrack/util/oaid/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .line 35
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 39
    :try_start_8
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_27

    :catchall_1c
    move-exception v2

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    .line 50
    :goto_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Z
    .registers 6

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 61
    :try_start_9
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    if-nez v3, :cond_25

    move v2, v4

    goto :goto_25

    .line 70
    :catchall_1f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 73
    :cond_25
    :goto_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method
