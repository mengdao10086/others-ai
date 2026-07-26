.class public Lcom/xiaomi/onetrack/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ConfigDbManager"

.field private static final e:I = 0x64


# instance fields
.field private b:Lcom/xiaomi/onetrack/b/g;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/xiaomi/onetrack/b/g;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/b/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/b/i;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/onetrack/b/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)I
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/h;->b(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/b/h;
    .registers 1

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/b/h$a;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)I
    .registers 4

    const/16 v0, 0x64

    .line 331
    :try_start_2
    const-string v1, "sample"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_f

    if-ltz p0, :cond_2a

    if-le p0, v0, :cond_d

    goto :goto_2a

    :cond_d
    move v0, p0

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonSample Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;)V"
        }
    .end annotation

    .line 63
    const-string v0, "Exception while endTransaction:"

    const-string v1, "events_cloud"

    const-string v2, "ConfigDbManager"

    const/4 v3, 0x0

    .line 65
    :try_start_7
    iget-object v4, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_c7
    .catchall {:try_start_7 .. :try_end_d} :catchall_c5

    .line 66
    :try_start_d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    const-string v5, "app_id=?"

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/onetrack/b/l;

    .line 69
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 70
    const-string v8, "app_id"

    iget-object v9, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v8, "timestamp"

    iget-wide v9, v6, Lcom/xiaomi/onetrack/b/l;->c:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v8, :cond_4f

    .line 73
    const-string v9, "cloud_data"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :catchall_47
    move-exception p1

    move-object v3, v4

    goto/16 :goto_db

    :catch_4b
    move-exception p1

    move-object v3, v4

    goto/16 :goto_c8

    .line 75
    :cond_4f
    :goto_4f
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    if-eqz v8, :cond_58

    .line 76
    const-string v9, "data_hash"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_58
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1, v5, v8}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_87

    .line 81
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "database updated, row: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 84
    :cond_87
    invoke-virtual {v4, v1, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 85
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "database inserted, row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_9f
    iget-object v7, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 90
    :cond_aa
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_ad} :catch_4b
    .catchall {:try_start_d .. :try_end_ad} :catchall_47

    .line 96
    :try_start_ad
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_da

    :catch_b1
    move-exception p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    :catchall_c5
    move-exception p1

    goto :goto_db

    :catch_c7
    move-exception p1

    .line 92
    :goto_c8
    :try_start_c8
    const-string v1, "updateToDb error: "

    invoke-static {v2, v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_c5

    if-eqz v3, :cond_da

    .line 96
    :try_start_cf
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_da

    :catch_d3
    move-exception p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b7

    :cond_da
    :goto_da
    return-void

    :goto_db
    if-eqz v3, :cond_f4

    .line 96
    :try_start_dd
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_f4

    :catch_e1
    move-exception v1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_f4
    :goto_f4
    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    .line 259
    const-string v0, "ConfigDbManager"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_9a

    .line 263
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_32

    :catch_30
    move-exception p1

    goto :goto_82

    .line 264
    :cond_32
    :goto_32
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V

    .line 267
    :cond_35
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    if-eqz p1, :cond_9a

    .line 268
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_9a

    .line 270
    const-string v1, "events"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9a

    const/4 v1, 0x0

    .line 272
    :goto_4c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_9a

    .line 273
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 274
    const-string v4, "event"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 275
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_7e

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEventConfig:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7e} :catch_30

    :cond_7e
    return-object v3

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 284
    :goto_82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEventConfig error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    :goto_9a
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)D
    .registers 7

    .line 246
    const-string v0, "ConfigDbManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 248
    const-string p1, "config not available, use default value"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    :catch_e
    move-exception p1

    goto :goto_15

    .line 251
    :cond_10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_e

    return-wide p1

    .line 253
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDouble: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 217
    const-string v0, "ConfigDbManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 219
    const-string p1, "config not available, use default value"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :catch_e
    move-exception p1

    goto :goto_15

    .line 222
    :cond_10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_e

    return p1

    .line 224
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getInt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 7

    .line 232
    const-string v0, "ConfigDbManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 234
    const-string p1, "config not available, use default value"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    :catch_e
    move-exception p1

    goto :goto_15

    .line 237
    :cond_10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_e

    return-wide p1

    .line 239
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLong: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 202
    const-string v0, "ConfigDbManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 204
    const-string p1, "config not available, use default value"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :catch_e
    move-exception p1

    goto :goto_15

    .line 208
    :cond_10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_e

    return-object p1

    .line 210
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getString: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 105
    new-instance v0, Lcom/xiaomi/onetrack/b/j;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/j;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V

    .line 118
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 119
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    .line 122
    :try_start_e
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 319
    iget-object v0, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_32

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 320
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    :catch_17
    move-exception p1

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppLevelBoolean"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfigDbManager"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .line 188
    const-string v0, "ConfigDbManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_10

    .line 190
    const-string p1, "config not available, use default value"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :catch_e
    move-exception p1

    goto :goto_15

    .line 193
    :cond_10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_e

    return p1

    .line 195
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getBoolean: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9

    .line 342
    const-string v0, "ConfigDbManager"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_b

    return-wide v2

    .line 346
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 347
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V

    goto :goto_19

    :catch_17
    move-exception p1

    goto :goto_63

    .line 349
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 350
    const-string v1, "sample"

    const/4 v4, -0x1

    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_4d

    .line 353
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    if-eqz p1, :cond_4d

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return common sample "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/xiaomi/onetrack/b/l;->b:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-wide p1, p1, Lcom/xiaomi/onetrack/b/l;->b:J

    return-wide p1

    .line 359
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return event sample "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_17

    int-to-long p1, p2

    return-wide p1

    .line 363
    :goto_63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppEventSample"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_7b
    const-string p1, "will return def sample"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .line 130
    new-instance v0, Lcom/xiaomi/onetrack/b/k;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/k;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 173
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    .line 176
    :try_start_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/b/l;

    if-eqz v0, :cond_41

    .line 178
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_41

    :catch_26
    move-exception p1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigDbManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 290
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 292
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_11

    .line 293
    const-string v0, "bannedParams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 295
    :cond_11
    const-string p1, ""

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 299
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 302
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    return-object p1

    .line 304
    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public e(Ljava/lang/String;)I
    .registers 3

    .line 308
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 310
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_11

    .line 311
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;
    .registers 6

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppConfigData start, appId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x0

    return-object p1

    .line 376
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_3f

    :catch_3d
    move-exception v0

    goto :goto_43

    .line 377
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_3d

    goto :goto_5b

    .line 380
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    return-object p1
.end method
