.class Lcom/xiaomi/onetrack/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V
    .registers 4

    .line 491
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 495
    const-string v0, "onetrack_pa"

    const-string v1, "OneTrackImp"

    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v2

    if-nez v2, :cond_18

    .line 496
    const-string v0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_16
    move-exception v0

    goto :goto_53

    .line 499
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 500
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-boolean v8, p0, Lcom/xiaomi/onetrack/api/t;->b:Z

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v9

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v10

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v2

    .line 501
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_6b

    .line 503
    const-string v0, "trackPageStartAuto"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_52} :catch_16

    goto :goto_6b

    .line 506
    :goto_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto trackPageStartAuto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method
