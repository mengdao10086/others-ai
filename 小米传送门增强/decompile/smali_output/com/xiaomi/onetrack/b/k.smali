.class Lcom/xiaomi/onetrack/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/onetrack/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/onetrack/b/l;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    const-string v0, "getConfig  cursor.close"

    const-string v1, "ConfigDbManager"

    const/4 v2, 0x0

    .line 135
    :try_start_5
    const-string v6, "app_id=?"

    .line 136
    iget-object v3, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 137
    const-string v4, "events_cloud"

    iget-object v5, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_8a
    .catchall {:try_start_5 .. :try_end_21} :catchall_85

    .line 140
    :try_start_21
    const-string v4, "app_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 141
    const-string v5, "cloud_data"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 142
    const-string v6, "data_hash"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 143
    const-string v7, "timestamp"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 145
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 146
    new-instance v8, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v8}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 147
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 148
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 150
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, v8, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    goto :goto_60

    :catchall_5c
    move-exception v2

    goto :goto_97

    :catch_5e
    move-exception v4

    goto :goto_8c

    .line 152
    :cond_60
    :goto_60
    iget-object v4, v8, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/xiaomi/onetrack/b/h;->a(Lorg/json/JSONObject;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v8, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 153
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 154
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/xiaomi/onetrack/b/l;->c:J
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_75} :catch_5e
    .catchall {:try_start_21 .. :try_end_75} :catchall_5c

    .line 162
    :try_start_75
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7c

    .line 164
    :catch_79
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7c
    return-object v8

    .line 162
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_96

    .line 164
    :catch_81
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :catchall_85
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_97

    :catch_8a
    move-exception v4

    move-object v3, v2

    .line 158
    :goto_8c
    :try_start_8c
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_5c

    if-eqz v3, :cond_96

    goto :goto_7d

    :cond_96
    :goto_96
    return-object v2

    :goto_97
    if-eqz v3, :cond_a0

    .line 162
    :try_start_99
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_a0

    .line 164
    :catch_9d
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_a0
    :goto_a0
    throw v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/k;->a()Lcom/xiaomi/onetrack/b/l;

    move-result-object v0

    return-object v0
.end method
