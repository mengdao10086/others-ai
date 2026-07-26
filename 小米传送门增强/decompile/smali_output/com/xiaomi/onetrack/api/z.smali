.class Lcom/xiaomi/onetrack/api/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V
    .registers 3

    .line 675
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/z;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 681
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_4b

    :catch_30
    move-exception v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCommonProperty error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method
