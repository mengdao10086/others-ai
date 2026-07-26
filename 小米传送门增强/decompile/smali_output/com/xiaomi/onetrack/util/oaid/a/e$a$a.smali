.class public Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 30
    :try_start_8
    const-string v2, "com.heytap.openid.IOpenID"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_2d
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_38

    :catchall_2b
    move-exception p1

    goto :goto_39

    :catch_2d
    move-exception p1

    .line 39
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x0

    :goto_38
    return-object p1

    .line 42
    :goto_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
