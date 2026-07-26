.class public Lcom/xiaomi/onetrack/util/oaid/helpers/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "ASUSDeviceIDHelper"


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

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 55
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/ASUSDeviceIDHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/ASUSDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/a;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 28
    const-string v0, "ASUSDeviceIDHelper"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 29
    const-string v2, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.asus.msa.SupplementaryDID"

    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 34
    const-string v2, ""

    if-eqz v1, :cond_77

    .line 36
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_5a
    .catchall {:try_start_23 .. :try_end_2f} :catchall_58

    if-nez v1, :cond_40

    .line 46
    :try_start_31
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-object v2

    .line 40
    :cond_40
    :try_start_40
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/a/a$a;

    invoke-direct {v3, v1}, Lcom/xiaomi/onetrack/util/oaid/a/a$a;-><init>(Landroid/os/IBinder;)V

    .line 41
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/oaid/a/a$a;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_5a
    .catchall {:try_start_40 .. :try_end_49} :catchall_58

    .line 46
    :try_start_49
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_77

    :catch_4f
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :catchall_58
    move-exception v1

    goto :goto_68

    :catch_5a
    move-exception v1

    .line 43
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 46
    :try_start_62
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_4f

    goto :goto_77

    :goto_68
    :try_start_68
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_76
    throw v1

    :cond_77
    :goto_77
    return-object v2
.end method
