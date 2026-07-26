.class public Lcom/xiaomi/aicr/vision/VisionObject;
.super Ljava/lang/Object;
.source "VisionObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aicr/vision/VisionObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAttr:Lcom/xiaomi/aicr/vision/VisionAttribute;

.field final mBoundingBox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/xiaomi/aicr/vision/VisionObject$1;

    invoke-direct {v0}, Lcom/xiaomi/aicr/vision/VisionObject$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aicr/vision/VisionObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 15
    new-instance v0, Lcom/xiaomi/aicr/vision/VisionAttribute;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/aicr/vision/VisionAttribute;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/aicr/vision/VisionObject;-><init>(Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/aicr/vision/VisionAttribute;)V
    .registers 7

    .line 23
    invoke-direct {p0, p2}, Lcom/xiaomi/aicr/vision/VisionObject;-><init>(Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 27
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 29
    new-array v1, v1, [F

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 31
    iget-object v2, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mBoundingBox:Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/aicr/vision/VisionAttribute;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mBoundingBox:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mAttr:Lcom/xiaomi/aicr/vision/VisionAttribute;

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
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mAttr:Lcom/xiaomi/aicr/vision/VisionAttribute;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mBoundingBox:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 84
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mBoundingBox:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 85
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_1d

    :cond_31
    return-void
.end method
