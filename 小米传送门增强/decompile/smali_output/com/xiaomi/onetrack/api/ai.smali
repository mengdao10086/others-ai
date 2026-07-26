.class Lcom/xiaomi/onetrack/api/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 254
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ai;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/ai;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/onetrack/api/ai;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/onetrack/api/ai;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 258
    const-string v0, "onetrack_bug_report"

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 259
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ai;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ai;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ai;->e:Ljava/lang/String;

    iget-wide v7, p0, Lcom/xiaomi/onetrack/api/ai;->f:J

    iget-object v9, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    .line 260
    invoke-static {v9}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v10}, Lcom/xiaomi/onetrack/api/m;->d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v10

    iget-object v12, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v12}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v12

    iget-object v13, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v13}, Lcom/xiaomi/onetrack/api/m;->f(Lcom/xiaomi/onetrack/api/m;)Z

    move-result v13

    invoke-static/range {v2 .. v13}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-interface {v1, v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    goto :goto_55

    :catch_3a
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackException error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method
