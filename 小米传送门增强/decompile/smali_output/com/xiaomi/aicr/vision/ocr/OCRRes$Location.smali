.class public Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;
.super Ljava/lang/Object;
.source "OCRRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public box:[F

.field public poly:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location$1;

    invoke-direct {v0}, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;->poly:[F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;->box:[F

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
    .registers 3

    .line 45
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;->poly:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 46
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/ocr/OCRRes$Location;->box:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
