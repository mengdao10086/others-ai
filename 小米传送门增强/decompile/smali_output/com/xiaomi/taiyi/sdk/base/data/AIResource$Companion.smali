.class public final Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
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
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/data/AIResource;
    .registers 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion$fromJson$1;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource$Companion$fromJson$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->setJsonSource(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/data/AIResource;->access$setJsonObject$p(Lcom/xiaomi/taiyi/sdk/base/data/AIResource;Lorg/json/JSONObject;)V

    return-object v0

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public final identifier(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
