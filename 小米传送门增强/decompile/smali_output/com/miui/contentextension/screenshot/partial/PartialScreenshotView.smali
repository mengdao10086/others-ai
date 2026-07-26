.class public Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;
.super Landroid/view/View;
.source "PartialScreenshotView.java"


# instance fields
.field private mPaintBackground:Landroid/graphics/Paint;

.field private shape:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->mPaintBackground:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 32
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object p1, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 p2, 0xa5

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->shape:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->shape:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;

    const-string v1, "Taplus.PartialScreenshotView"

    if-eqz v0, :cond_14

    .line 50
    const-string v0, "draw: shape"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->shape:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2b

    .line 53
    :cond_14
    const-string v0, "draw: background"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2b
    return-void
.end method

.method public setProduct(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;->shape:Lcom/miui/contentextension/screenshot/partial/PartialScreenshotShape;

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
