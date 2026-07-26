.class final Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# static fields
.field private static final a:I = 0x7530


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/util/h;)V
    .registers 2

    .line 407
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    if-nez v0, :cond_23

    .line 429
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    if-nez v0, :cond_23

    .line 430
    monitor-enter p0

    const-wide/16 v0, 0x7530

    .line 431
    :try_start_e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 432
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_19

    .line 435
    monitor-exit p0

    goto :goto_23

    :catchall_17
    move-exception v0

    goto :goto_21

    .line 433
    :cond_19
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_17

    throw v0

    .line 437
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 414
    monitor-enter p0

    .line 415
    :try_start_1
    iput-object p2, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 417
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    return-void
.end method
