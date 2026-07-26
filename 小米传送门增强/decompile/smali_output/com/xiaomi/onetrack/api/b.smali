.class Lcom/xiaomi/onetrack/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xiaomi/onetrack/api/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/a;Landroid/content/Intent;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/b;->b:Lcom/xiaomi/onetrack/api/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 79
    const-string v0, "userId"

    const-string v2, "activeTime"

    const-string v3, "miuiActiveTime"

    const-string v4, "miuiActiveId"

    const-string v5, "installer"

    const-string v6, "package"

    .line 80
    const-string v7, ""

    .line 82
    :try_start_10
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->d()Z

    move-result v9

    if-nez v9, :cond_17

    return-object v7

    .line 85
    :cond_17
    iget-object v9, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    iget-object v10, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v10, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    iget-object v11, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v11, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    iget-object v12, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    const-wide/16 v13, -0x1

    invoke-virtual {v12, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 89
    iget-object v12, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v12, v2, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 90
    iget-object v14, v1, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    const/4 v8, -0x1

    invoke-virtual {v14, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 92
    const-string v17, "content://com.miui.analytics.OneTrackProvider/traceId"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4c} :catch_e7
    .catchall {:try_start_10 .. :try_end_4c} :catchall_d7

    move-object/from16 v18, v7

    :try_start_4e
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_da
    .catchall {:try_start_4e .. :try_end_52} :catchall_d7

    .line 93
    :try_start_52
    const-string v1, "pkg"

    move-object/from16 v17, v0

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    const-string v0, "sign"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v8

    const-string v8, "traceId"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    invoke-virtual {v7, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    invoke-virtual {v7, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    invoke-virtual {v7, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    const-string v0, "queryTime"

    invoke-virtual {v7, v0, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a5} :catch_e3
    .catchall {:try_start_52 .. :try_end_a5} :catchall_df

    move-object/from16 v1, p0

    .line 102
    :try_start_a7
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/b;->b:Lcom/xiaomi/onetrack/api/a;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/a;->a(Lcom/xiaomi/onetrack/api/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 103
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_bd} :catch_da
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_d7

    move-object/from16 v7, v18

    if-eqz v8, :cond_d1

    .line 105
    :goto_c1
    :try_start_c1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    const/4 v0, 0x0

    .line 106
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cc} :catch_cf
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_cd

    goto :goto_c1

    :catchall_cd
    move-exception v0

    goto :goto_f6

    :catch_cf
    move-exception v0

    goto :goto_eb

    :cond_d1
    if-eqz v8, :cond_f5

    .line 113
    :goto_d3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_f5

    :catchall_d7
    move-exception v0

    :goto_d8
    const/4 v8, 0x0

    goto :goto_f6

    :catch_da
    move-exception v0

    :goto_db
    move-object/from16 v7, v18

    :goto_dd
    const/4 v8, 0x0

    goto :goto_eb

    :catchall_df
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d8

    :catch_e3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_db

    :catch_e7
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_dd

    .line 110
    :goto_eb
    :try_start_eb
    const-string v2, "AppActiveBroadcastManager"

    const-string v3, "exception while getTraceId"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_cd

    if-eqz v8, :cond_f5

    goto :goto_d3

    :cond_f5
    :goto_f5
    return-object v7

    :goto_f6
    if-eqz v8, :cond_fb

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_fb
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
