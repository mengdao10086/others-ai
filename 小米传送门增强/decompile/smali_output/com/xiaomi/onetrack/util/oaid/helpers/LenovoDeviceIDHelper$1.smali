.class Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/e;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    return-void
.end method
