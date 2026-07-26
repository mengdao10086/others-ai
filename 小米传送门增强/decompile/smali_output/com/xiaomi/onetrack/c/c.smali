.class public Lcom/xiaomi/onetrack/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:Z = false

.field private static final c:I = 0x32000

.field private static final d:I = 0x4b000

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "priority ASC, _id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/c/c;

.field private static j:Landroid/content/BroadcastReceiver;


# instance fields
.field private i:Lcom/xiaomi/onetrack/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/xiaomi/onetrack/c/d;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/d;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/c/c;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/xiaomi/onetrack/c/c$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/c$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/c;->b()V

    .line 71
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/c/c;
    .registers 1

    .line 48
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v0, :cond_b

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Landroid/content/Context;)V

    .line 52
    :cond_b
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .line 351
    invoke-static {}, Lcom/xiaomi/onetrack/d/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    move-result-object p0

    .line 354
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 56
    sget-object p0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez p0, :cond_19

    .line 57
    const-class p0, Lcom/xiaomi/onetrack/c/c;

    monitor-enter p0

    .line 58
    :try_start_7
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v0, :cond_15

    .line 59
    new-instance v0, Lcom/xiaomi/onetrack/c/c;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/c;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 61
    :cond_15
    :goto_15
    monitor-exit p0

    goto :goto_19

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/c;->b(Lcom/xiaomi/onetrack/f/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .line 344
    invoke-static {}, Lcom/xiaomi/onetrack/d/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 345
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/xiaomi/onetrack/c/c;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Lcom/xiaomi/onetrack/f/b;)V
    .registers 8

    .line 121
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->i()Z

    move-result v1

    if-nez v1, :cond_28

    .line 123
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEventToDatabase event is inValid, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    goto/16 :goto_e2

    .line 126
    :cond_28
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 129
    const-string v3, "appid"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "package"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "event_name"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "priority"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 135
    array-length v4, v3

    const v5, 0x32000

    if-le v4, v5, :cond_83

    .line 136
    const-string p1, "EventManager"

    const-string v1, "Too large data, discard ***"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    monitor-exit v0

    return-void

    .line 140
    :cond_83
    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 141
    const-string v3, "events"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 142
    const-string v3, "EventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB-Thread: EventManager.addEventToDatabase , row="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e0

    .line 144
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_c9

    .line 145
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0\u540e\uff0cDB \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 149
    const-string v3, "onetrack_active"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 150
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(J)V

    :cond_dc
    const/4 p1, 0x0

    .line 153
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    .line 155
    :cond_e0
    monitor-exit v0

    return-void

    :goto_e2
    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_3 .. :try_end_e3} :catchall_25

    throw p1
.end method

.method private d()V
    .registers 4

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 360
    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    const-string v0, "EventManager"

    const-string v1, "delete table events"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c8

    .line 245
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_5b

    if-nez v2, :cond_e

    goto/16 :goto_c8

    .line 250
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 254
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    const-string v3, "_id"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :goto_4a
    if-ge v6, v3, :cond_5f

    .line 262
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :catchall_5b
    move-exception p1

    goto :goto_ca

    :catch_5d
    move-exception p1

    goto :goto_b0

    .line 264
    :cond_5f
    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string p1, "events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 268
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted events count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_94

    goto :goto_95

    :cond_94
    move v4, v1

    .line 271
    :goto_95
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    .line 272
    const-string v4, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after delete DB record remains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ae} :catch_5d
    .catchall {:try_start_e .. :try_end_ae} :catchall_5b

    .line 274
    :try_start_ae
    monitor-exit v0

    return p1

    .line 276
    :goto_b0
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    monitor-exit v0

    return v1

    .line 246
    :cond_c8
    :goto_c8
    monitor-exit v0

    return v1

    .line 279
    :goto_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_5b

    throw p1
.end method

