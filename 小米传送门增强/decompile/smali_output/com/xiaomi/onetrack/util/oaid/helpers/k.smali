.class public Lcom/xiaomi/onetrack/util/oaid/helpers/k;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "SamsungDeviceIDHelper"


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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/k;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 26
    const-string v0, "SamsungDeviceIDHelper"

    .line 27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 28
    const-string v2, "com.samsung.android.deviceidservice"

    const-string v3, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 30
    const-string v2, ""

    if-eqz v1, :cond_6d

    .line 32
    :try_start_19
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_50
    .catchall {:try_start_19 .. :try_end_25} :catchall_4e

    if-nez v1, :cond_36

    .line 43
    :try_start_27
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-object v2

    .line 36
    :cond_36
    :try_start_36
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/a/f$a;

    invoke-direct {v3, v1}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;-><init>(Landroid/os/IBinder;)V

    .line 37
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_50
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4e

    .line 43
    :try_start_3f
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_6d

    :catch_45
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :catchall_4e
    move-exception v1

    goto :goto_5e

    :catch_50
    move-exception v1

    .line 40
    :try_start_51
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    .line 43
    :try_start_58
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_45

    goto :goto_6d

    :goto_5e
    :try_start_5e
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_6c
    throw v1

    :cond_6d
    :goto_6d
    return-object v2
.end method
