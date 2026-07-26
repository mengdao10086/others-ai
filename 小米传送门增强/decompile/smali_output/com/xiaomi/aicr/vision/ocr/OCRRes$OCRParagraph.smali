.class public Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;
.super Ljava/lang/Object;
.source "OCRRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lines:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;

.field public paragraph_text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph$1;

    invoke-direct {v0}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;->lines:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;->paragraph_text:Ljava/lang/String;

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

    .line 165
    iget-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;->lines:[Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRLine;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 166
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$OCRParagraph;->paragraph_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
