.class public Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;
.super Ljava/lang/Object;
.source "TextRecommendationUtils.java"


# static fields
.field public static REG_EX_TAOBAO:Ljava/lang/String; = null

.field private static sIsSegmentingPassage:Z = false

.field private static sLastRecommendationTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastSegmentPassage:Ljava/lang/String;

.field private static sLastSegmentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOcrSegmentResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecommendResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSegmentResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsLastRecommendationTask()Landroid/os/AsyncTask;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastRecommendationTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsLastSegmentTask()Landroid/os/AsyncTask;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSegmentResult()Ljava/util/ArrayList;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsIsSegmentingPassage(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sIsSegmentingPassage:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsLastSegmentPassage(Ljava/lang/String;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentPassage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsSegmentResult(Ljava/util/ArrayList;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$smonSegmentReady(Ljava/util/ArrayList;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onSegmentReady(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sOcrSegmentResult:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sRecommendResults:Ljava/util/ArrayList;

    .line 39
    const-string v0, "\u6dd8"

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->REG_EX_TAOBAO:Ljava/lang/String;

    return-void
.end method

.method public static clearContents()V
    .registers 1

    .line 51
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sOcrSegmentResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getLocalCatRes(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_76

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_76

    .line 309
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    :goto_12
    move p0, v0

    goto :goto_55

    :sswitch_14
    const-string v1, "PHONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 p0, 0x5

    goto :goto_55

    :sswitch_1f
    const-string v1, "MAIL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_12

    :cond_28
    const/4 p0, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "URL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_12

    :cond_33
    const/4 p0, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "POI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_12

    :cond_3e
    const/4 p0, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "EN_2_CH_WORD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto :goto_12

    :cond_49
    const/4 p0, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "EN_2_CH_PARA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_12

    :cond_54
    const/4 p0, 0x0

    :goto_55
    packed-switch p0, :pswitch_data_92

    return v0

    :pswitch_59
    const p0, 0x7f0800a2

    return p0

    :pswitch_5d
    const p0, 0x7f080092

    return p0

    .line 312
    :pswitch_61
    const-string p0, "\u76f4\u8fbe\u6296\u97f3\u7535\u5546"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6a

    return v0

    :cond_6a
    const p0, 0x7f08008d

    return p0

    :pswitch_6e
    const p0, 0x7f08009b

    return p0

    :pswitch_72
    const p0, 0x7f0800ab

    return p0

    :cond_76
    :goto_76
    return v0

    nop

    :sswitch_data_78
    .sparse-switch
        -0xdc323a9 -> :sswitch_4b
        -0xdbfc07f -> :sswitch_40
        0x1362a -> :sswitch_35
        0x1494f -> :sswitch_2a
        0x23fdb7 -> :sswitch_1f
        0x489454e -> :sswitch_14
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_6e
        :pswitch_61
        :pswitch_5d
        :pswitch_59
    .end packed-switch
.end method

.method public static getRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 166
    const-string v0, "Taplus.TextRecommendationUtils"

    const-string v1, "get Recommend With AsyncTask"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastRecommendationTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 170
    :cond_f
    new-instance v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastRecommendationTask:Landroid/os/AsyncTask;

    .line 214
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static getSegmentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 145
    const-string v0, "wordList"

    :try_start_2
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 146
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 148
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 149
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 150
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->parseWordList(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    goto :goto_41

    :catch_31
    move-exception p1

    .line 154
    const-string v0, "Taplus.TextRecommendationUtils"

    const-string v1, "getSegmentList "

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 156
    sget-object p1, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentPassage:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->segmentPassageLocally(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static getTextSegmentResponse(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 69
    const-string v0, "get text segment response"

    const-string v1, "Taplus.TextRecommendationUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 74
    :cond_e
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentPassage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 75
    const-string v0, "is last segment passage"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->debugData(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-boolean v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sIsSegmentingPassage:Z

    if-eqz v0, :cond_20

    return-void

    .line 79
    :cond_20
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 80
    const-string p0, "cache"

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/analy/Analy;->trackApiReceiveSuccessEvent(Ljava/lang/String;J)V

    .line 81
    const-string p0, "getTextSegmentResponse: track g_expose"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->onSegmentReady(Ljava/util/ArrayList;)V

    return-void

    .line 87
    :cond_3c
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_44

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 90
    :cond_44
    new-instance v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    sput-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sLastSegmentTask:Landroid/os/AsyncTask;

    .line 119
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static onDestroy()V
    .registers 1

    .line 56
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sSegmentResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static onRecommendationResultOk(Ljava/lang/String;Z)V
    .registers 7

    .line 218
    const-string v0, "Taplus.TextRecommendationUtils"

    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->clearContents()V

    const/4 v1, 0x0

    .line 221
    :try_start_6
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 222
    invoke-virtual {v2, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 224
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    const-string v4, "cards"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 227
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 228
    new-instance v4, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$3;

    invoke-direct {v4}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$3;-><init>()V

    .line 229
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_27

    .line 232
    sget-object v3, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    :catch_63
    move-exception p0

    goto :goto_83

    .line 234
    :cond_65
    const-string v4, "wordsList"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-static {v2}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->parseWordList(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v2

    .line 236
    sget-object v3, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sOcrSegmentResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 237
    sget-object v3, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sOcrSegmentResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_81} :catch_63

    const/4 v1, 0x1

    goto :goto_27

    .line 243
    :goto_83
    const-string v2, "onRecommendationResultOk"

    invoke-static {v0, v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_88
    sget-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sRecommendResults:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->onDetailReady(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_99

    .line 248
    const-string p0, "onRecommendationResultOk: track g_expose"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->sOcrSegmentResult:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/miui/contentextension/text/RecommendationMonitor;->onSegmentReady(Ljava/util/ArrayList;Z)V

    :cond_99
    return-void
.end method

.method private static onSegmentReady(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x1

    .line 124
    invoke-static {v0, p0}, Lcom/miui/contentextension/text/RecommendationMonitor;->onSegmentReady(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static parseWordList(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 289
    new-instance v1, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$5;

    invoke-direct {v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$5;-><init>()V

    .line 290
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 291
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1b

    .line 292
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    return-object p0
.end method

.method public static parseWordListFormServer(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation

    .line 254
    const-string v0, "wordsList"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Taplus.TextRecommendationUtils"

    if-eqz v1, :cond_11

    .line 255
    const-string p0, "parseWordListFromServer: json is empty"

    invoke-static {v3, p0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 260
    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 263
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 264
    const-string p0, "parseWordListFromServer: wordsList field not found"

    invoke-static {v3, p0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_25
    move-exception p0

    goto :goto_54

    .line 268
    :cond_27
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_37

    .line 271
    const-string p0, "parseWordListFromServer: wordsList is not an array"

    invoke-static {v3, p0}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 276
    :cond_37
    new-instance v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$4;

    invoke-direct {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$4;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4e

    goto :goto_53

    .line 280
    :cond_4e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_53} :catch_25

    :goto_53
    return-object p0

    .line 282
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseWordListFormServer error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static segmentPassageWithServer(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/miui/contentextension/data/http/HttpRequest;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    const-string v1, "passage"

    invoke-virtual {v0, v1, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d0

    .line 130
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->setConnectTimeout(I)V

    const/16 v1, 0xbb8

    .line 131
    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v0, v2}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 134
    :try_start_1d
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p0, v0, p2}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getSegmentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_33

    :catch_25
    move-exception v0

    .line 137
    const-string v1, "Taplus.TextRecommendationUtils"

    const-string v2, "segmentPassageWithServer"

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 139
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->segmentPassageLocally(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :goto_33
    return-void
.end method

.method public static setTaobaoKey(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 64
    :cond_7
    sput-object p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->REG_EX_TAOBAO:Ljava/lang/String;

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTaobaoKey\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->REG_EX_TAOBAO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taplus.TextRecommendationUtils"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static tryToGetRecommendation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 161
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 162
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
