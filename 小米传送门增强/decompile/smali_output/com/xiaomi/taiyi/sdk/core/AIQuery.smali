.class public final Lcom/xiaomi/taiyi/sdk/core/AIQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/xiaomi/taiyi/sdk/core/AIQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->INSTANCE:Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAIConfig(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "AIQuery"

    const-string v3, "getAIConfig "

    if-nez v1, :cond_31

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_31
    sget-object v1, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->INSTANCE:Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    const-string v4, "getAIConfig"

    invoke-virtual {v1, p0, p1, v4}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 14
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5d
    sget-object p1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;->parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final getAIDetail(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "AIQuery"

    const-string v3, "getAIDetails "

    if-nez v1, :cond_31

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_31
    sget-object v1, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->INSTANCE:Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    const-string v4, "getAIDetail"

    invoke-virtual {v1, p0, p1, v4}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 14
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5d
    sget-object p1, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;->parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object p0

    return-object p0
.end method

.method public static final getAIDetail(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createProviderRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    if-eqz p2, :cond_19

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putAll(Landroid/os/Bundle;)V

    .line 6
    :cond_19
    invoke-static {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->getAIDetail(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAIDetail$default(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->getAIDetail(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object p0

    return-object p0
.end method

.method public static final getAIInfo(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/common/AIInfo;
    .registers 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "AIQuery"

    const-string v3, "getAIInfo "

    const/4 v4, 0x0

    if-nez v1, :cond_31

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 12
    :cond_31
    sget-object v1, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->INSTANCE:Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    const-string v5, "getAIInfo"

    invoke-virtual {v1, p0, p1, v5}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 14
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5d
    sget-object p1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;->parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    move-result-object p1

    if-nez p1, :cond_66

    return-object v4

    .line 17
    :cond_66
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;->parse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p0

    if-nez p0, :cond_6f

    return-object v4

    .line 18
    :cond_6f
    new-instance v0, Lcom/xiaomi/taiyi/sdk/common/AIInfo;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/taiyi/sdk/common/AIInfo;-><init>(Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    return-object v0
.end method

.method public static final query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 13

    const-string v0, "com.xiaomi.aiservice.authority.open"

    const-string v1, "queryByCall "

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "method"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subMethod"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/xiaomi/taiyi/sdk/common/AIVersion;->isServiceSupport(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "AIQuery"

    if-nez v3, :cond_31

    .line 3
    const-string p0, "queryByCall service not support!"

    invoke-static {v4, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p0

    const/16 p1, 0x2774

    .line 5
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    return-object p0

    :cond_31
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 9
    :try_start_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 10
    new-instance v6, Lkotlin/Pair;

    if-nez p0, :cond_42

    const/16 v7, 0x27da

    goto :goto_43

    :cond_42
    move v7, v3

    :goto_43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_4a} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_4a} :catch_4e
    .catchall {:try_start_33 .. :try_end_4a} :catchall_4c

    goto/16 :goto_eb

    :catchall_4c
    move-exception p0

    goto :goto_52

    :catch_4e
    move-exception p0

    goto :goto_7c

    :catch_50
    move-exception p0

    goto :goto_c2

    .line 22
    :goto_52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Throwable. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v6, Lkotlin/Pair;

    const/16 p0, 0x27db

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v6, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 24
    :goto_7c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " RuntimeException. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b6

    const-string v6, "Permission"

    const/4 v7, 0x2

    invoke-static {p0, v6, v3, v7, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_b6

    .line 26
    new-instance v6, Lkotlin/Pair;

    const/16 p0, 0x27e5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v6, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 28
    :cond_b6
    new-instance v6, Lkotlin/Pair;

    const/16 p0, 0x27d8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v6, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 29
    :goto_c2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " DeadObjectException. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v6, Lkotlin/Pair;

    const/16 p0, 0x27d9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v6, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :goto_eb
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentProviderClient;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez p0, :cond_107

    .line 49
    sget-object p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    return-object p0

    .line 53
    :cond_107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v5, "sub_method"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    :try_start_114
    const-string v2, ""

    invoke-virtual {p0, v0, p2, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_12c

    .line 59
    sget-object p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p2

    const/16 v0, 0x27dd

    .line 60
    invoke-virtual {p2, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    goto :goto_159

    :catchall_128
    move-exception p2

    goto :goto_15d

    :catch_12a
    move-exception p2

    goto :goto_18a

    .line 63
    :cond_12c
    const-class v0, Lcom/xiaomi/taiyi/sdk/core/AIQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_137
    .catch Landroid/os/DeadObjectException; {:try_start_114 .. :try_end_137} :catch_12a
    .catchall {:try_start_114 .. :try_end_137} :catchall_128

    const/16 v2, 0x21

    const-string v3, "response"

    if-lt v0, v2, :cond_146

    .line 65
    :try_start_13d
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    goto :goto_14c

    .line 67
    :cond_146
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    :goto_14c
    if-nez p2, :cond_159

    .line 68
    sget-object p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p2

    const/16 v0, 0x27de

    .line 69
    invoke-virtual {p2, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V
    :try_end_159
    .catch Landroid/os/DeadObjectException; {:try_start_13d .. :try_end_159} :catch_12a
    .catchall {:try_start_13d .. :try_end_159} :catchall_128

    .line 83
    :cond_159
    :goto_159
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1b7

    .line 84
    :goto_15d
    :try_start_15d
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Error. "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    const/16 p2, 0x27e0

    .line 86
    invoke-virtual {p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    :goto_186
    move-object p2, p1

    goto :goto_1b4

    :catchall_188
    move-exception p1

    goto :goto_1b8

    .line 90
    :goto_18a
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Dead. "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    const/16 p2, 0x27df

    .line 92
    invoke-virtual {p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V
    :try_end_1b3
    .catchall {:try_start_15d .. :try_end_1b3} :catchall_188

    goto :goto_186

    .line 89
    :goto_1b4
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :goto_1b7
    return-object p2

    .line 100
    :goto_1b8
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    throw p1
.end method


# virtual methods
.method public final query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subMethod"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "query"

    invoke-static {p1, p2, v0, p3}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->query(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    return-object p1
.end method
