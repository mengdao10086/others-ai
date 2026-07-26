.class Lcom/xiaomi/onetrack/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;ZLjava/util/Map;)V
    .registers 4

    .line 362
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/q;->a:Z

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/q;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 366
    const-string v0, "ot_logout"

    :try_start_2
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/q;->a:Z

    if-nez v1, :cond_55

    .line 367
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 368
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 369
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v4, "uid"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v1, "uid_type"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2a

    :catch_28
    move-exception v0

    goto :goto_5c

    .line 374
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 375
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v4

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v5

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/h;->d(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/q;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_55
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->v()V

    .line 379
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->x()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_28

    goto :goto_76

    .line 381
    :goto_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logout error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return-void
.end method
