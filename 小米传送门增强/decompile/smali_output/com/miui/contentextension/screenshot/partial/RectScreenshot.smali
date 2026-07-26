.class public Lcom/miui/contentextension/screenshot/partial/RectScreenshot;
.super Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;
.source "RectScreenshot.java"


# instance fields
.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mLastX:I

.field private mLastY:I

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintSelection:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mStartPoint:Landroid/graphics/Point;

.field private mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field private mTouchInsideSize:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;-><init>()V

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    .line 33
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    .line 37
    iput-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mPaintBackground:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mPaintSelection:Landroid/graphics/Paint;

    .line 44
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mDrawBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private handleTouchArea(II)V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 285
    invoke-static {p1, p2, v0}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->handleArea(IILandroid/graphics/Rect;)Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    :cond_a
    return-void
.end method

.method private moveHandleCenterBottom(I)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_c

    .line 236
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_c
    return-void
.end method

.method private moveHandleCenterLeft(I)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_b

    .line 251
    iput p1, v0, Landroid/graphics/Rect;->left:I

    :cond_b
    return-void
.end method

.method private moveHandleCenterRight(I)V
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_c

    .line 241
    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_c
    return-void
.end method

.method private moveHandleCenterTop(I)V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_b

    .line 246
    iput p1, v0, Landroid/graphics/Rect;->top:I

    :cond_b
    return-void
.end method

.method private moveHandleLeftBottom(II)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_b

    .line 263
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 264
    :cond_b
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int p1, p2, p1

    if-le p1, v2, :cond_13

    .line 265
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_13
    return-void
.end method

.method private moveHandleLeftTop(II)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_b

    .line 278
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 279
    :cond_b
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-le p1, v2, :cond_12

    .line 280
    iput p2, v0, Landroid/graphics/Rect;->top:I

    :cond_12
    return-void
.end method

.method private moveHandleRightBottom(II)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_c

    .line 256
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 257
    :cond_c
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int p1, p2, p1

    if-le p1, v2, :cond_14

    .line 258
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_14
    return-void
.end method

.method private moveHandleRightTop(II)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v1, v2, :cond_c

    .line 271
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 272
    :cond_c
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-le p1, v2, :cond_13

    .line 273
    iput p2, v0, Landroid/graphics/Rect;->top:I

    :cond_13
    return-void
.end method

.method private moveRect(II)V
    .registers 7

    .line 216
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p1

    iget v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_d

    sub-int p1, v3, v1

    .line 219
    :cond_d
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_27

    .line 220
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    .line 222
    :cond_27
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v1, p2

    iget v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_34

    sub-int p2, v3, v1

    .line 225
    :cond_34
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_4e

    .line 226
    iget-object p2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    .line 228
    :cond_4e
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    sub-int v3, p1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 229
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 230
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    sub-int v2, p2, v1

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 231
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 91
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    const-string v1, "Taplus.RectScreenshot"

    if-eqz v0, :cond_6c

    .line 92
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    const/16 v3, 0x28

    if-le v2, v3, :cond_76

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    if-le v2, v3, :cond_76

    .line 93
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 94
    :cond_20
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 96
    :cond_34
    const-string v0, "draw: selection rect"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 98
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mPaintSelection:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->drawTrimmingFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 102
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_76

    .line 105
    :cond_6c
    const-string v0, "draw: background"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_76
    :goto_76
    return-void
.end method

.method public getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .line 112
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const-string v2, "Taplus.RectScreenshot"

    if-eqz v0, :cond_e9

    if-eqz p1, :cond_e9

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    if-nez v3, :cond_f

    goto/16 :goto_e9

    .line 116
    :cond_f
    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    if-gez v4, :cond_16

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 117
    :cond_16
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_28

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 118
    :cond_28
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_3e

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 119
    :cond_3e
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_46

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 120
    :cond_46
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v3, v0, :cond_62

    .line 121
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 123
    :cond_62
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v3, v0, :cond_80

    .line 124
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 126
    :cond_80
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_e3

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_91

    goto :goto_e3

    .line 130
    :cond_91
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_dd

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_9c

    goto :goto_dd

    .line 134
    :cond_9c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    new-instance v6, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    .line 137
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    int-to-float v5, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0, p1, v3}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->getResultBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 131
    :cond_dd
    :goto_dd
    const-string p1, "getPartialBitmap: left or top < 0"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 127
    :cond_e3
    :goto_e3
    const-string p1, "getPartialBitmap: width or height < 0"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 113
    :cond_e9
    :goto_e9
    const-string p1, "getPartialBitmap: view or bitmap is null"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTouchArea()Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .registers 3

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActionDown: ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.RectScreenshot"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->handleTouchArea(II)V

    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;)V
    .registers 8

    .line 150
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v2, "Taplus.RectScreenshot"

    if-ne v0, v1, :cond_14

    .line 151
    const-string v0, "onActionMove: out of bounds"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    iget v3, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->handleTouchArea(II)V

    .line 154
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    if-ltz v0, :cond_85

    .line 156
    iget-object v4, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gt v0, v4, :cond_85

    if-ltz v3, :cond_85

    iget-object v4, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_33

    goto :goto_85

    .line 160
    :cond_33
    iget v4, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    iget v5, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    invoke-static {v0, v3, v4, v5}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->isUseful(IIII)Z

    move-result v4

    if-nez v4, :cond_40

    .line 161
    iput-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-void

    .line 164
    :cond_40
    const-string v1, "onActionMove: in bounds"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v1, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    iget-object v2, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchArea:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8c

    goto :goto_76

    .line 201
    :pswitch_53
    invoke-direct {p0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleCenterBottom(I)V

    goto :goto_76

    .line 197
    :pswitch_57
    invoke-direct {p0, v0}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleCenterRight(I)V

    goto :goto_76

    .line 193
    :pswitch_5b
    invoke-direct {p0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleCenterTop(I)V

    goto :goto_76

    .line 189
    :pswitch_5f
    invoke-direct {p0, v0}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleCenterLeft(I)V

    goto :goto_76

    .line 184
    :pswitch_63
    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleRightBottom(II)V

    goto :goto_76

    .line 180
    :pswitch_67
    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleLeftBottom(II)V

    goto :goto_76

    .line 176
    :pswitch_6b
    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleRightTop(II)V

    goto :goto_76

    .line 172
    :pswitch_6f
    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveHandleLeftTop(II)V

    goto :goto_76

    .line 168
    :pswitch_73
    invoke-direct {p0, v0, v3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->moveRect(II)V

    .line 211
    :goto_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastX:I

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mLastY:I

    return-void

    .line 157
    :cond_85
    :goto_85
    const-string p1, "onActionMove: invalid, return"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public setTouchInsideSize(Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_3a

    .line 51
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 52
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RectScreenshot: touch inside size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.RectScreenshot"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public startSelection(II)V
    .registers 4

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    return-void
.end method

.method public updateSelection(II)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_64

    .line 64
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v0, v1, :cond_ce

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v0, v1, :cond_ce

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    .line 66
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 67
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 68
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_ce

    .line 72
    :cond_64
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le v0, v1, :cond_99

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_99

    .line 73
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 74
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 76
    :cond_99
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mTouchInsideSize:I

    if-le p1, v0, :cond_ce

    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_ce

    .line 77
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 78
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->mStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_ce
    :goto_ce
    return-void
.end method
