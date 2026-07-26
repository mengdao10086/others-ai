.class public Lcom/xiaomi/onetrack/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorManager"

.field private static final b:I = 0x32000

.field private static final c:I = 0x64

.field private static final d:I = 0x4

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "_id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/a/a;


# instance fields
.field private final i:Lcom/xiaomi/onetrack/a/a$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/xiaomi/onetrack/a/a$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/a$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 62
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/a/b/a;)J
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/xiaomi/onetrack/a/b/a;)J
    .registers 10

    .line 89
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 91
    :try_start_5
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->h()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 92
    const-string v3, "AdMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase event is inValid, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2a

    .line 93
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return-wide v1

    :catchall_27
    move-exception p1

    goto/16 :goto_c1

    :catchall_2a
    move-exception p1

    goto :goto_a5

    .line 95
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 96
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 97
    const-string v5, "appid"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v5, "package"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, "event_name"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v5, "timestamp"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v5, "url"

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string p1, "monitor"

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 104
    const-string p1, "AdMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB-Thread: AdMonitorManager.addAdMonitorToDatabase , row="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_a3

    .line 106
    const-string p1, "AdMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6dfb\u52a0\u540e\uff0cad monitor url \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_2c .. :try_end_a3} :catchall_2a

    .line 108
    :cond_a3
    :try_start_a3
    monitor-exit v0

    return-wide v3

    .line 110
    :goto_a5
    const-string v3, "AdMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase Throwable\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    monitor-exit v0

    return-wide v1

    .line 113
    :goto_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_27

    throw p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/a/a;
    .registers 1

    .line 40
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_b

    .line 41
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Landroid/content/Context;)V

    .line 44
    :cond_b
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 48
    sget-object p0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez p0, :cond_19

    .line 49
    const-class p0, Lcom/xiaomi/onetrack/a/a;

    monitor-enter p0

    .line 50
    :try_start_7
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_15

    .line 51
    new-instance v0, Lcom/xiaomi/onetrack/a/a;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/a/a;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 53
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

.method private f()V
    .registers 4

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 361
    const-string v1, "monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    const-string v0, "AdMonitorManager"

    const-string v1, "delete table monitor"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_bd

    .line 190
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_5b

    if-nez v2, :cond_e

    goto/16 :goto_bd

    .line 195
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 199
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    const-string v3, "_id"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4a
    if-ge v4, v3, :cond_5f

    .line 207
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :catchall_5b
    move-exception p1

    goto :goto_bf

    :catch_5d
    move-exception p1

    goto :goto_a5

    .line 209
    :cond_5f
    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string p1, "monitor"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 213
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** *** deleted ad monitor count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_a3

    .line 215
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete ad monitor record remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a3} :catch_5d
    .catchall {:try_start_e .. :try_end_a3} :catchall_5b

    .line 217
    :cond_a3
    :try_start_a3
    monitor-exit v0

    return p1

    .line 219
    :goto_a5
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    monitor-exit v0

    return v1

    .line 191
    :cond_bd
    :goto_bd
    monitor-exit v0

    return v1

    .line 222
    :goto_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_5b

    throw p1
.end method

.method public a(Lcom/xiaomi/onetrack/f/b;)V
    .registers 4

    .line 68
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/a/b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/a/b;-><init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_24

    :catchall_9
    move-exception p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterAdMonitor Throwable\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdMonitorManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public a(JJI)Z
    .registers 9

    const/4 v0, 0x1

    if-gtz p5, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge p5, v1, :cond_1a

    sub-int/2addr p5, v0

    .line 372
    invoke-static {p5}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result p5

    sub-long/2addr p1, p3

    .line 373
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    int-to-long p3, p5

    cmp-long p1, p1, p3

    if-ltz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    :cond_1a
    return v2
.end method

