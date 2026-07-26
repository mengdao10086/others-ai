.class public final Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
    .registers 14

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "ai_config_json_list"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "ai_resource_json_list"

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "AIDetail"

    const-string v5, "parse "

    if-eqz v1, :cond_f5

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33

    goto/16 :goto_f5

    .line 8
    :cond_33
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v8, ""

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 212
    sget-object v10, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    invoke-virtual {v10, v9}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;->fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    move-result-object v9

    if-eqz v9, :cond_43

    .line 213
    invoke-virtual {v9}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v9}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getApi()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 215
    invoke-virtual {v9}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_43

    :cond_6d
    if-eqz v2, :cond_8f

    .line 413
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_73
    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    sget-object v9, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;

    invoke-virtual {v9, v2}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;->fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 416
    :cond_8f
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    if-nez v1, :cond_b2

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no config for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 419
    :cond_b2
    new-instance v2, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    invoke-direct {v2, p1, v8, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;)V

    .line 420
    invoke-virtual {v2, v0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setResult(Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;)V

    .line 421
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setCode(I)V

    .line 422
    invoke-virtual {v2, v6}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setConfigs(Ljava/util/HashMap;)V

    .line 423
    invoke-virtual {v2, v7}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setResources(Ljava/util/HashMap;)V

    .line 424
    const-string v1, "allow_internal"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setAllowInternal(Z)V

    .line 425
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;->parse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->setService(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 427
    :cond_f5
    :goto_f5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data empty! configs = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
