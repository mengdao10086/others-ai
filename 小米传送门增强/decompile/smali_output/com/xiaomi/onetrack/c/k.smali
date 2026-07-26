.class final Lcom/xiaomi/onetrack/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/j;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 235
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 238
    const-string v2, "eventName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/j;

    invoke-interface {v3, v2, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_2e
    move-exception v0

    goto :goto_35

    :cond_30
    const/4 v0, 0x1

    .line 243
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->c(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_2e

    goto :goto_4f

    .line 245
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cta event error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkAccessManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    const/4 v0, 0x0

    .line 247
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->d(Z)Z

    return-void
.end method
