.class Lcom/xiaomi/onetrack/api/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Z)V
    .registers 3

    .line 532
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/v;->b:Lcom/xiaomi/onetrack/api/m;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 536
    const-string v0, "OneTrackImp"

    const-string v1, "B"

    :try_start_4
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->z()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 538
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "app_end"

    iget-boolean v5, p0, Lcom/xiaomi/onetrack/api/v;->a:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 540
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/v;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v4

    const-string v5, "onetrack_pa"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_3e

    .line 542
    const-string v1, "trackPageEndAuto"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :catch_3c
    move-exception v1

    goto :goto_44

    .line 544
    :cond_3e
    :goto_3e
    const-string v1, ""

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_3c

    goto :goto_5c

    .line 547
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackPageEndAuto error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method
