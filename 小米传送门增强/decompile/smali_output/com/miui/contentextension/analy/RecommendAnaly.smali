.class public Lcom/miui/contentextension/analy/RecommendAnaly;
.super Ljava/lang/Object;
.source "RecommendAnaly.java"


# direct methods
.method public static getParams(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceSource()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "category"

    const-string v4, "element_name"

    const-string v5, "element_id"

    if-ne v1, v2, :cond_35

    .line 133
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getIdFromMiuiPlus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDevicePcAppVersionFromMiuiPlus()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "element_package"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 138
    :cond_35
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    return-object v0
.end method

.method public static getParams(Lcom/miui/contentextension/data/recognition/Entity;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/contentextension/data/recognition/Entity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "element_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "intent"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityClass()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getParams(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;ZZZ)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            "ZZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/miui/contentextension/analy/RecommendAnaly;->updateCommercialPackage(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getMid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "element_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "element_package"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercialize()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "element_is_commercial"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "element_commercial_package"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 49
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 50
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.aweme.lite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 51
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "com.taobao.taobao"

    .line 52
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 53
    :cond_6a
    invoke-static {p0}, Lcom/miui/contentextension/analy/RecommendAnaly;->getRecommendPkgInstalled(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "element_package_installed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    if-eqz p3, :cond_82

    .line 56
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/contentextension/utils/Utilities;->getCurrentPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    goto :goto_86

    :cond_82
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPackage()Ljava/lang/String;

    move-result-object p3

    .line 55
    :goto_86
    const-string v1, "element_current_package"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string p3, "element_device_type"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string p3, "element_name"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string p3, "element_sub_name"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getSubTitleDesc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "recommend_pos"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string p3, "category"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p3, "intent"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p3, "link"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "removesend"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isReselected()Z

    move-result p2

    const-string p3, "is_reselected"

    if-eqz p2, :cond_ee

    .line 67
    const-string p2, "yes"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p2, "reselected_way"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getReselectedWay()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 70
    :cond_ee
    const-string p2, "no"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f3
    if-eqz p1, :cond_105

    .line 73
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->isCanOpenWithApp()Z

    move-result p0

    if-eqz p0, :cond_fe

    const-string p0, "app"

    goto :goto_100

    .line 74
    :cond_fe
    const-string p0, "h5"

    .line 75
    :goto_100
    const-string p1, "skip_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_105
    return-object v0
.end method

.method private static getRecommendPkgInstalled(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Z
    .registers 4

    .line 100
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 103
    :try_start_b
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/IntentUtils;->isIntentValid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    .line 104
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_26

    if-eqz p0, :cond_26

    const/4 v2, 0x1

    :catch_26
    :cond_26
    return v2

    .line 109
    :cond_27
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ss.android.ugc.aweme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 110
    sget-object p0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 111
    :cond_3e
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ss.android.ugc.aweme.lite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 112
    sget-object p0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 113
    :cond_55
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ss.android.ugc.live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 114
    sget-object p0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 115
    :cond_6c
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.taobao.taobao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    .line 116
    sget-object p0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_83
    return v2
.end method

.method private static updateCommercialPackage(Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V
    .registers 4

    .line 81
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.ss.android.ugc.aweme"

    if-nez v0, :cond_29

    .line 82
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "com.taobao.taobao"

    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 83
    :cond_22
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCommercializePackage(Ljava/lang/String;)V

    .line 84
    :cond_29
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 85
    invoke-virtual {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCommercializePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 86
    sget-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 87
    invoke-virtual {p0, v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCommercializePackage(Ljava/lang/String;)V

    goto :goto_72

    .line 88
    :cond_4d
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.aweme.lite"

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 89
    invoke-virtual {p0, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCommercializePackage(Ljava/lang/String;)V

    goto :goto_72

    .line 90
    :cond_5d
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.live"

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/utils/PackageHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 91
    invoke-virtual {p0, v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCommercializePackage(Ljava/lang/String;)V

    goto :goto_72

    .line 93
    :cond_6d
    const-string v0, "com.ss.android.ugc.aweme~com.ss.android.ugc.aweme.lite~com.ss.android.ugc.live"

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCommercializePackage(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method
