.class Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph$1;
.super Ljava/lang/Object;
.source "OCRRes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;
    .registers 3

    .line 149
    new-instance v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;

    invoke-direct {v0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;
    .registers 2

    .line 154
    new-array p1, p1, [Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph$1;->newArray(I)[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;

    move-result-object p1

    return-object p1
.end method
