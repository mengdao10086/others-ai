.class public Lcom/miui/contentextension/analy/SettingsAnaly;
.super Ljava/lang/Object;
.source "SettingsAnaly.java"


# direct methods
.method public static trackEnterWhitelist()V
    .registers 2

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v1, "G_CLICK_WHITE"

    invoke-static {v1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackOcrEnter()V
    .registers 2

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "G_OCR_ENTER"

    invoke-static {v1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackOcrHardwareError()V
    .registers 2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string v1, "G_OCR_HARDWARE_ERROR"

    invoke-static {v1, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static trackSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v1, "page_type"

    const-string v2, "setting_main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "module_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p0, "set_name"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 64
    const-string p0, "set_package"

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_21
    const-string p0, "set_value"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p0, "tip"

    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p0, "G_CLICK"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSettingClipboardOpen(Z)V
    .registers 4

    if-eqz p0, :cond_5

    .line 19
    const-string p0, "on"

    goto :goto_7

    :cond_5
    const-string p0, "off"

    :goto_7
    const/4 v0, 0x0

    const-string v1, "66.4.1.1.1475"

    .line 17
    const-string v2, "openclipboard"

    invoke-static {v2, v2, p0, v0, v1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSettingImageSaveMode(Ljava/lang/String;)V
    .registers 5

    .line 46
    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 47
    const-string p0, "original"

    goto :goto_23

    .line 48
    :cond_c
    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 49
    const-string p0, "image_SR"

    goto :goto_23

    .line 50
    :cond_17
    const-string v0, "2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 51
    const-string p0, "both"

    goto :goto_23

    :cond_22
    move-object p0, v1

    .line 53
    :goto_23
    const-string v0, "save_type"

    const-string v2, "66.4.6.1.7800"

    const-string v3, "image_save_type"

    invoke-static {v3, v0, p0, v1, v2}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSettingOperationMode(Z)V
    .registers 4

    if-eqz p0, :cond_5

    .line 33
    const-string p0, "single"

    goto :goto_7

    :cond_5
    const-string p0, "couple"

    :goto_7
    const/4 v0, 0x0

    const-string v1, "66.4.3.1.2639"

    .line 31
    const-string v2, "trigger_type"

    invoke-static {v2, v2, p0, v0, v1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSettingTaplusOpen(Z)V
    .registers 4

    if-eqz p0, :cond_5

    .line 26
    const-string p0, "on"

    goto :goto_7

    :cond_5
    const-string p0, "off"

    :goto_7
    const/4 v0, 0x0

    const-string v1, "66.4.1.1.1475"

    .line 24
    const-string v2, "opensetting"

    invoke-static {v2, v2, p0, v0, v1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
