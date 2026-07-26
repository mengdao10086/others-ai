.class public Lcom/xiaomi/taiyi/api/ocr/OCRData$RegionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/api/ocr/OCRData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionData"
.end annotation


# instance fields
.field public regionImg:Landroid/graphics/Bitmap;

.field public regionLoc:Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;

.field public texts_locations:[Lcom/xiaomi/taiyi/api/ocr/OCRData$Location;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
