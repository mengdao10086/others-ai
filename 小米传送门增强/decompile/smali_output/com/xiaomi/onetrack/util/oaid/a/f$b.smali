.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/f$b;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/f;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 66
    :cond_4
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 70
    :cond_d
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/f$a;

    invoke-direct {v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
