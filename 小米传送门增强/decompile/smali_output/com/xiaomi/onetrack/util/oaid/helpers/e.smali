.class public Lcom/xiaomi/onetrack/util/oaid/helpers/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 55
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/e;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 29
    const-string v1, ""

    if-eqz v0, :cond_4a

    .line 31
    :try_start_1a
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_3f
    .catchall {:try_start_1a .. :try_end_26} :catchall_3d

    if-nez v0, :cond_2e

    .line 46
    :try_start_28
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2d

    :catch_2d
    return-object v1

    .line 35
    :cond_2e
    :try_start_2e
    new-instance v2, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;

    invoke-direct {v2, v0}, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 37
    invoke-interface {v2}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_3f
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    .line 46
    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_4a

    goto :goto_4a

    :catchall_3d
    move-exception v0

    goto :goto_44

    :catch_3f
    move-exception v0

    .line 43
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    goto :goto_37

    .line 46
    :goto_44
    :try_start_44
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_49

    .line 50
    :catch_49
    throw v0

    :catch_4a
    :cond_4a
    :goto_4a
    return-object v1
.end method
