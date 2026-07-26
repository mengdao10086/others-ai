.class public Lcom/xiaomi/aicr/vision/Text;
.super Lcom/xiaomi/aicr/vision/VisionObject;
.source "Text.java"


# instance fields
.field private info:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/aicr/vision/VisionAttribute;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/aicr/vision/VisionObject;-><init>(Landroid/os/Parcel;Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    .line 13
    iput-object p2, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mAttr:Lcom/xiaomi/aicr/vision/VisionAttribute;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/aicr/vision/Text;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/aicr/vision/Text;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/xiaomi/aicr/vision/VisionObject;->mBoundingBox:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "box: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_42
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 44
    invoke-super {p0, p1, p2}, Lcom/xiaomi/aicr/vision/VisionObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object p2, p0, Lcom/xiaomi/aicr/vision/Text;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