.method public a(I)Lcom/xiaomi/onetrack/c/h;
    .registers 23

    move/from16 v1, p1

    .line 161
    const-string v2, "EventManager"

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 164
    :try_start_7
    iget-object v0, v4, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 165
    const-string v6, "events"

    const-string v12, "priority ASC, _id ASC"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_7 .. :try_end_1a} :catch_110
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_10d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_10b

    .line 168
    :try_start_1a
    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 169
    const-string v0, "appid"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 170
    const-string v0, "package"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 171
    const-string v0, "event_name"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 172
    const-string v0, "priority"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 173
    const-string v0, "data"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 174
    const-string v0, "timestamp"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 176
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 177
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 183
    :goto_50
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_e3

    .line 184
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 185
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 186
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 187
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    if-eqz v19, :cond_77

    .line 191
    invoke-static/range {v19 .. v19}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    goto :goto_78

    :catchall_6d
    move-exception v0

    move-object v3, v5

    goto/16 :goto_127

    :catch_71
    move-exception v0

    goto/16 :goto_113

    :catch_74
    move-exception v0

    goto/16 :goto_11b

    :cond_77
    move-object v13, v3

    :goto_78
    if-eqz v0, :cond_a3

    .line 196
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_a0

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No records of priority["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], first record priority="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1a .. :try_end_9c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9c} :catch_71
    .catchall {:try_start_1a .. :try_end_9c} :catchall_6d

    .line 237
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_a0
    const/16 v20, 0x0

    goto :goto_a5

    :cond_a3
    move/from16 v20, v0

    .line 203
    :goto_a5
    :try_start_a5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_a5 .. :try_end_aa} :catch_74
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_71
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_6d

    .line 205
    :try_start_aa
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 206
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b4} :catch_b7
    .catchall {:try_start_aa .. :try_end_b4} :catchall_6d

    add-int/lit8 v15, v15, 0x1

    goto :goto_bd

    :catch_b7
    move-exception v0

    .line 209
    :try_start_b8
    const-string v14, "*** error ***"

    invoke-static {v2, v14, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :goto_bd
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v16, v0

    const v13, 0x4b000

    if-lt v0, v13, :cond_dd

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reached max len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    :cond_dd
    move/from16 v16, v0

    move/from16 v0, v20

    goto/16 :goto_50

    .line 219
    :cond_e3
    :goto_e3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_107

    .line 220
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 221
    const-string v0, "cursor isAfterLast"

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    const/4 v13, 0x1

    goto :goto_fe

    .line 224
    :cond_f6
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_fd

    goto :goto_f4

    :cond_fd
    const/4 v13, 0x0

    .line 228
    :goto_fe
    new-instance v0, Lcom/xiaomi/onetrack/c/h;

    invoke-direct {v0, v11, v15, v12, v13}, Lcom/xiaomi/onetrack/c/h;-><init>(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    :try_end_103
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_b8 .. :try_end_103} :catch_74
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_103} :catch_71
    .catchall {:try_start_b8 .. :try_end_103} :catchall_6d

    .line 237
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_107
    :goto_107
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_126

    :catchall_10b
    move-exception v0

    goto :goto_127

    :catch_10d
    move-exception v0

    move-object v5, v3

    goto :goto_113

    :catch_110
    move-exception v0

    move-object v5, v3

    goto :goto_11b

    .line 234
    :goto_113
    :try_start_113
    const-string v1, ""

    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_126

    goto :goto_107

    .line 231
    :goto_11b
    const-string v1, "blob too big ***"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/c/c;->d()V
    :try_end_123
    .catchall {:try_start_113 .. :try_end_123} :catchall_6d

    if-eqz v5, :cond_126

    goto :goto_107

    :cond_126
    :goto_126
    return-object v3

    :goto_127
    if-eqz v3, :cond_12c

    .line 237
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_12c
    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    monitor-enter p0

    .line 102
    :try_start_1
    new-instance v0, Lcom/xiaomi/onetrack/c/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/f;-><init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 118
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public b()V
    .registers 4

    .line 283
    new-instance v0, Lcom/xiaomi/onetrack/c/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/c/g;-><init>(Lcom/xiaomi/onetrack/c/c;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public c()J
    .registers 4

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 336
    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalEventsNumberSync failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
