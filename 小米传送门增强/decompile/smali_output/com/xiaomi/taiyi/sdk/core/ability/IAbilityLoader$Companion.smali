.class public final Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;->a:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final localLoader(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "IAbilityLoader"

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 3
    const-string p1, "localLoader classloader is null"

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 7
    :cond_16
    :try_start_16
    const-string v3, "com.xiaomi.taiyi.plugin.local.LocalAbilityLoader"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 8
    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v3, "getConstructor(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    move-exception p1

    goto :goto_41

    :cond_40
    return-object v2

    .line 12
    :goto_41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localLoader exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
