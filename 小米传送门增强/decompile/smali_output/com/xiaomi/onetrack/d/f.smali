.class public Lcom/xiaomi/onetrack/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/d/f$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/json/JSONObject;

.field private static final b:Ljava/lang/String; = "SecretKeyManager"

.field private static final c:Ljava/lang/String; = "secretKey"

.field private static final d:Ljava/lang/String; = "sid"

.field private static final e:Ljava/lang/String; = "key"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lorg/json/JSONObject;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/d/g;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/d/f;
    .registers 1

    .line 43
    invoke-static {}, Lcom/xiaomi/onetrack/d/f$a;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 4

    .line 59
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_27

    .line 60
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SecretKeyManager"

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 61
    const-string v0, "key  and sid is valid! "

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 63
    :cond_22
    const-string v0, "key or sid is invalid!"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 115
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 117
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    :cond_c
    if-nez v0, :cond_12

    .line 121
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/d/f;->c()Lorg/json/JSONObject;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->g()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v0

    .line 133
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object v2

    :catch_18
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()[Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :catchall_10
    move-exception v0

    goto :goto_2e

    :cond_12
    const-string v2, ""

    :goto_14
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 53
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, ""

    :goto_24
    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->d()V

    .line 55
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_10

    monitor-exit p0

    return-object v0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_10

    throw v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 8

    .line 70
    const-string v0, "sid"

    const-string v1, "key"

    const-string v2, "SecretKeyManager"

    :try_start_6
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 71
    sget-object v0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    return-object v0

    :catch_f
    move-exception v0

    goto/16 :goto_92

    .line 73
    :cond_12
    invoke-static {}, Lcom/xiaomi/onetrack/d/a;->a()[B

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/e;->a([B)[B

    move-result-object v4

    .line 75
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 76
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v6, "secretKey"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/util/x;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 79
    invoke-static {v4, v5, v6}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 81
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v4, "code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 83
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v4, :cond_aa

    if-eqz v5, :cond_aa

    .line 86
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_aa

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_aa

    .line 89
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 92
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iput-object v4, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->i(J)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_91} :catch_f

    goto :goto_aa

    .line 102
    :goto_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSecretData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_aa
    :goto_aa
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    return-object v0
.end method
