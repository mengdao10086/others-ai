.class public Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    :try_start_9
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2f

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    const/4 v2, 0x1

    goto :goto_2f

    :catchall_25
    move-exception v3

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    :goto_2f
    return v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 6

    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 57
    :try_start_8
    const-string v2, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 60
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_23

    .line 63
    :catchall_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v2, 0x0

    .line 67
    :goto_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method public c()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 6

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    :try_start_8
    const-string v2, "com.bun.lib.MsaIdInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_1e

    .line 87
    :catchall_18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 90
    :goto_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
