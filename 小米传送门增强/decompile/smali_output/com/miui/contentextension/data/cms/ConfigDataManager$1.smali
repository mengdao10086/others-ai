.class Lcom/miui/contentextension/data/cms/ConfigDataManager$1;
.super Ljava/lang/Object;
.source "ConfigDataManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/cms/ConfigDataManager;->tryToUpdateConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/miui/contentextension/data/cms/ConfigDataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/data/cms/ConfigDataManager;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/data/cms/ConfigDataManager;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/miui/contentextension/data/cms/ConfigDataManager$1;->this$0:Lcom/miui/contentextension/data/cms/ConfigDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/miui/contentextension/data/cms/ConfigDataResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/miui/contentextension/data/cms/ConfigDataResult;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/miui/contentextension/data/cms/ConfigDataResult;",
            ">;)V"
        }
    .end annotation

    .line 61
    const-string p1, "data"

    const-string v0, "hash"

    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    goto/16 :goto_a5

    .line 65
    :cond_e
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/data/cms/ConfigDataResult;

    if-eqz p2, :cond_a5

    .line 66
    invoke-virtual {p2}, Lcom/miui/contentextension/data/cms/ConfigDataResult;->getCode()I

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_a5

    .line 71
    :cond_1e
    :try_start_1e
    invoke-virtual {p2}, Lcom/miui/contentextension/data/cms/ConfigDataResult;->getResult()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d101b17c77ff93cs"

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/CoderUtils;->base64AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 74
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 76
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 78
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setPrefFileHash(Ljava/lang/String;)V

    goto :goto_5d

    :catch_5b
    move-exception p1

    goto :goto_7e

    .line 80
    :cond_5d
    :goto_5d
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 81
    iget-object v0, p0, Lcom/miui/contentextension/data/cms/ConfigDataManager$1;->this$0:Lcom/miui/contentextension/data/cms/ConfigDataManager;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->-$$Nest$mparseCloudKVPref(Lcom/miui/contentextension/data/cms/ConfigDataManager;Lcom/google/gson/JsonObject;)V

    .line 83
    :cond_7a
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->setUpdateTime()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_7d} :catch_5b

    goto :goto_98

    .line 86
    :goto_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToUpdateConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ConfigDataManager"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_98
    :goto_98
    iget-object p1, p0, Lcom/miui/contentextension/data/cms/ConfigDataManager$1;->this$0:Lcom/miui/contentextension/data/cms/ConfigDataManager;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/miui/contentextension/data/cms/ConfigDataResult;->getUpdateIntervalMinutes()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 89
    invoke-static {p1, v0, p2}, Lcom/miui/contentextension/data/cms/ConfigDataManager;->-$$Nest$mupdateInterval(Lcom/miui/contentextension/data/cms/ConfigDataManager;Landroid/content/Context;Lcom/google/gson/JsonObject;)V

    :cond_a5
    :goto_a5
    return-void
.end method
