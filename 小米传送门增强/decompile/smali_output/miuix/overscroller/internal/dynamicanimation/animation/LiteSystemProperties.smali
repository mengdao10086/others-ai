.class Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;
.super Ljava/lang/Object;
.source "LiteSystemProperties.java"


# static fields
.field private static pClassSystemProperties:Ljava/lang/Class;

.field private static pGet:Ljava/lang/reflect/Method;

.field private static pGetInt:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 19
    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    .line 23
    :goto_e
    sget-object v1, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 25
    :try_start_13
    const-string v3, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pGet:Ljava/lang/reflect/Method;

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_22

    .line 31
    :catch_22
    :try_start_22
    sget-object v1, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pClassSystemProperties:Ljava/lang/Class;

    const-string v3, "getInt"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pGetInt:Ljava/lang/reflect/Method;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 40
    sget-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->pGet:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2f

    .line 42
    :try_start_4
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LiteSystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-object p1
.end method
