.class public Lcom/miui/privacypolicy/PrivacyAgreeManager;
.super Ljava/lang/Object;
.source "PrivacyAgreeManager.java"


# direct methods
.method protected static handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 28
    const-string v0, "Privacy_AgreeManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 32
    :cond_11
    const-string v2, "pkg"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p4, "policyName"

    invoke-interface {v1, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string p4, "idContent"

    invoke-interface {v1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p2, "miuiVersion"

    sget-object p4, Lcom/miui/privacypolicy/NetUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 37
    invoke-static {p0}, Lcom/miui/privacypolicy/PackageUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 39
    :cond_31
    const-string p2, "apkVersion"

    invoke-interface {v1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p2, "privacy_temp_update_version"

    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 41
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_44

    const-string p4, ""

    :cond_44
    const-string p5, "policyVersion"

    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string p5, "language"

    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p4

    const-string p5, "region"

    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p4, "timestamp"

    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :try_start_6d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_75
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_97

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 51
    invoke-virtual {p3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_90} :catch_91

    goto :goto_75

    :catch_91
    move-exception p4

    .line 54
    const-string p5, "build jsonObject error, "

    invoke-static {v0, p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_97
    const-string p4, "https://data.sec.miui.com/privacy/agree/v1"

    sget-object p5, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    invoke-static {v1, p4, p5, p3}, Lcom/miui/privacypolicy/NetUtils;->request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p4

    .line 58
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string v1, "privacy_agree_error"

    if-eqz p5, :cond_b0

    .line 60
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 64
    :cond_b0
    :try_start_b0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    const-string p4, "code"

    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    .line 66
    const-string v2, "message"

    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-ne p4, v3, :cond_fc

    .line 67
    const-string p4, "success"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_fc

    .line 68
    const-string p4, "data"

    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 69
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string p4, "latestPolicyVersion"

    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_fc

    .line 73
    const-string p5, "privacy_version"

    invoke-static {p4, p0, p5, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    const-string p2, "privacy_update"

    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f4} :catch_f6

    const/4 p0, 0x1

    return p0

    :catch_f6
    move-exception p2

    .line 84
    const-string p4, "handlePrivacyAgreeTask error, "

    invoke-static {v0, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_fc
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0
.end method
