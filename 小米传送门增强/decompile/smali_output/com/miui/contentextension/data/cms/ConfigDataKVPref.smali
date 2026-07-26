.class public Lcom/miui/contentextension/data/cms/ConfigDataKVPref;
.super Ljava/lang/Object;
.source "ConfigDataKVPref.java"


# static fields
.field private static sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static getCardExposePercent()I
    .registers 3

    .line 90
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_card_expose_percent"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCardExposeStayTime()J
    .registers 4

    .line 99
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_card_expose_stay_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateTime()J
    .registers 4

    .line 58
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_file_timestamp_config_data"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrefFileHash()Ljava/lang/String;
    .registers 3

    .line 50
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_file_hash_config_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInternal(Ljava/lang/String;)J
    .registers 6

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_a

    return-wide v1

    .line 72
    :cond_a
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_key_time_internal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3

    .line 31
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    return-void

    .line 34
    :cond_5
    const-string v0, "pref_file_config_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static isSearchWithQsbClient()Z
    .registers 3

    .line 81
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_search_with_qsb_client"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCardExposePercent(I)V
    .registers 3

    .line 86
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_card_expose_percent"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCardExposeStayTime(J)V
    .registers 4

    .line 95
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_card_expose_stay_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIsSearchWithQsbClient(Z)V
    .registers 3

    .line 77
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_search_with_qsb_client"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIsSegmentLocallyWhenQSearch(Z)V
    .registers 3

    .line 104
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_segment_locally_when_qSearch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPrefFileHash(Ljava/lang/String;)V
    .registers 3

    .line 46
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_file_hash_config_data"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTimeInterval(Ljava/lang/String;J)V
    .registers 6

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 65
    :cond_7
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_key_time_internal_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUpdateTime()V
    .registers 4

    .line 54
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_file_timestamp_config_data"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
