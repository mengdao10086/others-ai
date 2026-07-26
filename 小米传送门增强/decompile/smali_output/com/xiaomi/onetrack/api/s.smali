.class Lcom/xiaomi/onetrack/api/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 476
    const-string v0, "onetrack_dau"

    :try_start_2
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->t()J

    move-result-wide v1

    .line 477
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/aa;->m(J)V

    .line 479
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_5a

    :catch_3f
    move-exception v0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackDau error  e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method
