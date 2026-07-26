.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .registers 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 117
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    .line 123
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 165
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    .line 593
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    if-nez v1, :cond_17

    .line 596
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    :goto_15
    mul-int/2addr v2, v1

    goto :goto_1c

    :cond_17
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    goto :goto_15

    .line 600
    :goto_1c
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v1, :cond_23

    array-length v1, v1

    if-ge v1, v2, :cond_27

    .line 602
    :cond_23
    new-array v1, v2, [B

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 604
    :cond_27
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v1, :cond_31

    .line 605
    new-array v1, v3, [S

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 607
    :cond_31
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v1, :cond_39

    .line 608
    new-array v1, v3, [B

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 610
    :cond_39
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v1, :cond_43

    const/16 v1, 0x1001

    .line 611
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 615
    :cond_43
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v1

    const/4 v4, 0x1

    shl-int v5, v4, v1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v1, v4

    shl-int v8, v4, v1

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_54
    if-ge v10, v5, :cond_62

    .line 624
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    .line 625
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    :cond_62
    const/4 v10, -0x1

    move/from16 v19, v1

    move/from16 v17, v7

    move/from16 v18, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v21, v16

    move/from16 v22, v21

    move/from16 v20, v10

    :goto_76
    if-ge v11, v2, :cond_170

    const/4 v9, 0x3

    if-nez v12, :cond_86

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v12

    if-gtz v12, :cond_85

    .line 636
    iput v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto/16 :goto_170

    :cond_85
    const/4 v13, 0x0

    .line 642
    :cond_86
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v3, v3, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    add-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v4

    add-int/2addr v12, v10

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v23, v20

    move/from16 v24, v21

    :goto_9a
    if-lt v14, v4, :cond_15a

    and-int v10, v15, v18

    shr-int/2addr v15, v4

    sub-int/2addr v14, v4

    if-ne v10, v5, :cond_aa

    move v4, v1

    move v3, v7

    move/from16 v18, v8

    const/4 v10, -0x1

    const/16 v23, -0x1

    goto :goto_9a

    :cond_aa
    if-le v10, v3, :cond_af

    .line 664
    iput v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_b1

    :cond_af
    if-ne v10, v6, :cond_bf

    :goto_b1
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v23

    move/from16 v21, v24

    const/16 v3, 0x1000

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto :goto_76

    :cond_bf
    move/from16 v19, v1

    move/from16 v9, v23

    const/4 v1, -0x1

    if-ne v9, v1, :cond_db

    .line 673
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v1, v1, v10

    aput-byte v1, v9, v22

    move/from16 v23, v10

    move/from16 v24, v23

    move/from16 v1, v19

    move/from16 v22, v21

    const/4 v9, 0x3

    const/4 v10, -0x1

    goto :goto_9a

    :cond_db
    if-lt v10, v3, :cond_ec

    .line 680
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v25, v6

    move/from16 v6, v24

    int-to-byte v6, v6

    aput-byte v6, v1, v22

    move v1, v9

    move/from16 v22, v21

    goto :goto_ef

    :cond_ec
    move/from16 v25, v6

    move v1, v10

    :goto_ef
    if-lt v1, v5, :cond_106

    .line 684
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v24, v5

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v5, v5, v1

    aput-byte v5, v6, v22

    .line 685
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v1, v5, v1

    move/from16 v22, v21

    move/from16 v5, v24

    goto :goto_ef

    :cond_106
    move/from16 v24, v5

    .line 687
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    .line 688
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v26, v7

    int-to-byte v7, v1

    aput-byte v7, v6, v22

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_134

    .line 692
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v9, v9

    aput-short v9, v6, v3

    .line 693
    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    and-int v5, v3, v18

    if-nez v5, :cond_131

    const/16 v5, 0x1000

    if-ge v3, v5, :cond_135

    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v3

    goto :goto_135

    :cond_131
    const/16 v5, 0x1000

    goto :goto_135

    :cond_134
    move v5, v6

    :cond_135
    :goto_135
    move/from16 v22, v21

    :goto_137
    if-lez v22, :cond_14a

    add-int/lit8 v22, v22, -0x1

    .line 705
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v9, v9, v22

    aput-byte v9, v6, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_137

    :cond_14a
    move/from16 v23, v10

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    const/4 v9, 0x3

    const/4 v10, -0x1

    move/from16 v24, v1

    move/from16 v1, v19

    goto/16 :goto_9a

    :cond_15a
    move/from16 v25, v6

    move/from16 v9, v23

    move/from16 v6, v24

    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v20, v9

    move/from16 v6, v25

    const/16 v3, 0x1000

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_76

    :cond_170
    :goto_170
    move/from16 v1, v16

    :goto_172
    if-ge v1, v2, :cond_17c

    .line 713
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_172

    :cond_17c
    return-void
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 756
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v2, v1, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 758
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 760
    :cond_1a
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private read()I
    .registers 2

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_d

    :catch_9
    const/4 v0, 0x1

    .line 725
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private readBlock()I
    .registers 6

    .line 736
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    :goto_7
    if-ge v1, v0, :cond_1f

    sub-int v2, v0, v1

    .line 743
    :try_start_b
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    add-int/2addr v1, v2

    goto :goto_7

    :catch_14
    move-exception v0

    .line 748
    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 749
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_1f
    return v1
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 477
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v12, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 478
    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 481
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    const/4 v14, 0x0

    if-nez v2, :cond_14

    .line 485
    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([II)V

    :cond_14
    const/4 v15, 0x3

    const/4 v11, 0x2

    if-eqz v2, :cond_4a

    .line 489
    iget v4, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v4, :cond_4a

    if-ne v4, v11, :cond_4c

    .line 495
    iget-boolean v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v4, :cond_30

    .line 496
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 497
    iget-object v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v6, :cond_31

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v4, v6, :cond_31

    :cond_30
    move v5, v14

    .line 502
    :cond_31
    iget v4, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    mul-int/2addr v4, v12

    iget v6, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v4, v6

    .line 503
    iget v6, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v6, v12

    add-int/2addr v6, v4

    :goto_3b
    if-ge v4, v6, :cond_4a

    .line 505
    iget v7, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v7, v4

    move v8, v4

    :goto_41
    if-ge v8, v7, :cond_48

    .line 507
    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_48
    add-int/2addr v4, v12

    goto :goto_3b

    :cond_4a
    move v2, v11

    goto :goto_5d

    :cond_4c
    if-ne v4, v15, :cond_4a

    .line 510
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v13

    move v7, v12

    move v10, v12

    move v2, v11

    move v11, v3

    .line 512
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 517
    :goto_5d
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    const/4 v11, 0x1

    const/16 v4, 0x8

    move v6, v11

    move v5, v14

    .line 523
    :goto_65
    iget v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v14, v7, :cond_bb

    .line 525
    iget-boolean v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v8, :cond_83

    if-lt v5, v7, :cond_80

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    if-eq v6, v2, :cond_7f

    if-eq v6, v15, :cond_7c

    if-eq v6, v7, :cond_79

    goto :goto_80

    :cond_79
    move v4, v2

    move v5, v11

    goto :goto_80

    :cond_7c
    move v5, v2

    move v4, v7

    goto :goto_80

    :cond_7f
    move v5, v7

    :cond_80
    :goto_80
    add-int v7, v5, v4

    goto :goto_85

    :cond_83
    move v7, v5

    move v5, v14

    .line 547
    :goto_85
    iget v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr v5, v8

    .line 548
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-ge v5, v9, :cond_b5

    .line 549
    iget v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int/2addr v5, v8

    .line 551
    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v9, v5

    .line 553
    iget v10, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int v2, v9, v10

    add-int v15, v5, v8

    if-ge v15, v2, :cond_9e

    add-int v2, v5, v8

    :cond_9e
    mul-int/2addr v10, v14

    :goto_9f
    if-ge v9, v2, :cond_b5

    .line 562
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v8, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    .line 563
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v5, v10, v5

    if-eqz v5, :cond_b1

    .line 565
    aput v5, v13, v9

    :cond_b1
    add-int/lit8 v9, v9, 0x1

    move v10, v8

    goto :goto_9f

    :cond_b5
    add-int/lit8 v14, v14, 0x1

    move v5, v7

    const/4 v2, 0x2

    const/4 v15, 0x3

    goto :goto_65

    .line 573
    :cond_bb
    iget-boolean v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz v2, :cond_db

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v1, :cond_c5

    if-ne v1, v11, :cond_db

    .line 575
    :cond_c5
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_cf

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 578
    :cond_cf
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v13

    move v7, v12

    move v10, v12

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 582
    :cond_db
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    move-object v5, v13

    move v7, v12

    move v10, v12

    move v11, v3

    .line 583
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1
.end method


# virtual methods
.method public advance()V
    .registers 3

    .line 196
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 398
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 399
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 400
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 401
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12

    .line 402
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 404
    :cond_12
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 405
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getCurrentFrameIndex()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getDelay(I)I
    .registers 4

    if-ltz p1, :cond_13

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_13

    .line 208
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method public getFrameCount()I
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getNextDelay()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_10

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_b

    goto :goto_10

    .line 221
    :cond_b
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .registers 8

    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_11

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_3d

    goto :goto_11

    :catchall_e
    move-exception v0

    goto/16 :goto_bc

    .line 315
    :cond_11
    :goto_11
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3b
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 320
    :cond_3d
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9c

    const/4 v4, 0x2

    if-ne v0, v4, :cond_46

    goto :goto_9c

    :cond_46
    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 328
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 330
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_65

    .line 332
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    goto :goto_66

    :cond_65
    move-object v5, v3

    .line 336
    :goto_66
    iget-object v6, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v6, :cond_6b

    goto :goto_6f

    :cond_6b
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    :goto_6f
    iput-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v6, :cond_84

    .line 338
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 339
    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_80
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_e

    .line 343
    monitor-exit p0

    return-object v3

    .line 346
    :cond_84
    :try_start_84
    iget-boolean v1, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v1, :cond_96

    .line 348
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    array-length v2, v6

    invoke-static {v6, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 352
    iget v2, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v1, v2

    .line 356
    :cond_96
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_9a
    .catchall {:try_start_84 .. :try_end_9a} :catchall_e

    monitor-exit p0

    return-object v0

    .line 321
    :cond_9c
    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_9c .. :try_end_ba} :catchall_e

    .line 324
    :cond_ba
    monitor-exit p0

    return-object v3

    :goto_bc
    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_e

    throw v0
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .registers 5

    .line 409
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 410
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v1, -0x1

    .line 412
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 414
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 416
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 421
    iget-object p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 422
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    const/4 p2, 0x1

    .line 423
    iput-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 429
    :cond_36
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    mul-int/2addr p2, p1

    .line 430
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    return-void
.end method
