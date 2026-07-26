.class public Lcom/xiaomi/onetrack/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "l"

.field private static final b:Ljava/lang/String; = "CommonConfigUpdater"

.field private static final c:Ljava/lang/String; = "t"

.field private static final d:Ljava/lang/String; = "levels"

.field private static final e:Ljava/lang/String; = "Android"

.field private static f:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:J = 0xa4cb800L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .line 48
    new-instance v0, Lcom/xiaomi/onetrack/b/f;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/b/f;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 118
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_72

    .line 121
    const-string p0, "hash"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 125
    const-string v1, "regionUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 127
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V

    goto :goto_34

    :catch_32
    move-exception p0

    goto :goto_58

    .line 129
    :cond_34
    :goto_34
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->d(Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;)V

    .line 133
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const v2, 0x5265c00

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 134
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->j(J)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_57} :catch_32

    goto :goto_72

    .line 137
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCommonCloudData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonConfigUpdater"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public static b()V
    .registers 2

    .line 57
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->f()V

    goto :goto_11

    .line 60
    :cond_a
    const-string v0, "CommonConfigUpdater"

    const-string v1, "CommonConfigUpdater Does not meet prerequisites for request"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public static c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 145
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0

    :catch_b
    move-exception v0

    goto :goto_4d

    .line 148
    :cond_d
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 150
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v0, "levels"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    :goto_23
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    const-string v3, "l"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 155
    const-string v4, "t"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v3, :cond_4a

    if-lez v2, :cond_4a

    .line 157
    sget-object v4, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_b

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 162
    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevelIntervalConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonConfigUpdater"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_67
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->g()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_76

    :cond_74
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_76
    return-object v0
.end method

.method static synthetic d()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->f()V

    return-void
.end method

.method private static e()Z
    .registers 7

    .line 65
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 66
    const-string v0, "CommonConfigUpdater"

    const-string v2, "net is not connected!"

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 69
    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    return v2

    .line 73
    :cond_1b
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->j()J

    move-result-wide v3

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xa4cb800

    cmp-long v0, v3, v5

    if-lez v0, :cond_34

    goto :goto_35

    :cond_34
    return v1

    :cond_35
    :goto_35
    return v2
.end method

.method private static f()V
    .registers 5

    .line 82
    const-string v0, "CommonConfigUpdater"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 86
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    :try_start_e
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/z;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 91
    invoke-static {v2}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :catch_25
    move-exception v1

    goto/16 :goto_ae

    .line 93
    :cond_28
    :goto_28
    const-string v3, "oa"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "ov"

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "ob"

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "ii"

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "1"

    goto :goto_4c

    :cond_4a
    const-string v3, "0"

    :goto_4c
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "sv"

    const-string v3, "2.1.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "appVer"

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "av"

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "ml"

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "re"

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "platform"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/util/x;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 104
    invoke-static {v2, v1, v3}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/e;->a(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_ad} :catch_25

    goto :goto_c6

    .line 108
    :goto_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCloudData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c6
    return-void
.end method

.method private static g()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xdbba0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
