.class public final Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    # getter for: Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->initialized:Z
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->access$getInitialized$cp()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    # getter for: Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->access$getInstance$cp()Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    move-result-object p1

    return-object p1

    .line 4
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    # getter for: Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->access$getInstance$cp()Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setAppPackage(Ljava/lang/String;)V

    .line 8
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_2f

    move-object v2, v3

    :cond_2f
    invoke-virtual {v1, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setAppVersionName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setAppVersionCode(J)V

    .line 10
    const-string v0, "ai_app_code"

    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    move-object v0, v3

    :cond_42
    invoke-virtual {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setAppCode(Ljava/lang/String;)V

    .line 11
    const-string v0, "ai_product_code"

    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v3, v0

    :goto_4f
    invoke-virtual {v1, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setProductCode(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->setAppSignature(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->access$setInitialized$cp(Z)V

    .line 15
    # getter for: Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->access$getInstance$cp()Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    move-result-object p1

    return-object p1
.end method
