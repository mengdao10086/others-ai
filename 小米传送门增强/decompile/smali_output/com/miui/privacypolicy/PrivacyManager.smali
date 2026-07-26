.class public Lcom/miui/privacypolicy/PrivacyManager;
.super Ljava/lang/Object;
.source "PrivacyManager.java"


# direct methods
.method private static checkThreadPermission(Ljava/lang/String;)V
    .registers 3

    .line 209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    return-void

    .line 210
    :cond_b
    const-string v0, "Privacy_PrivacyManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    .line 27
    :try_start_3
    const-string v1, "can not request privacy agree in main thread!"

    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 28
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    if-eqz v1, :cond_f

    .line 32
    monitor-exit v0

    const/4 p0, -0x4

    return p0

    .line 34
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/miui/privacypolicy/PrivacyAgreeManager;->handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_25

    .line 39
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public static declared-synchronized privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    .line 73
    :try_start_3
    const-string v1, "can not request privacy revoke in main thread!"

    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 74
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    if-eqz v1, :cond_f

    .line 78
    monitor-exit v0

    const/4 p0, -0x4

    return p0

    .line 80
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v1}, Lcom/miui/privacypolicy/PrivacyRevokeManager;->handlePrivacyRevokeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1a

    .line 84
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static declared-synchronized requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    .line 118
    :try_start_3
    const-string v1, "can not request privacy update in main thread!"

    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 119
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_15

    const/4 p0, -0x4

    .line 123
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_1c

    :cond_15
    const/4 v1, 0x0

    .line 126
    :try_start_16
    invoke-static {p0, p1, p2, v1, v1}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_13

    throw p0
.end method

.method public static declared-synchronized requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-class v0, Lcom/miui/privacypolicy/PrivacyManager;

    monitor-enter v0

    .line 137
    :try_start_3
    const-string v1, "can not request privacy update in main thread!"

    invoke-static {v1}, Lcom/miui/privacypolicy/PrivacyManager;->checkThreadPermission(Ljava/lang/String;)V

    .line 138
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_16

    const/4 p0, -0x4

    .line 142
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto/16 :goto_df

    .line 146
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/privacypolicy/FileUtils;->isVersionFileExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_ce

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/privacypolicy/FileUtils;->isAgreeErrorFileExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_privacy_update_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v5, v3

    if-gez v1, :cond_59

    const/4 p0, -0x5

    .line 155
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_13

    monitor-exit v0

    return-object p0

    .line 157
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_privacy_update_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/miui/privacypolicy/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "privacy_agree_error"

    invoke-static {v3, v4, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_8b
    .catchall {:try_start_59 .. :try_end_8b} :catchall_13

    if-nez v4, :cond_a4

    .line 166
    :try_start_8d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v3, "idContent"

    invoke-virtual {v4, v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    const-string v3, "policyName"

    invoke-virtual {v4, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    const-string v3, "timestamp"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a4} :catch_a8
    .catchall {:try_start_8d .. :try_end_a4} :catchall_13

    :cond_a4
    :goto_a4
    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    goto :goto_b1

    :catch_a8
    move-exception v3

    .line 171
    :try_start_a9
    const-string v4, "Privacy_PrivacyManager"

    const-string v5, "parse last jsonObject error, "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 175
    :goto_b1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/miui/privacypolicy/PrivacyAgreeManager;->handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_be

    const/4 p0, -0x6

    .line 183
    :cond_be
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_c2
    .catchall {:try_start_a9 .. :try_end_c2} :catchall_13

    monitor-exit v0

    return-object p0

    .line 185
    :cond_c4
    :try_start_c4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/miui/privacypolicy/PrivacyUpdateManager;->handlePrivacyUpdateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_13

    .line 190
    monitor-exit v0

    return-object p0

    .line 194
    :cond_ce
    :try_start_ce
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/miui/privacypolicy/PrivacyQueryManager;->handlePrivacyQueryTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_d9

    const/4 p0, -0x7

    .line 202
    :cond_d9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_dd
    .catchall {:try_start_ce .. :try_end_dd} :catchall_13

    monitor-exit v0

    return-object p0

    :goto_df
    :try_start_df
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_13

    throw p0
.end method
