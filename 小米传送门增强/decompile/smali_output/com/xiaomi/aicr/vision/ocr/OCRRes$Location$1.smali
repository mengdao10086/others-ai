.class Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location$1;
.super Ljava/lang/Object;
.source "OCRRes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;
    .registers 3

    .line 29
    new-instance v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    invoke-direct {v0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;
    .registers 2

    .line 34
    new-array p1, p1, [Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location$1;->newArray(I)[Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    move-result-object p1

    return-object p1
.end method
