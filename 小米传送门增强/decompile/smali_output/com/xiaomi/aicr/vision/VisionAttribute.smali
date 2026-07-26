.class public Lcom/xiaomi/aicr/vision/VisionAttribute;
.super Ljava/lang/Object;
.source "VisionAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aicr/vision/VisionAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExtractCombinedSubject:Z

.field private mIsMaxAreaAsSingleSubject:Z

.field private mIsPrivicy:Z

.field private mParams:Landroid/os/Bundle;

.field private mVisionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Lcom/xiaomi/aicr/vision/VisionAttribute$1;

    invoke-direct {v0}, Lcom/xiaomi/aicr/vision/VisionAttribute$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aicr/vision/VisionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/xiaomi/aicr/vision/VisionAttribute;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/aicr/vision/VisionAttribute;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/aicr/vision/VisionAttribute;-><init>(IZZZ)V

    return-void
.end method

.method private constructor <init>(IZZZ)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mVisionType:I

    .line 45
    iput-boolean p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsPrivicy:Z

    .line 46
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mParams:Landroid/os/Bundle;

    .line 47
    iput-boolean p3, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsExtractCombinedSubject:Z

    .line 48
    iput-boolean p4, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsMaxAreaAsSingleSubject:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mVisionType:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsPrivicy:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mParams:Landroid/os/Bundle;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsExtractCombinedSubject:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsMaxAreaAsSingleSubject:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mVisionType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 164
    iget p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mVisionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsPrivicy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 167
    iget-boolean p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsExtractCombinedSubject:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    iget-boolean p2, p0, Lcom/xiaomi/aicr/vision/VisionAttribute;->mIsMaxAreaAsSingleSubject:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
