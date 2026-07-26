.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRChar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OCRChar"
.end annotation


# instance fields
.field public char_confidence:F

.field public char_text:Ljava/lang/String;

.field public location:Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
