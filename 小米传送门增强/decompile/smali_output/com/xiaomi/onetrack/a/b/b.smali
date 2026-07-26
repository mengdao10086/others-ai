.class public Lcom/xiaomi/onetrack/a/b/b;
.super Lcom/xiaomi/onetrack/f/b;


# static fields
.field private static final d:Ljava/lang/String; = "OTAdEvent"


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    .line 23
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/f/b;->c(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/f/b;->b(J)V

    .line 27
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p4, "H"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 29
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Lorg/json/JSONObject;)V

    .line 30
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p2

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(I)V

    .line 32
    invoke-virtual {p0, p4}, Lcom/xiaomi/onetrack/a/b/b;->a(Lorg/json/JSONObject;)V

    .line 33
    invoke-direct {p0, p4}, Lcom/xiaomi/onetrack/a/b/b;->c(Lorg/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    goto :goto_54

    :catch_39
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CustomEvent error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTAdEvent"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 84
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_10
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 49
    :cond_3
    :try_start_3
    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c4

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 52
    :goto_17
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto/16 :goto_a3

    .line 58
    :cond_29
    const-string v3, "api.ad.xiaomi.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string v3, "_sn_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 59
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&_sn_="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7c

    :catchall_5e
    move-exception p1

    goto :goto_aa

    .line 62
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?_sn_="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_7c
    :goto_7c
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->c(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/onetrack/a/b/a;->a(J)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/b/a;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/a/b/a;->b(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 73
    :cond_a7
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_5e

    goto :goto_c4

    .line 76
    :goto_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseAdMonitor Throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTAdEvent"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    return-void
.end method
