.class public Lcom/xiaomi/onetrack/util/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PermissionUtil"

.field private static final b:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    const-string v0, "ro.miui.cust_variant"

    :try_start_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 52
    const-string v2, "android"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.analytics"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.cit"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.xiaomi.finddevice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.securitycenter"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.android.settings"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.android.vending"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.google.android.gms"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.xiaomi.factory.mmi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.qr"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.android.contacts"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.qualcomm.qti.autoregistration"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.tsmclient"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.miui.sekeytool"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v2, "com.android.updater"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "cn_chinamobile"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "cn_chinatelecom"

    .line 68
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    goto :goto_8b

    :catch_89
    move-exception v0

    goto :goto_9a

    .line 69
    :cond_8b
    :goto_8b
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.mobiletools.systemhelper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    const-string v1, "com.miui.dmregservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_99} :catch_89

    goto :goto_b4

    .line 73
    :goto_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    :goto_b4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 4

    const/4 v0, 0x0

    .line 100
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 104
    :cond_8
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "1"

    const-string v2, "ro.miui.restrict_imei"

    .line 105
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1e

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :catch_1e
    move-exception v1

    goto :goto_21

    :cond_20
    :goto_20
    return v0

    .line 108
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestrictIMEI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PermissionUtil"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 79
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 81
    :cond_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/u;->a()Z

    move-result v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    if-eqz v0, :cond_29

    .line 82
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0

    .line 85
    :cond_29
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 120
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 92
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 94
    :cond_d
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
