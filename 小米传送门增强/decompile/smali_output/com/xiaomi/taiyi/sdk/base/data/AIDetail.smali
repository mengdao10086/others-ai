.class public final Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;

.field private static final TAG:Ljava/lang/String; = "AIDetail"


# instance fields
.field private allowInternal:Z

.field private final api:Ljava/lang/String;

.field private code:I

.field private final config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

.field private configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;",
            ">;"
        }
    .end annotation
.end field

.field private isLLMInner:Ljava/lang/Boolean;

.field private final name:Ljava/lang/String;

.field private resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIResource;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

.field private service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

.field private typeInner:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;)V
    .registers 5

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->api:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->resources:Ljava/util/HashMap;

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isLLMInner:Ljava/lang/Boolean;

    return-void
.end method

.method public static final parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail$Companion;->parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final downloadSize()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 2
    :cond_7
    const-string v3, "download_size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final downloadType()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isSupport()Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 5
    :cond_d
    const-string v2, "download_type"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final fill(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V
    .registers 6

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    .line 44
    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getJsonSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 46
    :cond_2d
    const-string v1, "ai_config_json_list"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->resources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    .line 87
    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->getJsonSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 89
    :cond_58
    const-string v1, "ai_resource_json_list"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->code:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->setErrorCode(I)V

    .line 91
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->allowInternal:Z

    const-string v1, "allow_internal"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    if-eqz v0, :cond_70

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->fill(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V

    :cond_70
    return-void
.end method

.method public final findByApi(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 5

    const-string v0, "findApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->api:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    return-object p1

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    check-cast v1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    return-object v1
.end method

.method public final findByName(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 3

    const-string v0, "findName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    return-object p1

    .line 4
    :cond_10
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    return-object p1
.end method

.method public final getAllowInternal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->allowInternal:Z

    return v0
.end method

.method public final getApi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->api:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->code:I

    return v0
.end method

.method public final getConfig()Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    return-object v0
.end method

.method public final getConfigs()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getResources()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIResource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->resources:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getResult()Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    return-object v0
.end method

.method public final getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-object v0
.end method

.method public final isAvailable()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->code:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isLLM()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isLLMInner:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 4
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    .line 116
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->isLLM()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isLLMInner:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0

    .line 121
    :cond_33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isLLMInner:Ljava/lang/Boolean;

    const/4 v0, 0x0

    return v0
.end method

.method public final isSupport()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->config:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final localSize()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 2
    :cond_7
    const-string v3, "local_size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final needDownload()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->downloadType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final setAllowInternal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->allowInternal:Z

    return-void
.end method

.method public final setCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->code:I

    return-void
.end method

.method public final setConfigs(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    return-void
.end method

.method public final setResources(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->resources:Ljava/util/HashMap;

    return-void
.end method

.method public final setResult(Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    return-void
.end method

.method public final setService(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->service:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->api:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->allowInternal:Z

    iget v4, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->code:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AIDetail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalSize()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->result:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 2
    :cond_7
    const-string v3, "total_size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final type()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->typeInner:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, -0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->typeInner:Ljava/lang/Integer;

    return v0

    .line 11
    :cond_1c
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->configs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "next(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    .line 12
    invoke-virtual {v5}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getType()I

    move-result v7

    if-nez v7, :cond_44

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 14
    :cond_44
    invoke-virtual {v5}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->getType()I

    move-result v5

    if-ne v5, v6, :cond_29

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_4d
    if-ne v3, v0, :cond_50

    return v2

    :cond_50
    if-ne v4, v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v6, 0x2

    .line 24
    :goto_54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->typeInner:Ljava/lang/Integer;

    return v6
.end method
