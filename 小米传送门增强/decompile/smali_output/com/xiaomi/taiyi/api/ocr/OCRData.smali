.class public Lcom/xiaomi/taiyi/api/ocr/OCRData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/api/ocr/OCRData$RegionData;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$RegionDetectResult;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$FocusPoint;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$FocusFlags;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$YUVImage;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$RotateFlags;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$OCREntity;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRParagraph;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRLine;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRChar;,
        Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;
    }
.end annotation


# static fields
.field public static final ENTITY_TYPE_DELIVERY_NUMBER:I = 0x3

.field public static final ENTITY_TYPE_EMAIL:I = 0x2

.field public static final ENTITY_TYPE_PHONE_NUMBER:I = 0x1

.field public static final ENTITY_TYPE_WEBSITE:I = 0x0

.field public static final ERR_CODE_MODEL_FAIL:I = -0x2

.field public static final ERR_CODE_NOT_INIT:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
