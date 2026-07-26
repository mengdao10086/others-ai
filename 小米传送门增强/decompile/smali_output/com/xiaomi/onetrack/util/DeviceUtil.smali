.class public Lcom/xiaomi/onetrack/util/DeviceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
    }
.end annotation


# static fields
.field static final a:I = 0xf

.field static final b:I = 0x6

.field private static final c:Ljava/lang/String; = "DeviceUtil"

.field private static final d:Ljava/lang/String; = ""

.field private static final e:I = 0xf

.field private static f:Ljava/lang/reflect/Method; = null

.field private static g:Ljava/lang/reflect/Method; = null

.field private static h:Ljava/lang/Object; = null

.field private static i:Ljava/lang/reflect/Method; = null

.field private static j:Ljava/lang/reflect/Method; = null

.field private static volatile k:Ljava/lang/String; = null

.field private static volatile l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/String; = null

.field private static o:Ljava/lang/String; = null

.field private static volatile p:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 40
    const-string v0, "DeviceUtil"

    .line 49
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 50
    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    goto :goto_30

    :catchall_17
    move-exception v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sGetProp init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_30
    :try_start_30
    const-string v1, "miui.telephony.TelephonyManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    .line 57
    const-string v2, "getImeiList"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->g:Ljava/lang/reflect/Method;

    .line 58
    const-string v2, "getSubscriberIdForSlot"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5a

    goto :goto_73

    :catchall_5a
    move-exception v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyManagerEx init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_73
    :try_start_73
    const-string v1, "android.telephony.TelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    const-string v2, "getImei"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;
    :try_end_87
    .catchall {:try_start_73 .. :try_end_87} :catchall_88

    goto :goto_a1

    :catchall_88
    move-exception v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sGetImeiForSlot init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 73
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 74
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    return-object p0

    .line 77
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g(Landroid/content/Context;)Ljava/util/List;

    .line 78
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 79
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    return-object p0

    .line 81
    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 308
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2d

    .line 309
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp failed ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeviceUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-object v0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x0

    .line 136
    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 336
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 500
    const-string v0, "getSubscriberId"

    const-string v1, "getSubId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 506
    :try_start_7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, p3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 507
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v5

    .line 509
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_70

    sget-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_70

    sget-object v7, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    if-eqz v7, :cond_70

    .line 510
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v7, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v5

    .line 511
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v6

    goto :goto_b7

    :catch_6e
    move-exception p0

    goto :goto_a1

    .line 517
    :cond_70
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 518
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v6
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a0} :catch_6e

    goto :goto_b7

    .line 522
    :goto_a1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImsiFromLToP: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceUtil"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b7
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 568
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 85
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    .line 88
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 90
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    .line 93
    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_14

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 529
    const-string v0, "DeviceUtil"

    const-string v1, "getSubscriberId"

    const-string v2, "getSubscriptionIds"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 531
    :try_start_a
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_54

    .line 533
    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3e} :catch_3f

    goto :goto_54

    :catch_3f
    move-exception v5

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get imsi1 above Android Q exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_54
    :goto_54
    :try_start_54
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, p3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_9f

    .line 542
    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v2
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_89} :catch_8a

    goto :goto_9f

    :catch_8a
    move-exception p0

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get imsi2 above Android Q exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-object v3
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 572
    const-string v0, "ro.product.marketname"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 97
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 98
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/String;

    return-object p0

    .line 100
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g(Landroid/content/Context;)Ljava/util/List;

    .line 101
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 102
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/String;

    return-object p0

    .line 104
    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_1b

    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1b

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 576
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 108
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 109
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    .line 111
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 113
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 120
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 121
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/String;

    return-object p0

    .line 124
    :cond_b
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_14

    return-object v1

    .line 127
    :cond_14
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 129
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/String;

    return-object p0

    :cond_21
    return-object v1
.end method

