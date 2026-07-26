.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OCRLine"
.end annotation


# instance fields
.field public Character:[Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRChar;

.field public line_confidence:F

.field public line_id:I

.field public line_text:Ljava/lang/String;

.field public location:Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
