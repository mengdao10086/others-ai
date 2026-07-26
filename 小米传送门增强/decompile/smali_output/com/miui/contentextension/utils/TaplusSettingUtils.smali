.class public Lcom/miui/contentextension/utils/TaplusSettingUtils;
.super Ljava/lang/Object;
.source "TaplusSettingUtils.java"


# direct methods
.method public static getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p0, :cond_2d

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 58
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaplusSetting:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaplusSettingUtils"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return p2
.end method

.method public static isClipboardSettingOpen(Landroid/content/Context;)Z
    .registers 3

    .line 71
    const-string v0, "key_enable_clipboard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isTaplusEnable(Landroid/content/Context;)Z
    .registers 8

    .line 20
    const-string v0, "key_enable_taplus"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    :try_start_4
    invoke-static {p0, v0, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_13

    if-eqz v3, :cond_2f

    .line 24
    :try_start_a
    invoke-static {p0, v0, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_2f

    :catch_11
    move-exception v4

    goto :goto_15

    :catch_13
    move-exception v4

    move v3, v2

    .line 28
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTaplusEnable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TaplusSettingUtils"

    invoke-static {v5, v4}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    if-nez v3, :cond_39

    .line 31
    invoke-static {p0, v0, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :cond_39
    :goto_39
    return v1
.end method

.method public static putTaplusEnable(Landroid/content/Context;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 43
    :cond_3
    const-string v0, "key_enable_taplus"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p0, :cond_2c

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 49
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_2c

    :catch_11
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "putTaplusSetting:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaplusSettingUtils"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static setClipboardSettings(Landroid/content/Context;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 67
    :cond_3
    const-string v0, "key_enable_clipboard"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTaplusEnableStatus(Landroid/content/Context;Z)V
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaplusEnableStatus enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplusSettingUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusEnable(Landroid/content/Context;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setLongPressEnableStatus(Landroid/content/Context;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->switchCatcherConfig(Landroid/content/Context;Z)V

    return-void
.end method
