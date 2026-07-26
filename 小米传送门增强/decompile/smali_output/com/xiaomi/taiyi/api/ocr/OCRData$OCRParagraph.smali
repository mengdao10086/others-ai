.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OCRParagraph"
.end annotation


# instance fields
.field public lines:[Lcom/xiaomi/taiyi/api/ocr/OCRData$OCRLine;

.field public paragraph_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
