.class public Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;
.super Ljava/lang/Object;
.source "ContentExtensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/common/ContentExtensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfigInfo"
.end annotation


# instance fields
.field mActivityConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field mConfigJson:Lorg/json/JSONObject;

.field mConfigRange:I

.field mPackageName:Ljava/lang/String;

.field mType:I

.field triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->triggers:Ljava/util/List;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigJson:Lorg/json/JSONObject;

    .line 412
    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mPackageName:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->triggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mType:I

    .line 415
    iput v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    .line 416
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setupConfig(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 363
    const-string v2, "activityName"

    const-string v3, "Taplus.Content.presentationConfig"

    :try_start_8
    iput-object v0, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigJson:Lorg/json/JSONObject;

    .line 364
    const-string v4, "packageName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mPackageName:Ljava/lang/String;

    .line 365
    const-string v5, "com.miui.contentcather"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_18} :catch_2f

    const-string v5, "configList"

    if-eqz v4, :cond_32

    .line 366
    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v0, "taobaoKey"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->setTaobaoKey(Ljava/lang/String;)V

    return-void

    :catch_2f
    move-exception v0

    goto/16 :goto_108

    .line 372
    :cond_32
    const-string v4, "trigger"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v7, 0x0

    .line 373
    :goto_39
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4b

    .line 374
    iget-object v8, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->triggers:Ljava/util/List;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 376
    :cond_4b
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mType:I

    .line 377
    const-string v4, "configRange"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    .line 378
    iget-object v4, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 379
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    return-void

    .line 380
    :cond_67
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 381
    :goto_6c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_120

    .line 382
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 383
    new-instance v8, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;

    invoke-direct {v8}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;-><init>()V

    .line 384
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mActivityName:Ljava/lang/String;

    .line 385
    const-string v0, "validArea"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 386
    iget-object v0, v8, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mValidAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_91
    if-ge v11, v10, :cond_f7

    .line 388
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 389
    new-instance v13, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;

    invoke-direct {v13}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;-><init>()V
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_9c} :catch_2f

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 391
    :try_start_9e
    const-string v0, "validAreaTop"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_a4} :catch_ae

    move-object/from16 p1, v7

    div-double v6, v16, v14

    double-to-float v0, v6

    :try_start_a9
    iput v0, v13, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaTop:F
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_a9 .. :try_end_ab} :catch_ac

    goto :goto_c9

    :catch_ac
    move-exception v0

    goto :goto_b1

    :catch_ae
    move-exception v0

    move-object/from16 p1, v7

    .line 393
    :goto_b1
    :try_start_b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mValidAreaTop JSONException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_c9} :catch_2f

    .line 396
    :goto_c9
    :try_start_c9
    const-string v0, "validAreaBottom"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v6, v14

    double-to-float v0, v6

    iput v0, v13, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaBottom:F
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_c9 .. :try_end_d3} :catch_d4

    goto :goto_ed

    :catch_d4
    move-exception v0

    .line 398
    :try_start_d5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mValidAreaBottom JSONException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_ed
    iget-object v0, v8, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mValidAreas:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p1

    goto :goto_91

    :cond_f7
    move-object/from16 p1, v7

    .line 402
    iget-object v0, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mActivityConfig:Ljava/util/Map;

    move-object/from16 v6, p1

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_104} :catch_2f

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6c

    .line 406
    :goto_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    return-void
.end method

.method public shouldDisable()Z
    .registers 3

    .line 358
    iget v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->mConfigRange:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method
