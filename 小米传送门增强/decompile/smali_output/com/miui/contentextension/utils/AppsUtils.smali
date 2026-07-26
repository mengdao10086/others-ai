.class public Lcom/miui/contentextension/utils/AppsUtils;
.super Ljava/lang/Object;
.source "AppsUtils.java"


# direct methods
.method public static generateOpenIntent(Landroid/content/Context;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Landroid/content/Intent;
    .registers 5

    .line 94
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_59

    const/4 v0, 0x0

    .line 96
    :try_start_c
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/miui/contentextension/utils/IntentUtils;->isIntentValid(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4e

    .line 103
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 104
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p0}, Lcom/miui/contentextension/utils/AppsUtils;->isResizeable(I)Z

    move-result p0

    .line 105
    const-string v2, "activity_resizeable"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    goto :goto_4e

    :catch_41
    move-exception p0

    goto :goto_4b

    .line 108
    :cond_43
    const-string p0, "Taplus.AppsUtils"

    const-string v2, "intent is invalid !!"

    invoke-static {p0, v2}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4a} :catch_41

    goto :goto_4e

    .line 111
    :goto_4b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4e
    :goto_4e
    if-nez v1, :cond_83

    .line 115
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/AppsUtils;->getIntentWithBrowser(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_83

    .line 117
    :cond_59
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 119
    invoke-static {p0}, Lcom/miui/contentextension/utils/AppsUtils;->getLaunchIntentForDouyin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_83

    .line 120
    :cond_6a
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.taobao.taobao"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 121
    invoke-static {p0, v2}, Lcom/miui/contentextension/utils/AppsUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_83

    .line 123
    :cond_7b
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/AppsUtils;->getIntentWithBrowser(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_83
    :goto_83
    if-nez v0, :cond_8d

    .line 126
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getDetailUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/AppsUtils;->getIntentWithBrowser(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_8d
    if-eqz v0, :cond_9c

    .line 129
    const-string p0, "canOpenWithApp"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1, v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->setCanOpenWithApp(Z)V

    const/high16 p0, 0x10000000

    .line 131
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_9c
    return-object v0
.end method

.method public static generateOpenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 88
    new-instance v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    invoke-direct {v0, p1, p2}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/AppsUtils;->generateOpenIntent(Landroid/content/Context;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntentWithBrowser(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mibrowser://home?origin=contentextension&web_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    const-string p0, "activity_resizeable"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return-object v0
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLaunchIntent packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.AppsUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    return-object v2

    .line 152
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLaunchIntent exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getLaunchIntentForDouyin(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 137
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/AppsUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_16

    .line 139
    const-string v0, "com.ss.android.ugc.aweme.lite"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/AppsUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_16

    .line 141
    const-string v0, "com.ss.android.ugc.live"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/AppsUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLaunchIntentForDouyin: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.AppsUtils"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static isResizeable(I)Z
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static openGlobalSearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 199
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qsb://query?ref=taplus_main&web_search=true&back_homepage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.quicksearchbox"

    .line 203
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "&words="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_58

    :catch_3d
    move-exception p0

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "openGlobalSearch:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.ContentExtension"

    invoke-static {p1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 70
    const-string v1, "setLaunchWindowingMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const-class v1, Ljava/lang/String;

    const-string v2, "getBasePackageName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v6, p0

    .line 77
    invoke-static {v6, v1, v2, v5, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod2(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 81
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const/high16 v12, 0x10000000

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    move-object/from16 v7, p1

    .line 75
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_65

    :catch_4e
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.AppsUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void
.end method
