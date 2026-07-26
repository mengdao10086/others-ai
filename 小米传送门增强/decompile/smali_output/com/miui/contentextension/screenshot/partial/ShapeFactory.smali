.class public abstract Lcom/miui/contentextension/screenshot/partial/ShapeFactory;
.super Ljava/lang/Object;
.source "ShapeFactory.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear(Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V
.end method

.method public abstract getPartialBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTouchAreaState()Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
.end method

.method public abstract getTrimmingFrame()Landroid/graphics/Rect;
.end method

.method public abstract notifyShapeChanged(Landroid/graphics/Rect;Lcom/miui/contentextension/screenshot/partial/PartialScreenshotView;)V
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method
