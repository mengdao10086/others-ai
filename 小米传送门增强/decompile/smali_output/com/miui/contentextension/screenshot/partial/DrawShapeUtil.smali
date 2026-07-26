.class public Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;
.super Ljava/lang/Object;
.source "DrawShapeUtil.java"


# static fields
.field private static mPaintLine:Landroid/graphics/Paint;

.field private static mPaintStroke:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static distance(FFFF)D
    .registers 6

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 182
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static drawTrimmingFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 229
    invoke-static {}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->initPaint()V

    .line 231
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    int-to-double v2, v2

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v2, v4

    double-to-int v8, v2

    .line 233
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    int-to-double v9, v9

    mul-double/2addr v9, v4

    double-to-int v9, v9

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    .line 239
    sget-object v10, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, -0x2

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0x2

    int-to-float v3, v3

    add-int v4, v0, v8

    int-to-float v4, v4

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v10, v0, -0x2

    int-to-float v10, v10

    add-int/lit8 v11, v2, -0x2

    int-to-float v11, v11

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    add-int/2addr v2, v9

    int-to-float v2, v2

    const/16 v12, 0x8

    new-array v13, v12, [F

    const/4 v14, 0x0

    aput v1, v13, v14

    const/4 v1, 0x1

    aput v3, v13, v1

    const/4 v3, 0x2

    aput v4, v13, v3

    const/4 v4, 0x3

    aput v5, v13, v4

    const/4 v5, 0x4

    aput v10, v13, v5

    const/4 v10, 0x5

    aput v11, v13, v10

    const/4 v11, 0x6

    aput v0, v13, v11

    const/4 v0, 0x7

    aput v2, v13, v0

    sget-object v2, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v6, v13, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 246
    iget v2, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v13, v2, -0x2

    int-to-float v13, v13

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v15, 0x2

    int-to-float v0, v0

    add-int v11, v2, v8

    int-to-float v11, v11

    add-int/lit8 v10, v15, 0x2

    int-to-float v10, v10

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v4, v15, 0x2

    int-to-float v4, v4

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    sub-int/2addr v15, v9

    int-to-float v15, v15

    new-array v3, v12, [F

    aput v13, v3, v14

    aput v0, v3, v1

    const/4 v0, 0x2

    aput v11, v3, v0

    const/4 v0, 0x3

    aput v10, v3, v0

    const/4 v0, 0x4

    aput v5, v3, v0

    const/4 v0, 0x5

    aput v4, v3, v0

    const/4 v0, 0x6

    aput v2, v3, v0

    const/4 v0, 0x7

    aput v15, v3, v0

    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 251
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v3, -0x2

    int-to-float v4, v4

    sub-int v5, v0, v8

    int-to-float v5, v5

    add-int/lit8 v10, v3, -0x2

    int-to-float v10, v10

    add-int/lit8 v11, v0, 0x2

    int-to-float v11, v11

    add-int/lit8 v13, v3, -0x2

    int-to-float v13, v13

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-int/2addr v3, v9

    int-to-float v3, v3

    new-array v15, v12, [F

    aput v2, v15, v14

    aput v4, v15, v1

    const/4 v2, 0x2

    aput v5, v15, v2

    const/4 v2, 0x3

    aput v10, v15, v2

    const/4 v2, 0x4

    aput v11, v15, v2

    const/4 v2, 0x5

    aput v13, v15, v2

    const/4 v2, 0x6

    aput v0, v15, v2

    const/4 v0, 0x7

    aput v3, v15, v0

    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 256
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    sub-int v5, v0, v8

    int-to-float v5, v5

    add-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    add-int/lit8 v8, v0, 0x2

    int-to-float v8, v8

    add-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-int/2addr v3, v9

    int-to-float v3, v3

    new-array v9, v12, [F

    aput v2, v9, v14

    aput v4, v9, v1

    const/4 v1, 0x2

    aput v5, v9, v1

    const/4 v1, 0x3

    aput v7, v9, v1

    const/4 v1, 0x4

    aput v8, v9, v1

    const/4 v1, 0x5

    aput v10, v9, v1

    const/4 v1, 0x6

    aput v0, v9, v1

    const/4 v0, 0x7

    aput v3, v9, v0

    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v6, v9, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public static getResultBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 8

    .line 276
    iget v0, p4, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-ltz v0, :cond_4a

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_4a

    if-ltz p0, :cond_4a

    if-gez p1, :cond_e

    goto :goto_4a

    :cond_e
    add-int/2addr v0, p1

    .line 280
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_1c

    .line 281
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    .line 283
    :cond_1c
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {p3, v0, p4, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 284
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 285
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 287
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p1, p3, v2, v2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 289
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 290
    invoke-virtual {p1, p2, v2, v2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object p0

    .line 277
    :cond_4a
    :goto_4a
    const-string p0, "Taplus.DrawShapeUtil"

    const-string p1, "getResultBitmap: x or y or width or height < 0"

    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static handleArea(IILandroid/graphics/Rect;)Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 8

    .line 31
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    const/16 v3, 0x258

    if-le v2, v3, :cond_14

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_14

    const/16 v0, 0x96

    goto :goto_55

    :cond_14
    sub-int v2, v0, v1

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_24

    .line 33
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_24

    const/16 v0, 0x7d

    goto :goto_55

    :cond_24
    sub-int v2, v0, v1

    const/16 v3, 0x190

    if-le v2, v3, :cond_34

    .line 35
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_34

    const/16 v0, 0x64

    goto :goto_55

    :cond_34
    sub-int v2, v0, v1

    const/16 v3, 0x12c

    if-le v2, v3, :cond_44

    .line 37
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_44

    const/16 v0, 0x4b

    goto :goto_55

    :cond_44
    sub-int/2addr v0, v1

    const/16 v1, 0xc8

    if-le v0, v1, :cond_53

    .line 39
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_53

    const/16 v0, 0x32

    goto :goto_55

    :cond_53
    const/16 v0, 0x19

    .line 41
    :goto_55
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInLeftTopCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 42
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 44
    :cond_5e
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInRightTopCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 45
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 47
    :cond_67
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInLeftBottomCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 48
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 50
    :cond_70
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInRightBottomCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 51
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 54
    :cond_79
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInCenterLeftCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 56
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_LEFT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 58
    :cond_82
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInCenterTopCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 59
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 61
    :cond_8b
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInCenterRightCorner(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 62
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_RIGHT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 64
    :cond_94
    invoke-static {p0, p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInCenterBottomCorner(IILandroid/graphics/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 65
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 67
    :cond_9d
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInFrameCenter(IILandroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_a6

    .line 68
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0

    .line 70
    :cond_a6
    sget-object p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0
.end method

.method private static initPaint()V
    .registers 4

    .line 204
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_34

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 206
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    const v2, -0x333334

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 211
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 213
    :cond_34
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    if-nez v0, :cond_63

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    .line 215
    const-string v2, "C4C4C4"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 219
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->mPaintStroke:Landroid/graphics/Paint;

    const v1, 0x403a3d71    # 2.91f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_63
    return-void
.end method

.method private static isInCenterBottomCorner(IILandroid/graphics/Rect;I)Z
    .registers 8

    .line 163
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    .line 164
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 165
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p1, p3

    .line 166
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private static isInCenterLeftCorner(IILandroid/graphics/Rect;I)Z
    .registers 8

    .line 133
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    .line 134
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 135
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p1, p3

    .line 136
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private static isInCenterRightCorner(IILandroid/graphics/Rect;I)Z
    .registers 8

    .line 143
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    .line 144
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 145
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p1, p3

    .line 146
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private static isInCenterTopCorner(IILandroid/graphics/Rect;I)Z
    .registers 8

    .line 153
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    .line 154
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 155
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p1, p3

    .line 156
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private static isInFrameCenter(IILandroid/graphics/Rect;)Z
    .registers 4

    .line 86
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_12

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_12

    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-lt p1, p0, :cond_12

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static isInLeftBottomCorner(IILandroid/graphics/Rect;I)Z
    .registers 5

    .line 105
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    .line 106
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 107
    invoke-static {p0, p1, p3}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInsideBound(III)Z

    move-result p0

    return p0
.end method

.method private static isInLeftTopCorner(IILandroid/graphics/Rect;I)Z
    .registers 5

    .line 96
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    .line 97
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 98
    invoke-static {p0, p1, p3}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInsideBound(III)Z

    move-result p0

    return p0
.end method

.method private static isInRightBottomCorner(IILandroid/graphics/Rect;I)Z
    .registers 5

    .line 123
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    .line 124
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 125
    invoke-static {p0, p1, p3}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInsideBound(III)Z

    move-result p0

    return p0
.end method

.method private static isInRightTopCorner(IILandroid/graphics/Rect;I)Z
    .registers 5

    .line 114
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    .line 115
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 116
    invoke-static {p0, p1, p3}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isInsideBound(III)Z

    move-result p0

    return p0
.end method

.method private static isInsideBound(III)Z
    .registers 7

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 78
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-int p0, v0

    int-to-double p1, p2

    .line 79
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static isUseful(IIII)Z
    .registers 4

    sub-int/2addr p0, p2

    .line 173
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p2, 0x15e

    if-gt p0, p2, :cond_13

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le p0, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method
