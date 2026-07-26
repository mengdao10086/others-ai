.class public Lcom/xiaomi/onetrack/util/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "IdentifierManager"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 14
    const-class v0, Landroid/content/Context;

    .line 21
    :try_start_2
    const-string v1, "com.android.id.impl.IdProviderImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    const-string v2, "getUDID"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/n;->d:Ljava/lang/reflect/Method;

    .line 24
    sget-object v1, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    const-string v2, "getOAID"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    .line 25
    sget-object v1, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    const-string v2, "getVAID"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/n;->f:Ljava/lang/reflect/Method;

    .line 26
    sget-object v1, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    const-string v2, "getAAID"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/n;->g:Ljava/lang/reflect/Method;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception v0

    .line 28
    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
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

    .line 48
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->d:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1d

    .line 82
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 84
    :try_start_8
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 86
    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception p0

    .line 89
    const-string p1, "IdentifierManager"

    const-string v0, "oaid invoke exception!"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_1d
    const-string p0, ""

    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->c:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 58
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 68
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 78
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->g:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/n;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
