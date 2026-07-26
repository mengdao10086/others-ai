.class public Lcom/xiaomi/onetrack/util/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/r$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "onetrack_"

.field public static final b:Ljava/lang/String; = "ot_"

.field private static final c:Ljava/lang/String; = "ParamUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 85
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 86
    :cond_21
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_d

    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    check-cast v1, Ljava/util/Map;

    .line 90
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    .line 91
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 94
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 95
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_35

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 96
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x1

    goto :goto_35

    :cond_5a
    if-eqz v3, :cond_d

    .line 101
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_60
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/xiaomi/onetrack/util/t;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/t;-><init>()V

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Lcom/xiaomi/onetrack/util/r$a;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;Lcom/xiaomi/onetrack/util/r$a;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/xiaomi/onetrack/util/r$a;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 48
    const-string v0, "ParamUtil"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_a

    return-object v1

    .line 53
    :cond_a
    :try_start_a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 54
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 58
    invoke-interface {p1, v4}, Lcom/xiaomi/onetrack/util/r$a;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 59
    sget-boolean v3, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v3, :cond_12

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_3c
    move-exception p0

    goto :goto_56

    .line 64
    :cond_3e
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 65
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    .line 66
    :cond_48
    instance-of v2, v4, Ljava/util/List;

    if-eqz v2, :cond_12

    .line 67
    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_55} :catch_3c

    goto :goto_12

    .line 72
    :goto_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkParam error:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    return-object v1
.end method

.method public static a(Ljava/util/Map;Z)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/xiaomi/onetrack/util/s;

    invoke-direct {v0, p1}, Lcom/xiaomi/onetrack/util/s;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Lcom/xiaomi/onetrack/util/r$a;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    if-nez p0, :cond_a

    if-nez p1, :cond_a

    .line 116
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_a
    if-nez p0, :cond_f

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    if-eqz p0, :cond_14

    if-nez p1, :cond_14

    return-object p0

    .line 128
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 132
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    goto :goto_18

    :catch_2c
    move-exception p1

    goto :goto_2f

    :cond_2e
    return-object p1

    .line 135
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge error\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParamUtil"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", the param value is invalid\uff0cplease change the parameter type to string ,numeric, boolean\uff01"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    .line 158
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    instance-of p0, p0, Ljava/util/List;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 176
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 179
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 180
    const-string v0, "onetrack_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "ot_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2

    .line 162
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_f

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 147
    :cond_8
    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/Object;)Z
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3e

    .line 195
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    move v1, v0

    .line 196
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_3c

    .line 197
    aget-char v2, p0, v1

    if-nez v1, :cond_1d

    .line 198
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    return v0

    :cond_1d
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_39

    .line 202
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_39

    const/16 v3, 0x61

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x7a

    if-le v2, v3, :cond_39

    :cond_2f
    const/16 v3, 0x41

    if-lt v2, v3, :cond_38

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_38

    goto :goto_39

    :cond_38
    return v0

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_3c
    const/4 p0, 0x1

    return p0

    :cond_3e
    :goto_3e
    return v0
.end method

.method private static d(Ljava/lang/Object;)Z
    .registers 1

    .line 151
    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
