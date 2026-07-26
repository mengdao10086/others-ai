.class Lcom/xiaomi/aicr/vision/VisionObject$1;
.super Ljava/lang/Object;
.source "VisionObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/vision/VisionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aicr/vision/VisionObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/VisionObject;
    .registers 5

    .line 38
    const-class v0, Lcom/xiaomi/aicr/vision/VisionAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aicr/vision/VisionAttribute;

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/aicr/vision/VisionAttribute;->getType()I

    move-result v1

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    .line 40
    new-instance v1, Lcom/xiaomi/aicr/vision/Text;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/aicr/vision/Text;-><init>(Landroid/os/Parcel;Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    return-object v1

    .line 42
    :cond_1b
    new-instance v1, Lcom/xiaomi/aicr/vision/VisionObject;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/aicr/vision/VisionObject;-><init>(Landroid/os/Parcel;Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/VisionObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/vision/VisionObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/aicr/vision/VisionObject;
    .registers 2

    .line 47
    new-array p1, p1, [Lcom/xiaomi/aicr/vision/VisionObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/vision/VisionObject$1;->newArray(I)[Lcom/xiaomi/aicr/vision/VisionObject;

    move-result-object p1

    return-object p1
.end method
