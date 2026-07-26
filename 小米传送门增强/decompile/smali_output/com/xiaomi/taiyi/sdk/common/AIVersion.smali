.class public final Lcom/xiaomi/taiyi/sdk/common/AIVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaomi/taiyi/sdk/common/AIVersion;

.field public static final META_KEY_AI_SDK_CODE:Ljava/lang/String; = "ai_sdk_code"

.field public static final META_KEY_AI_SDK_NAME:Ljava/lang/String; = "ai_sdk_name"

.field public static final SDK_INT:I = 0x64

.field public static final SDK_NAME:Ljava/lang/String; = "1.0.0-42da72f-250917-SNAPSHOT04"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/common/AIVersion;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/common/AIVersion;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/common/AIVersion;->INSTANCE:Lcom/xiaomi/taiyi/sdk/common/AIVersion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final SERVICE_SDK_INT(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.xiaomi.aiservice"

    const-string v1, "ai_sdk_code"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2
    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public static final SERVICE_SDK_NAME(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.xiaomi.aiservice"

    const-string v1, "ai_sdk_name"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->getAppMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, ""

    :cond_11
    return-object p0
.end method

.method public static final isServiceSupport(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/xiaomi/taiyi/sdk/common/AIVersion;->SERVICE_SDK_INT(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
