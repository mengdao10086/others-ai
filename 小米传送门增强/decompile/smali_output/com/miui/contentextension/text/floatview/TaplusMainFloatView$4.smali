.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->initScreenshotView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;

    invoke-direct {p1, p0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;-><init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;)V

    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isPartialScreenChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    if-nez p2, :cond_6

    goto :goto_35

    .line 358
    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_34

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    .line 359
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_34

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 360
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_34

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 361
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v2, :cond_35

    :cond_34
    const/4 v0, 0x1

    :cond_35
    :goto_35
    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 369
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 370
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v0, "Taplus.TaplusMainFloatView"

    if-eqz p2, :cond_a3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_17

    goto/16 :goto_b8

    .line 377
    :cond_17
    const-string p2, "action up"

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmScreenShot(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScreenshotView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {p2}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->getTouchAreaState()Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object p2

    sget-object v2, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    if-eq p2, v2, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    .line 384
    :goto_53
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShapeFactory(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/screenshot/partial/ShapeFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/contentextension/screenshot/partial/ShapeFactory;->getTrimmingFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 385
    iget-object v2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v2, v2, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mPickedRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->isPartialScreenChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch: touchInside = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", partialChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_99

    if-eqz v2, :cond_99

    .line 388
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    const-string v1, "G_MOVE"

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->trackViewChangedEvent(Ljava/lang/String;)V

    .line 391
    :cond_99
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mPickedRect:Landroid/graphics/Rect;

    goto :goto_b8

    .line 372
    :cond_a3
    const-string p2, "action down"

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->shrinkFloatView()V

    .line 374
    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMainCardGroup(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_b8
    return p1
.end method
