.class public final Lcom/xiaomi/taiyi/api/ner/NerAbility;
.super Lcom/xiaomi/taiyi/sdk/core/AIAbility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/api/ner/NerAbility$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/api/ner/NerAbility$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/api/ner/NerAbility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/api/ner/NerAbility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/api/ner/NerAbility;->Companion:Lcom/xiaomi/taiyi/api/ner/NerAbility$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ner"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apiLevel()I
    .registers 2

    .line 0
    const/16 v0, 0x64

    return v0
.end method

.method public final getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/taiyi/api/ner/NerResult;
    .registers 8

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_1d

    .line 2
    const-string p1, "NerAbility"

    const-string v0, "getExactNerResult text empty!"

    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/xiaomi/taiyi/api/ner/NerResult;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/api/ner/NerResult;-><init>()V

    .line 4
    invoke-virtual {p1, v1}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setStatusCode(I)V

    return-object p1

    .line 7
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->createRequest()Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v2

    const-string v3, "getExactNerResult"

    invoke-virtual {v2, v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setMethod(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->setJsonSource(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->execute(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/xiaomi/taiyi/api/ner/NerResult;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/api/ner/NerResult;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v2

    const-string v3, "exactType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setExactType(I)V

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v2

    const-string v3, "exactClass"

    const-string v5, "UNKNOWN"

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_57

    goto :goto_58

    :cond_57
    move-object v5, v2

    :goto_58
    invoke-virtual {v0, v5}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setExactClass(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result v2

    const/16 v3, 0x2968

    if-ne v2, v3, :cond_66

    const/16 v1, 0x65

    goto :goto_7c

    .line 16
    :cond_66
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getSpecCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_72

    goto :goto_7c

    .line 19
    :cond_72
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 20
    :goto_7c
    invoke-virtual {v0, v1}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setStatusCode(I)V

    .line 27
    const-string v1, "1.0.0-824ce58-250812-SNAPSHOT"

    invoke-virtual {v0, v1}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setSdkVersion(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object p1

    const-string v1, "serviceVersion"

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/api/ner/NerResult;->setServiceVersion(I)V

    return-object v0
.end method
