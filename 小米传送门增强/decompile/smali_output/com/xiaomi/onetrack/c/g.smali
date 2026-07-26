.class Lcom/xiaomi/onetrack/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/c;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 286
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 292
    :try_start_11
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    invoke-static {v2}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x6

    .line 295
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v11, 0x0

    .line 297
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 298
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 299
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 300
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 302
    const-string v12, "timestamp < ? "

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v13

    .line 304
    const-string v4, "events"

    const-string v3, "timestamp"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v10, "timestamp ASC"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_88

    .line 314
    const-string v3, "events"

    invoke-virtual {v2, v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 315
    const-string v3, "EventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** deleted obsolete item count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catchall_84
    move-exception v2

    goto :goto_d1

    :catch_86
    move-exception v2

    goto :goto_b6

    .line 318
    :cond_88
    :goto_88
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_97

    const/4 v11, 0x1

    .line 319
    :cond_97
    invoke-static {v11}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    .line 320
    const-string v4, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after delete obsolete record remains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b0} :catch_86
    .catchall {:try_start_11 .. :try_end_b0} :catchall_84

    .line 325
    :goto_b0
    :try_start_b0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_cf

    :catchall_b4
    move-exception v1

    goto :goto_d7

    .line 322
    :goto_b6
    :try_start_b6
    const-string v3, "EventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove obsolete events failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_84

    if-eqz v1, :cond_cf

    goto :goto_b0

    .line 328
    :cond_cf
    :goto_cf
    :try_start_cf
    monitor-exit v0

    return-void

    :goto_d1
    if-eqz v1, :cond_d6

    .line 325
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_d6
    throw v2

    .line 328
    :goto_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_b4

    throw v1
.end method
