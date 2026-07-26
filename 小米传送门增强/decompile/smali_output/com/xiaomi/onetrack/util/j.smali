.class public Lcom/xiaomi/onetrack/util/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "FbeUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 17
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FbeUtil"

    if-eqz v0, :cond_e

    .line 18
    const-string v0, "getSafeContext return origin ctx"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 21
    :cond_e
    const-string v0, "getSafeContext , create the safe ctx"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/preference/PreferenceManager;)V
    .registers 1

    .line 43
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    return-void
.end method

.method public static a()Z
    .registers 4

    .line 28
    const-string v0, "isFileEncryptedNativeOrEmulated"

    :try_start_2
    const-class v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    return v0

    :catch_26
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FbeUtil"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 50
    :try_start_1
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 51
    invoke-static {}, Lcom/xiaomi/onetrack/util/j;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :catch_19
    move-exception p0

    goto :goto_1c

    :cond_1b
    :goto_1b
    return v0

    .line 53
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FBEDeviceAndSetedUpScreenLock Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FbeUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .line 63
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 80
    :try_start_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_15

    .line 81
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :catch_13
    move-exception p0

    goto :goto_16

    :cond_15
    :goto_15
    return v0

    .line 83
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserUnlocked Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FbeUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
