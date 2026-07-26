.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$OCREntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OCREntity"
.end annotation


# instance fields
.field public end_index:I

.field public entity_text:Ljava/lang/String;

.field public entity_type:I

.field public line_id:I

.field public location:Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;

.field public start_index:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
