.class public Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;
.super Ljava/lang/Object;
.source "OCRRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Character:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRChar;

.field public line_confidence:F

.field public line_id:I

.field public line_text:Ljava/lang/String;

.field public location:Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine$1;

    invoke-direct {v0}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-class v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->location:Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_text:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_id:I

    .line 100
    sget-object v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRChar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRChar;

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->Character:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRChar;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_confidence:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->location:Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->Character:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRChar;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 127
    iget p2, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->line_confidence:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
