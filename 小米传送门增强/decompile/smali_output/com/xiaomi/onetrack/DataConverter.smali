.class public Lcom/xiaomi/onetrack/DataConverter;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DataConverter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_53

    .line 111
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 112
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 114
    :cond_1e
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_50

    .line 115
    check-cast v3, Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 118
    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 121
    invoke-static {v7}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 122
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 125
    :cond_47
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_53
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 11

    .line 27
    const-string v0, "DataConverter"

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    :try_start_b
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 34
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 38
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :catch_2d
    move-exception p0

    goto :goto_95

    .line 39
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 40
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_43
    if-ge v7, v5, :cond_55

    .line 43
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 44
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 45
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 48
    :cond_55
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 49
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 51
    :cond_5f
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_8c

    .line 52
    check-cast v4, Ljava/util/List;

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6e
    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 56
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 59
    :cond_82
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 60
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 63
    :cond_8c
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_13

    .line 64
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_93} :catch_2d

    goto/16 :goto_13

    .line 69
    :goto_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert bundle error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7

    .line 77
    const-string v0, "DataConverter"

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    :try_start_b
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 88
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catch_29
    move-exception p0

    goto :goto_41

    .line 89
    :cond_2b
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_39

    .line 90
    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/xiaomi/onetrack/DataConverter;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 91
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 93
    :cond_39
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_f

    .line 94
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_29

    goto :goto_f

    .line 99
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert json to map error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-object v1
.end method
