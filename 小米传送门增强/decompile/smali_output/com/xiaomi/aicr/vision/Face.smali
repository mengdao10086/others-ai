.class public Lcom/xiaomi/aicr/vision/Face;
.super Lcom/xiaomi/aicr/vision/VisionObject;
.source "Face.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/xiaomi/aicr/vision/VisionAttribute;

    const/high16 v1, 0x3000000

    invoke-direct {v0, v1}, Lcom/xiaomi/aicr/vision/VisionAttribute;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/aicr/vision/VisionObject;-><init>(Lcom/xiaomi/aicr/vision/VisionAttribute;)V

    return-void
.end method
