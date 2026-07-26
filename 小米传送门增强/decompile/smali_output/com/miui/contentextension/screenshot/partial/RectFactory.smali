.class public Lcom/miui/contentextension/screenshot/partial/RectFactory;
.super Lcom/miui/contentextension/screenshot/partial/ShapeFactory;
.source "RectFactory.java"


# static fields
.field private static final mRectFactory:Lcom/miui/contentextension/screenshot/partial/RectFactory;


# instance fields
.field private mLastX:F

.field private mLastY:F

.field private mState:I

.field private mX:F

.field private mY:F

.field private rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/miui/contentextension/screenshot/partial/RectFactory;

    invoke-direct {v0}, Lcom/miui/contentextension/screenshot/partial/RectFactory;-><init>()V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mRectFactory:Lcom/miui/contentextension/screenshot/partial/RectFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/contentextension/screenshot/partial/RectFactory;
    .registers 2

    const-class v0, Lcom/miui/contentextension/screenshot/partial/RectFactory;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mRectFactory:Lcom/miui/contentextension/screenshot/partial/RectFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private onActionDown(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 7

    .line 45
    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 46
    new-instance v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-direct {v0, p3}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p3, v2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->startSelection(II)V

    .line 48
    iget-object p3, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p1, p3}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->setProduct(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;)V

    goto :goto_2f

    .line 49
    :cond_1f
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p1}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 50
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_2f

    .line 52
    :cond_2d
    iput v1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    .line 53
    :goto_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastX:F

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastY:F

    return v1
.end method

.method private onActionMove(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mX:F

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mY:F

    .line 61
    iget-object v1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mX:F

    iget v3, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastX:F

    iget v4, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastY:F

    invoke-static {v1, v3, v0, v4}, Lcom/miui/contentextension/screenshot/partial/DrawShapeUtil;->distance(FFFF)D

    move-result-wide v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_47

    .line 62
    iget v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    if-ne v0, v2, :cond_35

    .line 63
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v1, p2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->updateSelection(II)V

    goto :goto_3a

    .line 65
    :cond_35
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {v0, p2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->onActionMove(Landroid/view/MotionEvent;)V

    .line 66
    :goto_3a
    iget-object p2, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->setProduct(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;)V

    .line 67
    iget p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mX:F

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastX:F

    .line 68
    iget p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mY:F

    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mLastY:F

    :cond_47
    return v2
.end method

.method private onActionUp(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 74
    iget-object p2, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    const/4 v0, 0x1

    if-eqz p2, :cond_14

    .line 75
    invoke-virtual {p2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_11

    .line 76
    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    .line 77
    invoke-virtual {p1}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->clear()V

    goto :goto_14

    :cond_11
    const/4 p1, 0x2

    .line 79
    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public clear(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V
    .registers 3

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    .line 118
    invoke-virtual {p1, v0}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->setProduct(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;)V

    return-void
.end method

.method public getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPartialBitmap error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.RectFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTouchAreaState()Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {v0}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->getTouchArea()Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmingFrame()Landroid/graphics/Rect;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {v0}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public notifyShapeChanged(Landroid/graphics/Rect;Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V
    .registers 6

    .line 96
    new-instance v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-direct {v0, p2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    .line 97
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->setTouchInsideSize(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->startSelection(II)V

    .line 99
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/contentextension/screenshot/partial/RectScreenshot;->updateSelection(II)V

    .line 100
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->rect:Lcom/miui/contentextension/screenshot/partial/RectScreenshot;

    invoke-virtual {p2, p1}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->setProduct(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;)V

    const/4 p1, 0x2

    .line 101
    iput p1, p0, Lcom/miui/contentextension/screenshot/partial/RectFactory;->mState:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p1, 0x1

    if-eq v1, p1, :cond_16

    const/4 p1, 0x2

    if-eq v1, p1, :cond_11

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_11
    invoke-direct {p0, v0, p2}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->onActionMove(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 36
    :cond_16
    invoke-direct {p0, v0, p2}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->onActionUp(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 32
    :cond_1b
    invoke-direct {p0, v0, p2, p1}, Lcom/miui/contentextension/screenshot/partial/RectFactory;->onActionDown(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
