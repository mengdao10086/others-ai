.class Lcom/xiaomi/onetrack/api/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 5

    .line 194
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ag;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/ag;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 198
    const-string v0, "OneTrackImp"

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventAppId is null,Please configure,event name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_29
    move-exception v1

    goto :goto_75

    .line 203
    :cond_2b
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    return-void

    .line 207
    :cond_36
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->b:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 208
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    .line 209
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 210
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v8

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v10

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ag;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_74} :catch_29

    goto :goto_8d

    .line 213
    :goto_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track map error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    return-void
.end method