.method public static e()V
    .registers 1

    .line 584
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/oaid/a;->b()V

    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_34

    .line 142
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x0

    .line 143
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 144
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_34
    return-object v0
.end method

.method public static f()Z
    .registers 1

    .line 588
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/oaid/a;->c()Z

    move-result v0

    return v0
.end method

.method private static g()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->i()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 185
    :try_start_b
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->g:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3f

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3f

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/util/List;)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_24

    if-nez v2, :cond_3f

    return-object v0

    :catch_24
    move-exception v0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiListFromMiui failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceUtil"

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-object v1
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 158
    sget-boolean v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Z

    if-eqz v0, :cond_d

    return-object v2

    .line 162
    :cond_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move-object v2, v0

    goto :goto_21

    .line 165
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    move-object v2, p0

    .line 170
    :goto_21
    sput-boolean v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Z

    :cond_23
    if-eqz v2, :cond_46

    .line 172
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_46

    .line 173
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 174
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_46

    .line 176
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/String;

    :cond_46
    return-object v2
.end method

.method public static h(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    const-string v0, "DeviceUtil"

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :try_start_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->h()Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_98
    .catchall {:try_start_d .. :try_end_11} :catchall_44

    const-string v3, "phone"

    if-eqz v2, :cond_6b

    .line 256
    :try_start_15
    const-string v2, "android.telephony.TelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 258
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 259
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 260
    const-string v5, "telephony_subscription_service"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 261
    const-string v5, "android.telephony.SubscriptionManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x1d

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v4, v6, :cond_46

    .line 263
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    .line 264
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v7

    goto :goto_52

    :catchall_44
    move-exception p0

    goto :goto_7f

    .line 266
    :cond_46
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    .line 267
    invoke-static {v2, v5, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v7

    .line 273
    :goto_52
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v2
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_56} :catch_98
    .catchall {:try_start_15 .. :try_end_56} :catchall_44

    const-string v3, ""

    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v4, v3

    :goto_5c
    :try_start_5c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    goto :goto_67

    :cond_66
    move-object p0, v3

    :goto_67
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 277
    :cond_6b
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 278
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_7e} :catch_98
    .catchall {:try_start_5c .. :try_end_7e} :catchall_44

    :cond_7e
    return-object v1

    .line 284
    :goto_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsiList failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 282
    :catch_98
    const-string p0, "getImsiList failed with on permission"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h()Z
    .registers 3

    .line 292
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 295
    :cond_10
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 296
    const-string v2, "lcsh92_wet_jb9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013022"

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2013023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "armani"

    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2014011"

    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "HM2014012"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 553
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/4 v0, 0x0

    .line 555
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 556
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catchall_1d
    move-exception p0

    goto :goto_24

    .line 558
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_1d

    return-object p0

    .line 561
    :goto_24
    const-string v0, "DeviceUtil"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getImeiListMd5 failed!"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_2f
    const-string p0, ""

    return-object p0
.end method

.method private static i()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 580
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_69

    .line 199
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 201
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :catch_2c
    move-exception p0

    goto :goto_4f

    .line 205
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->h()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 206
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 208
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4e} :catch_2c

    :cond_4e
    return-object v0

    .line 213
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImeiListAboveLollipop failed ex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceUtil"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    const/4 p0, 0x0

    return-object p0
.end method

.method private static l(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 222
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const-string v1, "android.telephony.TelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 224
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->h()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2c

    const-string v3, "getDefault"

    if-nez v2, :cond_2f

    .line 225
    :try_start_14
    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 226
    invoke-virtual {v1, p0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_2c
    move-exception v0

    goto :goto_7a

    :cond_2e
    :goto_2e
    return-object v0

    .line 232
    :cond_2f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 234
    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 237
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_70
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_14 .. :try_end_79} :catchall_2c

    :cond_79
    return-object v0

    .line 245
    :goto_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImeiListBelowLollipop failed ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtil"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
