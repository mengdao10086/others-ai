.class public Lcom/xiaomi/onetrack/util/oaid/helpers/j;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "OppoDeviceIDHelper"


# instance fields
.field a:Lcom/xiaomi/onetrack/util/oaid/a/e;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/ServiceConnection;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 104
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/j;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    if-nez v1, :cond_5d

    const/4 v1, 0x0

    .line 75
    :try_start_9
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v2, 0x40

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p2

    .line 77
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p2, v1

    :goto_1b
    if-eqz p2, :cond_5b

    .line 81
    array-length v2, p2

    if-lez v2, :cond_5b

    const/4 v2, 0x0

    .line 82
    aget-object p2, p2, v2

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    .line 84
    :try_start_27
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 86
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    array-length v4, p2

    :goto_39
    if-ge v2, v4, :cond_53

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :catch_51
    move-exception p2

    goto :goto_58

    .line 91
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_57} :catch_51

    goto :goto_5b

    .line 94
    :goto_58
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :cond_5b
    :goto_5b
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    .line 100
    :cond_5d
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    check-cast p2, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .registers 8

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 125
    const-string v0, "com.heytap.openid"

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_e

    return v1

    .line 132
    :cond_e
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_18

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-gez p1, :cond_22

    return v1

    :catch_18
    move-exception p1

    .line 137
    const-string v0, "OppoDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 35
    const-string v0, "OppoDeviceIDHelper"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 38
    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 41
    const-string v2, ""

    if-eqz v1, :cond_7e

    .line 43
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_51
    .catchall {:try_start_23 .. :try_end_2f} :catchall_4f

    if-nez v1, :cond_40

    .line 58
    :try_start_31
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-object v2

    .line 47
    :cond_40
    :try_start_40
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/oaid/a/e$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    if-eqz v1, :cond_53

    .line 49
    const-string v1, "OUID"

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4e} :catch_51
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v1

    goto :goto_6f

    :catch_51
    move-exception v1

    goto :goto_62

    .line 58
    :cond_53
    :goto_53
    :try_start_53
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_7e

    :catch_59
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    .line 54
    :goto_62
    :try_start_62
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_4f

    .line 58
    :try_start_69
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_59

    goto :goto_7e

    :goto_6f
    :try_start_6f
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_75

    goto :goto_7d

    :catch_75
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_7d
    throw v1

    :cond_7e
    :goto_7e
    return-object v2
.end method
