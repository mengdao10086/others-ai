.class Lcom/xiaomi/onetrack/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/xiaomi/onetrack/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/a;Lorg/json/JSONObject;)V
    .registers 3

    .line 449
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/c;->b:Lcom/xiaomi/onetrack/b/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 452
    const-string v0, "checkAppConfigVersion start"

    const-string v1, "AppConfigUpdater"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e9

    const/4 v2, 0x0

    move v3, v2

    .line 455
    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e9

    .line 456
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_22

    .line 457
    const-string v5, ""

    goto :goto_28

    :cond_22
    const-string v5, "appId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    :goto_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e5

    if-nez v4, :cond_46

    move v4, v2

    goto :goto_4c

    .line 460
    :cond_46
    const-string v6, "version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 461
    :goto_4c
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    move-result v6

    .line 462
    invoke-static {v5}, Lcom/xiaomi/onetrack/b/a;->e(Ljava/lang/String;)Z

    move-result v7

    .line 463
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_74

    const/4 v8, 0x1

    goto :goto_75

    :cond_74
    move v8, v2

    .line 464
    :goto_75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "local version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", server version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", canUpdate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isScheduling: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_e5

    if-le v4, v6, :cond_e5

    if-eqz v7, :cond_e5

    if-nez v8, :cond_e5

    .line 467
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 468
    iput v2, v4, Landroid/os/Message;->what:I

    .line 469
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x413b774000000000L    # 1800000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the message will be handled after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->c()Lcom/xiaomi/onetrack/b/a$b;

    move-result-object v8

    invoke-virtual {v8, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 473
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_e9
    return-void
.end method
