.class Lcom/xiaomi/onetrack/api/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V
    .registers 5

    .line 513
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/u;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 517
    const-string v0, "OneTrackImp"

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v1

    if-nez v1, :cond_16

    .line 518
    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_14
    move-exception v1

    goto :goto_44

    .line 521
    :cond_16
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    const-string v2, "onetrack_pa"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 522
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/u;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-wide v5, p0, Lcom/xiaomi/onetrack/api/u;->b:J

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v8

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v10

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v11

    invoke-static/range {v3 .. v11}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_14

    goto :goto_5c

    .line 525
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePageEndData error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method
