.class public final Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;
.super Ljava/lang/Object;
.source "ContentExtentionOcrUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_REFRESH_TIMES:I

.field private final SERVER_EMPTY_RESULT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final ocrAbility:Lcom/xiaomi/taiyi/api/ocr/OcrAbility;


# direct methods
.method public static synthetic $r8$lambda$6K2gjG7VfLx5BZMZ4zCtmXTcEck()Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;
    .registers 1

    .line 0
    invoke-static {}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->INSTANCE_delegate$lambda$0()Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;

    .line 35
    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "ContentExtentionOcrUtils"

    iput-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->MAX_REFRESH_TIMES:I

    .line 28
    const-string v0, "{}"

    iput-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/xiaomi/taiyi/api/ocr/OcrAbility;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/api/ocr/OcrAbility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->ocrAbility:Lcom/xiaomi/taiyi/api/ocr/OcrAbility;

    return-void
.end method

.method private static final INSTANCE_delegate$lambda$0()Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;
    .registers 1

    .line 35
    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;-><init>()V

    return-object v0
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 21
    sget-object v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->INSTANCE$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getBitMapData(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    return-object p1

    :cond_9
    const v0, 0x4b000

    .line 89
    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/BitmapUtils;->compressBitmapToByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 90
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getBitMapDataFromServiceIfCan(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    .line 77
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 78
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v0, ">>> OCR server token empty return {}"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackOcrHardwareError()V

    .line 80
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    return-object p1

    .line 82
    :cond_26
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getBitMapData(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getData(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 95
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v1, "getData"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_9
    iget v2, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->MAX_REFRESH_TIMES:I

    if-ge v0, v2, :cond_6e

    .line 100
    new-instance v2, Lcom/miui/contentextension/data/http/HttpRequest;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/contentextension/data/http/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    invoke-static {v2}, Lcom/miui/contentextension/data/recognition/RecognitionParamUtil;->addCommonParams(Lcom/miui/contentextension/data/http/HttpRequest;)V

    .line 102
    const-string v3, "image"

    invoke-virtual {v2, v3, p1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z

    move-result v3

    const-string v4, "isSupportTrustZone"

    if-eqz v3, :cond_43

    .line 106
    invoke-static {}, Lcom/miui/contentextension/data/http/TokenManager;->getInstance()Lcom/miui/contentextension/data/http/TokenManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/contentextension/data/http/TokenManager;->getToken(Z)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v3, "token"

    invoke-virtual {v2, v3, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "true"

    invoke-virtual {v2, v4, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 110
    :cond_43
    const-string v1, "false"

    invoke-virtual {v2, v4, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_48
    invoke-virtual {v2, v5}, Lcom/miui/contentextension/data/http/HttpRequest;->setDecryptData(Z)V

    .line 114
    iget-object v1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    .line 116
    :try_start_4d
    invoke-virtual {v2}, Lcom/miui/contentextension/data/http/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/net/UnknownServiceException; {:try_start_4d .. :try_end_51} :catch_52

    goto :goto_59

    .line 118
    :catch_52
    iget-object v3, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v4, "requestServer UnknownServiceException"

    invoke-static {v3, v4}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_59
    invoke-virtual {v2}, Lcom/miui/contentextension/data/http/HttpRequest;->getStatusCode()I

    move-result v2

    const v3, 0x26407c2

    if-ne v2, v3, :cond_66

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_9

    .line 126
    :cond_66
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v0, "return data success"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 129
    :cond_6e
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v0, "Max retry count reached for token refresh"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    return-object p1
.end method

.method private final getOcrResultByTaiYi(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->ocrAbility:Lcom/xiaomi/taiyi/api/ocr/OcrAbility;

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/api/ocr/OcrAbility;->doOCR(Landroid/graphics/Bitmap;)Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object v1, p1, Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;->total_text:Ljava/lang/String;

    :cond_12
    return-object v1
.end method

.method private final isSupport()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->ocrAbility:Lcom/xiaomi/taiyi/api/ocr/OcrAbility;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->isSupport()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getOcrResult(Landroid/graphics/Bitmap;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :try_start_5
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v1, "key_dev_developer_mode_v1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 55
    const-string v3, "key_ocr_use_server"

    invoke-static {v0, v3, v2}, Lcom/miui/contentextension/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    .line 57
    :cond_20
    invoke-direct {p0}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez v2, :cond_43

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getOcrResultByTaiYi(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v2, "use TaiYiOcr"

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 61
    new-instance p1, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_41
    move-exception p1

    goto :goto_56

    .line 64
    :cond_43
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    const-string v1, "use server ocr"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getBitMapDataFromServiceIfCan(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_55} :catch_41

    return-object v0

    .line 68
    :goto_56
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToGetNerResult error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->SERVER_EMPTY_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
