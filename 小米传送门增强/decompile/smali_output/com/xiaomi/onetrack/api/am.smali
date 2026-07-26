.class public Lcom/xiaomi/onetrack/api/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/j;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x7d000

.field private static final d:I = 0x2


# instance fields
.field private e:Lcom/xiaomi/onetrack/Configuration;

.field private f:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/g;->a(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 48
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/am;->f:Lcom/xiaomi/onetrack/util/v;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 13

    .line 138
    const-string v0, ""

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_10

    .line 140
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_10
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/api/am;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "OneTrackLocalImp"

    if-eqz v2, :cond_1e

    .line 143
    const-string p1, "This app disabled tracking data, skip it."

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    const-string v4, "needIds"

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_2c

    move-object v4, v0

    goto :goto_32

    .line 148
    :cond_2c
    const-string v4, "tip"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", needIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v4, v2}, Lcom/xiaomi/onetrack/api/am;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 153
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/api/am;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 154
    const-string p1, " This event disabled tracking data , skip it."

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_60
    move-exception p1

    goto :goto_c2

    .line 157
    :cond_62
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/api/am;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 158
    const-string p1, " This event should not upload by sampling , skip it."

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_6e
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    const-string v4, "bannedParams"

    invoke-virtual {v2, v1, p1, v4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_78
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bannedParamsForApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bannedParamsForEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, ","

    invoke-static {v2, v0, v4}, Lcom/xiaomi/onetrack/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 169
    invoke-direct {p0, p3, v0}, Lcom/xiaomi/onetrack/api/am;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 170
    invoke-direct {p0, p4, v0}, Lcom/xiaomi/onetrack/api/am;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    if-eqz p5, :cond_b6

    .line 172
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p1, p2}, Lcom/xiaomi/onetrack/f/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    .line 174
    :cond_b6
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p1, p2}, Lcom/xiaomi/onetrack/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_1e .. :try_end_c1} :catchall_60

    goto :goto_da

    .line 177
    :goto_c2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkCloudControl error\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_da
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    const-string v0, "OneTrackLocalImp"

    if-eqz p1, :cond_65

    if-eqz p2, :cond_65

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_65

    .line 211
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bannedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_31
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 214
    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4a} :catch_4b

    goto :goto_35

    :catch_4b
    move-exception p1

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterParams error\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void

    .line 207
    :cond_65
    :goto_65
    const-string p1, "jsonObject is null or bannedParams is empty"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 228
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    const-string v1, "disable_log"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_27

    :catch_b
    move-exception p1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisableTrackForApp error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackLocalImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    .line 262
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_f

    .line 264
    :catchall_8
    const-string p1, "OneTrackLocalImp"

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 182
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 186
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    return v2

    .line 191
    :cond_10
    :try_start_10
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 192
    array-length v0, p1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_49

    .line 193
    const-string v0, ","

    invoke-static {p2, v0}, Lcom/xiaomi/onetrack/util/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_49

    const/4 v0, 0x4

    .line 194
    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2e

    if-eqz p1, :cond_49

    return v1

    :catch_2e
    move-exception p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMatchId error\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneTrackLocalImp"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return v2
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 239
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v1

    const-string v2, "disable_log"

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p1

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisableTrackForEvent error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneTrackLocalImp"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 248
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 249
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object p1

    .line 250
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    int-to-long v2, p1

    cmp-long p1, v0, v2

    const/4 v4, 0x1

    if-lez p1, :cond_26

    move p1, v4

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 253
    :goto_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldUploadBySampling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",  shouldUpload="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", sample="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", val="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OneTrackLocalImp"

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p1, v4

    return p1
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 92
    new-instance v0, Lcom/xiaomi/onetrack/api/an;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/api/an;-><init>(Lcom/xiaomi/onetrack/api/am;I)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 53
    const-string v0, "OneTrackLocalImp"

    const/4 v1, 0x0

    .line 57
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_1d

    .line 58
    :try_start_8
    const-string v3, "H"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_e} :catch_1a

    .line 59
    :try_start_e
    const-string v4, "B"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_14} :catch_18

    :goto_14
    move-object v9, v1

    move-object v7, v2

    move-object v8, v3

    goto :goto_39

    :catch_18
    move-exception v4

    goto :goto_20

    :catch_1a
    move-exception v4

    move-object v3, v1

    goto :goto_20

    :catch_1d
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    .line 61
    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " data JSONException e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 64
    :goto_39
    invoke-direct {p0, v8}, Lcom/xiaomi/onetrack/api/am;->a(Lorg/json/JSONObject;)Z

    move-result v10

    .line 65
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/am;->f:Lcom/xiaomi/onetrack/util/v;

    if-eqz v1, :cond_4f

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    if-nez v10, :cond_4f

    .line 66
    const-string p1, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_4f
    invoke-virtual {p0, p1, p2, v10}, Lcom/xiaomi/onetrack/api/am;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_56

    return-void

    .line 73
    :cond_56
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_60

    .line 74
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_60
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    .line 80
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_83

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    if-eqz v10, :cond_92

    .line 84
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/lang/String;)V

    .line 86
    :cond_92
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/lang/String;)V

    move-object v5, p0

    move-object v6, p1

    .line 87
    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/onetrack/api/am;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 111
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    .line 115
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OneTrackLocalImp"

    if-nez v0, :cond_43

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_43

    :cond_10
    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 120
    const-string v3, "onetrack_bug_report"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v0

    :cond_1c
    if-eqz p3, :cond_2f

    if-eqz p2, :cond_42

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const p2, 0x7d000

    if-le p1, p2, :cond_42

    .line 125
    const-string p1, "ad Event size exceed limitation!"

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2f
    if-eqz p2, :cond_42

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_42

    .line 130
    const-string p1, "Event size exceed limitation!"

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_42
    return v0

    .line 116
    :cond_43
    :goto_43
    const-string p1, "Tracking data is disabled or onetrack use system net traffic only, skip it."

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
