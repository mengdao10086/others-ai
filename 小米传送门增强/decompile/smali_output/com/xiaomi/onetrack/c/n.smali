.class Lcom/xiaomi/onetrack/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/c/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;)V
    .registers 3

    .line 180
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/n;->b:Lcom/xiaomi/onetrack/c/l;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 187
    const-string v2, "eventName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Lcom/xiaomi/onetrack/api/ar;->a()Lcom/xiaomi/onetrack/api/ar;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lcom/xiaomi/onetrack/api/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_34
    move-exception v0

    goto :goto_3e

    .line 192
    :cond_36
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/n;->b:Lcom/xiaomi/onetrack/c/l;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/l;->a(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_34

    goto :goto_58

    .line 194
    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackSystemImpCache event error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemImpCacheManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    return-void
.end method
