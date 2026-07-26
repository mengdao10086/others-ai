.class public Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

.field private static final TAG:Ljava/lang/String; = "AIConfig"

.field public static final TYPE_CLOUD:I = 0x1

.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_MIXED:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private api:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private disabled:Z

.field private filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isLLM:Z

.field private jsonSource:Ljava/lang/String;

.field private libraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;",
            ">;"
        }
    .end annotation
.end field

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIModel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private plugin:Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;

.field private type:I

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->code:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->api:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->name:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->filter:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->libraries:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->models:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->jsonSource:Ljava/lang/String;

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;->fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCode$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig$Companion;->parse(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getApi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->api:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->disabled:Z

    return v0
.end method

.method public final getFilter()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->filter:Ljava/util/List;

    return-object v0
.end method

.method public final getJsonSource()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->jsonSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->libraries:Ljava/util/List;

    return-object v0
.end method

.method public final getModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->models:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->jsonSource:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_14
    return-object v0
.end method

.method public final getParent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlugin()Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->plugin:Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->type:I

    return v0
.end method

.method public final getVersion()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->version:J

    return-wide v0
.end method

.method public final identifier()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->name:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->version:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAtom()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->plugin:Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    return v1
.end method

.method public final isFilter()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isLLM()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->isLLM:Z

    return v0
.end method

.method public final match(Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->identifier()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->identifier()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setApi(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->api:Ljava/lang/String;

    return-void
.end method

.method public final setCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->code:Ljava/lang/String;

    return-void
.end method

.method public final setDisabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->disabled:Z

    return-void
.end method

.method public final setFilter(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->filter:Ljava/util/List;

    return-void
.end method

.method public final setJsonSource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->jsonSource:Ljava/lang/String;

    return-void
.end method

.method public final setLLM(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->isLLM:Z

    return-void
.end method

.method public final setLibraries(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->libraries:Ljava/util/List;

    return-void
.end method

.method public final setModels(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/base/data/AIModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->models:Ljava/util/List;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->name:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->parent:Ljava/lang/String;

    return-void
.end method

.method public final setPlugin(Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->plugin:Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;

    return-void
.end method

.method public final setType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->type:I

    return-void
.end method

.method public final setVersion(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->version:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->api:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->version:J

    iget-boolean v4, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIConfig;->disabled:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AI("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
