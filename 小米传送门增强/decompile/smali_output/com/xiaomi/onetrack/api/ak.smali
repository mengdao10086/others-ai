.class Lcom/xiaomi/onetrack/api/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 285
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ak;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 289
    const-string v0, "ot_profile_set"

    const-string v1, "OneTrackImp"

    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 290
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ak;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_12
    move-exception v0

    goto :goto_4d

    .line 293
    :cond_14
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 294
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ak;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ak;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 295
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v4

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v5

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v7

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/onetrack/api/h;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ak;->c:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_12

    goto :goto_65

    .line 298
    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserProfile single error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return-void
.end method
