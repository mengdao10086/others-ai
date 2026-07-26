.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OCRResult"
.end annotation


# instance fields
.field public entities:[Lcom/xiaomi/taiyi/api/ocr/OCRData$OCREntity;

.field public paragraphs:[Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRParagraph;

.field public total_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
