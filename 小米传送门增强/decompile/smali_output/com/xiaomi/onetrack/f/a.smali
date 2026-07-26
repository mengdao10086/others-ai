.class public Lcom/xiaomi/onetrack/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Landroid/content/Context; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:J = 0x0L

.field private static volatile g:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 2

    .line 89
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/j;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 91
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_d

    return-object v0

    .line 94
    :cond_d
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    .line 95
    :try_start_10
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1f

    .line 96
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/j;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    goto :goto_1f

    :catchall_1d
    move-exception v1

    goto :goto_23

    .line 98
    :cond_1f
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1d

    .line 99
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    return-object v0

    .line 98
    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1d

    throw v1

    .line 101
    :cond_25
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 25
    sget-boolean v0, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 28
    :cond_5
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    .line 29
    :try_start_8
    sget-boolean v1, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v1, :cond_10

    .line 30
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_3f

    .line 32
    :cond_10
    sput-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_e

    .line 34
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 35
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 37
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/xiaomi/onetrack/f/a;->c:I

    .line 38
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 39
    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v1, Lcom/xiaomi/onetrack/f/a;->f:J

    .line 40
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_35} :catch_36
    .catchall {:try_start_12 .. :try_end_35} :catchall_e

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 42
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3a
    const/4 p0, 0x1

    .line 44
    sput-boolean p0, Lcom/xiaomi/onetrack/f/a;->g:Z

    .line 45
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_e

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 54
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 55
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    :catch_c
    return v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 49
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static b()Landroid/content/Context;
    .registers 1

    .line 105
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 73
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 109
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 79
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    const-string p0, ""

    return-object p0
.end method

.method public static d()I
    .registers 1

    .line 113
    sget v0, Lcom/xiaomi/onetrack/f/a;->c:I

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 117
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()J
    .registers 2

    .line 121
    sget-wide v0, Lcom/xiaomi/onetrack/f/a;->f:J

    return-wide v0
.end method
