.class Lcom/xiaomi/onetrack/api/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V
    .registers 6

    .line 305
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/al;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/al;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    iput-boolean p4, p0, Lcom/xiaomi/onetrack/api/al;->c:Z

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 309
    const-string v0, "ot_login"

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->g(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->h(Ljava/lang/String;)V

    .line 311
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/al;->c:Z

    if-eqz v1, :cond_15

    return-void

    .line 314
    :cond_15
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->d:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 315
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 316
    const-string v1, "uid"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/al;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "uid_type"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/al;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_39

    :catch_37
    move-exception v0

    goto :goto_65

    .line 319
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 320
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v4

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v5

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/h;->c(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/al;->e:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_37

    goto :goto_7f

    .line 323
    :goto_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    return-void
.end method
