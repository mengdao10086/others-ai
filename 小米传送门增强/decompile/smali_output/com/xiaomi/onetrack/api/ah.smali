.class Lcom/xiaomi/onetrack/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ah;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 227
    const-string v0, "OneTrackImp"

    const-string v1, "B"

    const-string v2, "H"

    :try_start_6
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ah;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 228
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_98

    .line 229
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 230
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_78

    .line 234
    :cond_27
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 235
    new-instance v14, Lcom/xiaomi/onetrack/api/i;

    invoke-direct {v14, v6}, Lcom/xiaomi/onetrack/api/i;-><init>(Lorg/json/JSONObject;)V

    .line 236
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/api/m;->c(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_7d

    .line 240
    :cond_3d
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 241
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 242
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v9

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v10

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v12

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v13

    move-object v7, v14

    invoke-static/range {v7 .. v13}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/i;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v5

    .line 244
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ah;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v6}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v6

    invoke-virtual {v14}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :catch_76
    move-exception v1

    goto :goto_80

    .line 231
    :cond_78
    :goto_78
    const-string v5, "h5 json is empty or has no \"H\" or \"B\" "

    invoke-static {v0, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7d} :catch_76

    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 247
    :goto_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackEventFromH5 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    return-void
.end method
