.class public Lcom/miui/contentextension/utils/ContentCatcherUtil;
.super Ljava/lang/Object;
.source "ContentCatcherUtil.java"


# direct methods
.method public static adjustIfOpenImageCatcher(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 247
    const-string v1, "pref_image_recognize_enabled"

    invoke-static {p0, v1, v0}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 252
    :cond_a
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    const-string v2, "com.miui.contentextension"

    const-string v3, "image_pick"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 254
    invoke-static {p0, v1, v4}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static closeXiaoaiLongPressMode(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setXiaoaiRecognizeGestureType(Landroid/content/Context;I)V

    return-void
.end method

.method private static getCatcherPressMode(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x1

    .line 172
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "support_long_press_mode"

    invoke-static {p0, v1, v0}, Lmiuix/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCatcherPressMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.ContentCatcherUtil"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return v0
.end method

.method public static getCurrentPressItem(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 202
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f100249

    if-nez v0, :cond_12

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_12
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCatcherPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_22

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntForUser(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    .line 110
    :try_start_1
    const-string v1, "android.provider.Settings$System"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getIntForUser"

    const-string v4, "android.content.ContentResolver"

    .line 111
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5, v2}, [Ljava/lang/Class;

    move-result-object v4

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p0, p1, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 110
    invoke-static {v1, v2, v3, v4, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_49

    :catch_2e
    move-exception p0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntForUser:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ContentCatcherUtil"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return v0
.end method

.method public static getPressItemIndex(Landroid/content/Context;)I
    .registers 2

    .line 195
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 198
    :cond_8
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCatcherPressMode(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getPressItems(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .registers 3

    .line 182
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f100249

    if-eqz v0, :cond_21

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100244

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getXiaoaiRecognizeGestureMode(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "xiaoai_recognize_gesture_type"

    invoke-static {p0, v1, v0}, Lmiuix/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXiaoaiRecognizeGestureMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.ContentCatcherUtil"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return v0
.end method

.method public static isCatcherSupportClipboard(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 136
    :try_start_1
    const-string v1, "support_clipboard_mode"

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getIntForUser(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :catch_b
    move-exception p0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCatcherSupportClipboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.ContentCatcherUtil"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return v0
.end method

.method public static isCatcherSupportDoublePress(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 122
    :try_start_1
    const-string v1, "support_double_press_mode"

    invoke-static {p0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getIntForUser(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :catch_b
    move-exception p0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCatcherSupportDoublePress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.ContentCatcherUtil"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return v0
.end method

.method public static isCurrentInDoubleMode(Landroid/content/Context;)Z
    .registers 3

    .line 216
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 220
    :cond_8
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCatcherPressMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_10

    move v1, v0

    :cond_10
    return v1
.end method

.method public static isXiaoaiCurrentInDoubleMode(Landroid/content/Context;)Z
    .registers 2

    .line 307
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getXiaoaiRecognizeGestureMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static refreshKeepCatcherProcessAliveEnable(Landroid/content/Context;)V
    .registers 3

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_content_extension_clipboard_mode"

    .line 92
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->shouldKeepCatcherProcessAlive(Landroid/content/Context;)Z

    move-result p0

    .line 91
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_29

    :catch_e
    move-exception p0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshKeepCatcherProcessAliveEnable\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taplus.ContentCatcherUtil"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public static setCatcherClipboardEnable(Landroid/content/Context;Z)V
    .registers 4

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "taplus_clipboard_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    :catch_a
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCatcherClipboardEnable\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ContentCatcherUtil"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_25
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->refreshKeepCatcherProcessAliveEnable(Landroid/content/Context;)V

    return-void
.end method

.method private static setCatcherPressMode(Landroid/content/Context;I)V
    .registers 4

    .line 158
    const-string v0, "support_long_press_mode"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lmiuix/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_32

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCatcherPressMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ContentCatcherUtil"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public static setCurrentPressItem(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 226
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 229
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    .line 230
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherPressMode(Landroid/content/Context;I)V

    goto :goto_32

    .line 231
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x2

    .line 232
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherPressMode(Landroid/content/Context;I)V

    :cond_32
    :goto_32
    return-void
.end method

.method public static setLongPressEnableStatus(Landroid/content/Context;Z)V
    .registers 4

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content_catcher_network_enabled_content_extension"

    invoke-static {v0, v1, p1}, Lmiuix/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    :catch_a
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongPressEnableStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.ContentCatcherUtil"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_25
    invoke-static {p0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->refreshKeepCatcherProcessAliveEnable(Landroid/content/Context;)V

    return-void
.end method

.method private static setXiaoaiRecognizeGestureType(Landroid/content/Context;I)V
    .registers 3

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "xiaoai_recognize_gesture_type"

    invoke-static {p0, v0, p1}, Lmiuix/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    :catch_a
    move-exception p0

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setXiaoaiRecognizeGestureType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ContentCatcherUtil"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method private static shouldKeepCatcherProcessAlive(Landroid/content/Context;)Z
    .registers 5

    .line 99
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x0

    const-string v2, "taplus_clipboard_mode"

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    .line 100
    invoke-static {p0, v2}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getIntForUser(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v3, :cond_f

    move v1, v3

    :cond_f
    return v1

    .line 102
    :cond_10
    const-string v0, "content_catcher_network_enabled_content_extension"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getIntForUser(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1e

    .line 103
    invoke-static {p0, v2}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getIntForUser(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v3, :cond_1f

    :cond_1e
    move v1, v3

    :cond_1f
    return v1
.end method

.method public static switchCatcherConfig(Landroid/content/Context;Z)V
    .registers 5

    .line 237
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    const-string v1, "text_pick"

    const-string v2, "com.miui.contentextension"

    invoke-virtual {v0, v2, v1, p1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 239
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    const-string v1, "image_pick"

    invoke-virtual {v0, v2, v1, p1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 242
    const-string v0, "pref_image_recognize_enabled"

    invoke-static {p0, v0, p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->putTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
