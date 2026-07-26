.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final destRect:Landroid/graphics/Rect;

.field private final frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private final paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object v0, v10

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .registers 9

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    if-eqz p1, :cond_40

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 92
    new-instance v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    invoke-virtual {v4, v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 95
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iget v5, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget v6, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 96
    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V

    return-void

    .line 88
    :cond_40
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "GifState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iget-object v3, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iget v5, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget v6, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iget-object v7, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v8, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v0, v10

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-void
.end method

.method private reset()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 173
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private resetLoopCount()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    return-void
.end method

.method private startRunning()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 179
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1b

    .line 180
    :cond_d
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    if-nez v0, :cond_1b

    .line 181
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->start()V

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private stopRunning()V
    .registers 2

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 231
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    if-eqz v0, :cond_5

    return-void

    .line 235
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    if-eqz v0, :cond_1f

    .line 236
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    .line 240
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_2c

    .line 241
    :cond_28
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    .line 242
    :goto_2c
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 225
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    return-void
.end method

.method public onFrameReady(I)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_d

    .line 265
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 266
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->reset()V

    return-void

    .line 270
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_20

    .line 273
    iget p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    .line 276
    :cond_20
    iget p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->loopCount:I

    if-lt v0, p1, :cond_2c

    .line 277
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    :cond_2c
    return-void
.end method

.method public recycle()V
    .registers 3

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->state:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 292
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->clear()V

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->frameLoader:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->stop()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 194
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-nez p1, :cond_8

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    goto :goto_f

    .line 197
    :cond_8
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    if-eqz v0, :cond_f

    .line 198
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    .line 200
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    .line 149
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-eqz v0, :cond_d

    .line 150
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->startRunning()V

    :cond_d
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->isStarted:Z

    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stopRunning()V

    return-void
.end method
