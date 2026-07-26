.class public final Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final localService(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v2, "com.xiaomi.taiyi.local.ability"

    const-string v3, "com.xiaomi.taiyi.LOCAL_ABILITY"

    const-string v4, "localAbility"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {v1, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->setPack(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    return-object v0
.end method

.method public final parse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v0

    .line 2
    const-string v1, "service_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move-object v1, v2

    .line 3
    :cond_14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    return-object v4

    .line 6
    :cond_1c
    const-string v3, "service_name"

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    move-object v3, v2

    .line 7
    :cond_25
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2c

    return-object v4

    .line 10
    :cond_2c
    const-string v5, "service_action"

    invoke-virtual {v0, v5, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_35

    move-object v5, v2

    .line 11
    :cond_35
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3c

    return-object v4

    .line 14
    :cond_3c
    const-string v6, "service_package"

    invoke-virtual {v0, v6, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    move-object v2, v0

    .line 15
    :goto_46
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16
    :cond_54
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5b

    return-object v4

    .line 19
    :cond_5b
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->setPack(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    return-object v0
.end method
