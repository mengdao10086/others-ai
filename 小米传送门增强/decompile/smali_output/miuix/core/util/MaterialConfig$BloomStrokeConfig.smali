.class public Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;
.super Ljava/lang/Object;
.source "MaterialConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/MaterialConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BloomStrokeConfig"
.end annotation


# instance fields
.field public bloomStrokeColorA:F

.field public bloomStrokeColorB:F

.field public bloomStrokeColorG:F

.field public bloomStrokeColorR:F

.field public bloomStrokeGradientDegree:F

.field public bloomStrokeWidth:F

.field public normalWidth:F

.field public source1A:F

.field public source1B:F

.field public source1G:F

.field public source1R:F

.field public source1X:F

.field public source1Y:F

.field public source1Z:F

.field public source2A:F

.field public source2B:F

.field public source2G:F

.field public source2R:F

.field public source2X:F

.field public source2Y:F

.field public source2Z:F


# direct methods
.method public constructor <init>(FFFFFFFFFFFFFFFFFFFFF)V
    .registers 24

    move-object v0, p0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 376
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeWidth:F

    move v1, p2

    .line 377
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeGradientDegree:F

    move v1, p3

    .line 378
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeColorR:F

    move v1, p4

    .line 379
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeColorG:F

    move v1, p5

    .line 380
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeColorB:F

    move v1, p6

    .line 381
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->bloomStrokeColorA:F

    move v1, p7

    .line 382
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->normalWidth:F

    move v1, p8

    .line 383
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1X:F

    move v1, p9

    .line 384
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1Y:F

    move v1, p10

    .line 385
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1Z:F

    move v1, p11

    .line 386
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1R:F

    move v1, p12

    .line 387
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1G:F

    move v1, p13

    .line 388
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1B:F

    move/from16 v1, p14

    .line 389
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source1A:F

    move/from16 v1, p15

    .line 390
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2X:F

    move/from16 v1, p16

    .line 391
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2Y:F

    move/from16 v1, p17

    .line 392
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2Z:F

    move/from16 v1, p18

    .line 393
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2R:F

    move/from16 v1, p19

    .line 394
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2G:F

    move/from16 v1, p20

    .line 395
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2B:F

    move/from16 v1, p21

    .line 396
    iput v1, v0, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;->source2A:F

    return-void
.end method
