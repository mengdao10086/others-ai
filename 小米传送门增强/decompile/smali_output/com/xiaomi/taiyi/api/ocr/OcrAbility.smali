.class public final Lcom/xiaomi/taiyi/api/ocr/OcrAbility;
.super Lcom/xiaomi/taiyi/sdk/core/AIAbility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/api/ocr/OcrAbility$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/api/ocr/OcrAbility$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/api/ocr/OcrAbility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/api/ocr/OcrAbility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/api/ocr/OcrAbility;->Companion:Lcom/xiaomi/taiyi/api/ocr/OcrAbility$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "ocr"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apiLevel()I
    .registers 2

    .line 0
    const/16 v0, 0x64

    return v0
.end method

.method public final doOCR(Landroid/graphics/Bitmap;)Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;
    .registers 4

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/api/ocr/OcrAbility;->doOCRForJson(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/api/ocr/OcrAbility$doOCR$1;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/api/ocr/OcrAbility$doOCR$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;

    return-object p1
.end method

.method public final doOCRForJson(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 11

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->createRequest()Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v1

    const-string v2, "doOCR"

    invoke-virtual {v1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->setMethod(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "bitmap"

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBitmap$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->execute(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->getJsonResult()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