.method public b()Lcom/xiaomi/onetrack/a/c/a;
    .registers 23

    move-object/from16 v7, p0

    .line 118
    iget-object v8, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v8

    const/4 v9, 0x0

    .line 122
    :try_start_6
    iget-object v0, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 123
    const-string v11, "monitor"

    const-string v17, "_id ASC"

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_6 .. :try_end_1a} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_dd
    .catchall {:try_start_6 .. :try_end_1a} :catchall_db

    .line 126
    :try_start_1a
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 127
    const-string v1, "appid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    const-string v1, "package"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 129
    const-string v1, "event_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 130
    const-string v1, "timestamp"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 131
    const-string v1, "url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 132
    const-string v1, "send_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 135
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    move/from16 v18, v17

    .line 139
    :goto_4e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 141
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 142
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v19, v4

    move/from16 v21, v6

    .line 143
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/a;->a(JJI)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_4e

    .line 151
    :cond_6a
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 152
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 154
    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/a/b/a;->b(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->a(I)V

    move-wide/from16 v1, v19

    .line 156
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/onetrack/a/b/a;->a(J)V

    move/from16 v1, v21

    .line 157
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->b(I)V

    .line 158
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v18, 0x1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_91

    goto :goto_9e

    :cond_91
    move/from16 v18, v1

    goto :goto_4e

    :catchall_94
    move-exception v0

    move-object v9, v10

    goto/16 :goto_ff

    :catch_98
    move-exception v0

    goto :goto_e3

    :catch_9a
    move-exception v0

    goto :goto_f0

    :cond_9c
    move/from16 v1, v18

    .line 164
    :goto_9e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_cf

    .line 165
    const-string v0, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ad monitor size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 167
    const-string v0, "AdMonitorManager"

    const-string v3, "cursor isAfterLast"

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf

    :cond_cd
    move/from16 v2, v17

    .line 173
    :cond_cf
    :goto_cf
    new-instance v0, Lcom/xiaomi/onetrack/a/c/a;

    invoke-direct {v0, v1, v14, v2}, Lcom/xiaomi/onetrack/a/c/a;-><init>(ILjava/util/ArrayList;Z)V
    :try_end_d4
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1a .. :try_end_d4} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_d4} :catch_98
    .catchall {:try_start_1a .. :try_end_d4} :catchall_94

    .line 181
    :try_start_d4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    monitor-exit v8
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_d9

    return-object v0

    :catchall_d9
    move-exception v0

    goto :goto_105

    :catchall_db
    move-exception v0

    goto :goto_ff

    :catch_dd
    move-exception v0

    move-object v10, v9

    goto :goto_e3

    :catch_e0
    move-exception v0

    move-object v10, v9

    goto :goto_f0

    .line 178
    :goto_e3
    :try_start_e3
    const-string v1, "AdMonitorManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_94

    if-eqz v10, :cond_fd

    .line 181
    :goto_ec
    :try_start_ec
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_d9

    goto :goto_fd

    .line 175
    :goto_f0
    :try_start_f0
    const-string v1, "AdMonitorManager"

    const-string v2, "blob too big ***"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/a/a;->f()V
    :try_end_fa
    .catchall {:try_start_f0 .. :try_end_fa} :catchall_94

    if-eqz v10, :cond_fd

    goto :goto_ec

    .line 184
    :cond_fd
    :goto_fd
    :try_start_fd
    monitor-exit v8

    return-object v9

    :goto_ff
    if-eqz v9, :cond_104

    .line 181
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_104
    throw v0

    .line 184
    :goto_105
    monitor-exit v8
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_d9

    throw v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    if-eqz p1, :cond_ee

    .line 234
    :try_start_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_4f

    if-gtz v1, :cond_d

    goto/16 :goto_ee

    :cond_d
    const/4 v1, 0x0

    .line 240
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 243
    const-string v3, "update %s set %s = %s + 1 where %s = %s"

    const-string v4, "monitor"

    const-string v5, "send_count"

    const-string v6, "send_count"

    const-string v7, "_id"

    filled-new-array {v4, v5, v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1b

    :catchall_40
    move-exception p1

    goto :goto_ab

    :catch_42
    move-exception p1

    goto :goto_6f

    .line 245
    :cond_44
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_42
    .catchall {:try_start_e .. :try_end_47} :catchall_40

    .line 251
    :try_start_47
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4d} :catch_52
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4f

    goto/16 :goto_ea

    :catchall_4f
    move-exception p1

    goto/16 :goto_d0

    :catch_52
    move-exception p1

    .line 255
    :try_start_53
    const-string v1, "AdMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6a
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_4f

    goto/16 :goto_ea

    .line 247
    :goto_6f
    :try_start_6f
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_40

    if-eqz v1, :cond_ea

    .line 251
    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_91} :catch_92
    .catchall {:try_start_8b .. :try_end_91} :catchall_4f

    goto :goto_ea

    :catch_92
    move-exception p1

    .line 255
    :try_start_93
    const-string v1, "AdMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_aa
    .catchall {:try_start_93 .. :try_end_aa} :catchall_4f

    goto :goto_6a

    :goto_ab
    if-eqz v1, :cond_cf

    .line 251
    :try_start_ad
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b3} :catch_b4
    .catchall {:try_start_ad .. :try_end_b3} :catchall_4f

    goto :goto_cf

    :catch_b4
    move-exception v1

    .line 255
    :try_start_b5
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_cf
    :goto_cf
    throw p1
    :try_end_d0
    .catchall {:try_start_b5 .. :try_end_d0} :catchall_4f

    .line 259
    :goto_d0
    :try_start_d0
    const-string v1, "AdMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_ea
    :goto_ea
    monitor-exit v0

    return-void

    :catchall_ec
    move-exception p1

    goto :goto_f0

    .line 235
    :cond_ee
    :goto_ee
    monitor-exit v0

    return-void

    .line 261
    :goto_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_ec

    throw p1
.end method

.method public c()V
    .registers 4

    .line 265
    new-instance v0, Lcom/xiaomi/onetrack/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/c;-><init>(Lcom/xiaomi/onetrack/a/a;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public d()V
    .registers 14

    .line 315
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 318
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 319
    const-string v11, "send_count >= ? "

    const-wide/16 v3, 0x4

    .line 320
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    .line 321
    const-string v4, "monitor"

    const-string v3, "timestamp"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v10, "_id ASC"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v6, v11

    move-object v7, v12

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_50

    .line 331
    const-string v3, "monitor"

    invoke-virtual {v2, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 332
    const-string v3, "AdMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** deleted obsolete ad monitor count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :catchall_4c
    move-exception v2

    goto :goto_8f

    :catch_4e
    move-exception v2

    goto :goto_74

    .line 334
    :cond_50
    :goto_50
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_6e

    .line 335
    const-string v2, "AdMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete obsolete ad monitor record remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6e} :catch_4e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_4c

    .line 341
    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_8d

    :catchall_72
    move-exception v1

    goto :goto_95

    .line 338
    :goto_74
    :try_start_74
    const-string v3, "AdMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove obsolete ad monitor failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_74 .. :try_end_8a} :catchall_4c

    if-eqz v1, :cond_8d

    goto :goto_6e

    .line 344
    :cond_8d
    :goto_8d
    :try_start_8d
    monitor-exit v0

    return-void

    :goto_8f
    if-eqz v1, :cond_94

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_94
    throw v2

    .line 344
    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_72

    throw v1
.end method

.method public e()J
    .registers 4

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 351
    const-string v1, "monitor"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalEventsNumberSync failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdMonitorManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
