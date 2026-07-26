.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
.super Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders$CREATOR;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>()V

    .line 4
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->Companion:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;->get(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getAppCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setAppCode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setAppSignature(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setProductCode(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->getMY_UID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setUid(I)V

    .line 9
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->getMY_PID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setPid(I)V

    .line 10
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->getMY_PROCESS_NAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<get-MY_PROCESS_NAME>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setProcessName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getAppPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setPackageName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getAppVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setAppVersionCode(J)V

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->getAppVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setAppVersionName(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setSdkCode(I)V

    .line 15
    const-string p1, "1.0.0-42da72f-250917-SNAPSHOT04"

    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setSdkName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final enableLocalAffinity()V
    .registers 3

    .line 1
    const-string v0, "run_affinity"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final getAbilityApi()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_api"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getAbilityName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getAbilityVersion()J
    .registers 4

    .line 1
    const-string v0, "ai_version"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getApiLevel()I
    .registers 3

    .line 1
    const-string v0, "ai_api_level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getAppCode()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_app_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getAppSignature()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_app_signature"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getAppVersionCode()J
    .registers 4

    .line 1
    const-string v0, "app_version_code"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "app_version_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_client_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getFormatTime()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "format_time"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_method"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "package_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getPid()I
    .registers 3

    .line 1
    const-string v0, "pid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getProcessName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "process_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getProductCode()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_product_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "request_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getSdkCode()I
    .registers 3

    .line 1
    const-string v0, "ai_sdk_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSdkName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ai_sdk_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method public final getSysBootMills()J
    .registers 4

    .line 1
    const-string v0, "sys_boot_mills"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSysBootNanos()J
    .registers 4

    .line 1
    const-string v0, "sys_boot_nanos"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTid()J
    .registers 4

    .line 1
    const-string v0, "tid"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestamp()J
    .registers 4

    .line 1
    const-string v0, "timestamp"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUid()I
    .registers 3

    .line 1
    const-string v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final isLocalAffinity()Z
    .registers 4

    .line 1
    const-string v0, "run_affinity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public final setAbilityApi(Ljava/lang/String;)V
    .registers 3

    const-string v0, "abilityApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_api"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAbilityName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "abilityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_name"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAbilityVersion(J)V
    .registers 4

    .line 1
    const-string v0, "ai_version"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setApiLevel(I)V
    .registers 3

    .line 1
    const-string v0, "ai_api_level"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setAppCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_app_code"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppSignature(Ljava/lang/String;)V
    .registers 3

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_app_signature"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppVersionCode(J)V
    .registers 4

    .line 1
    const-string v0, "app_version_code"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setAppVersionName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "appVersionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "app_version_name"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setClientId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_client_id"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setFormatTime(Ljava/lang/String;)V
    .registers 3

    const-string v0, "formatTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "format_time"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .registers 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_method"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "package_name"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPid(I)V
    .registers 3

    .line 1
    const-string v0, "pid"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setProcessName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "processName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "process_name"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setProductCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_product_code"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestId$base_release(Ljava/lang/String;)V
    .registers 3

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "request_id"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSdkCode(I)V
    .registers 3

    .line 1
    const-string v0, "ai_sdk_code"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setSdkName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "sdkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ai_sdk_name"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSysBootMills(J)V
    .registers 4

    .line 1
    const-string v0, "sys_boot_mills"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setSysBootNanos(J)V
    .registers 4

    .line 1
    const-string v0, "sys_boot_nanos"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setTid(J)V
    .registers 4

    .line 1
    const-string v0, "tid"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setTime()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->timestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setTimestamp(J)V

    .line 2
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->bootMills()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setSysBootMills(J)V

    .line 3
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->formatTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatTime(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setFormatTime(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTimestamp(J)V
    .registers 4

    .line 1
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setUid(I)V
    .registers 3

    .line 1
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putInt(Ljava/lang/String;I)V

    return-void
.end method
