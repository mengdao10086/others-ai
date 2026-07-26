.class Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GAIDClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;,
        Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GAIDClient"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 353
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "GAIDClient"

    if-nez v0, :cond_10

    .line 354
    const-string p0, "Google play service is not available"

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 358
    :cond_10
    new-instance v0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;-><init>(Lcom/xiaomi/onetrack/util/h;)V

    .line 360
    :try_start_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 362
    invoke-virtual {p0, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 363
    new-instance v3, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;-><init>(Landroid/os/IBinder;)V

    .line 364
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_3c
    .catchall {:try_start_16 .. :try_end_36} :catchall_3a

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_3a
    move-exception v1

    goto :goto_49

    :catch_3c
    move-exception v3

    goto :goto_42

    :cond_3e
    :goto_3e
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_48

    .line 367
    :goto_42
    :try_start_42
    const-string v4, "Query Google ADID failed "

    invoke-static {v2, v4, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3a

    goto :goto_3e

    :goto_48
    return-object v1

    .line 369
    :goto_49
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    throw v1
.end method

.method static b(Landroid/content/Context;)Z
    .registers 7

    .line 375
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GAIDClient"

    if-nez v0, :cond_f

    .line 376
    const-string p0, "Google play service is not available"

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 380
    :cond_f
    new-instance v0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;-><init>(Lcom/xiaomi/onetrack/util/h;)V

    .line 382
    :try_start_15
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 384
    invoke-virtual {p0, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 385
    new-instance v3, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->a()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;-><init>(Landroid/os/IBinder;)V

    .line 386
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a(Z)Z

    move-result v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_3b
    .catchall {:try_start_15 .. :try_end_35} :catchall_39

    .line 391
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return v1

    :catchall_39
    move-exception v1

    goto :goto_48

    :catch_3b
    move-exception v3

    goto :goto_41

    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_47

    .line 389
    :goto_41
    :try_start_41
    const-string v4, "Query Google isLimitAdTrackingEnabled failed "

    invoke-static {v2, v4, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_39

    goto :goto_3d

    :goto_47
    return v1

    .line 391
    :goto_48
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 392
    throw v1
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    .line 398
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 399
    const-string v0, "com.android.vending"

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method
