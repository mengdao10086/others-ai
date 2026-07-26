.class public Lmiuix/animation/styles/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/styles/TintDrawable$InitTintTask;
    }
.end annotation


# static fields
.field private static final sListener:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final TINT_STYLE_HOVER:I

.field private final TINT_STYLE_RECT_ROUND:I

.field private final TINT_STYLE_VIEW_SHAPE:I

.field private final TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapLock:Ljava/lang/Object;

.field private mBounds:Landroid/graphics/RectF;

.field private mCornerBounds:Landroid/graphics/RectF;

.field private mHoverRadius:F

.field private mInitTintTask:Ljava/lang/Runnable;

.field private mOriDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTintStyle:I

.field private mTouchRadius:[F

.field private mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field private mTouchRectLocationMode:I

.field private mTouchRectRoundPadding:Landroid/graphics/RectF;

.field private mTouchRectRoundRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lmiuix/animation/styles/TintDrawable$1;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable$1;-><init>()V

    sput-object v0, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_VIEW_SHAPE:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_RECT_ROUND:I

    const/4 v1, 0x4

    .line 40
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TINT_STYLE_HOVER:I

    const/high16 v1, 0x41d00000    # 26.0f

    .line 41
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->TOUCH_RADIUS_RECT_ROUND_DEFAULT:F

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    .line 88
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    .line 90
    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    iput-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    .line 93
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 545
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 37
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/animation/styles/TintDrawable;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/animation/styles/TintDrawable;I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->initBitmap(I)V

    return-void
.end method

.method private clear()V
    .registers 1

    .line 217
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method private createBitmap(II)Z
    .registers 8

    .line 197
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 199
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_38

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 200
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_38

    .line 201
    const-string p1, "miuix_anim"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBitmap failed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return v2

    :catchall_36
    move-exception p1

    goto :goto_5e

    .line 204
    :cond_38
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 205
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_36

    .line 207
    :try_start_41
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_53} :catch_55
    .catchall {:try_start_41 .. :try_end_53} :catchall_36

    .line 212
    :try_start_53
    monitor-exit v0

    return v3

    .line 209
    :catch_55
    const-string p1, "miuix_anim"

    const-string p2, "TintDrawable.createBitmap failed, out of memory"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return v2

    .line 213
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_36

    throw p1
.end method

.method private drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 445
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3a

    .line 452
    :cond_e
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 453
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 454
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_43

    .line 456
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    .line 448
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    monitor-exit v0

    return-void

    .line 456
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_36

    throw p1
.end method

.method private drawHoverTint(Landroid/graphics/Canvas;I)V
    .registers 6

    .line 432
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 433
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 434
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectRound(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 309
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 311
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 312
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    if-eq v0, v1, :cond_82

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    const/16 v1, 0x1008

    if-eq v0, v1, :cond_22

    goto :goto_98

    .line 341
    :cond_22
    invoke-direct {p0, p1, p2}, Lmiuix/animation/styles/TintDrawable;->perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V

    goto :goto_98

    .line 326
    :cond_26
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 327
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 328
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 329
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 330
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 332
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6c

    .line 333
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 335
    :cond_6c
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7c

    .line 336
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 338
    :cond_7c
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mCornerBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_98

    .line 319
    :cond_82
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FF)V

    .line 320
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    :goto_98
    return-void
.end method

.method public static get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .registers 2

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 98
    instance-of v0, p0, Lmiuix/animation/styles/TintDrawable;

    if-eqz v0, :cond_b

    .line 99
    check-cast p0, Lmiuix/animation/styles/TintDrawable;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRectRoundEnableFromView(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    goto :goto_7

    .line 486
    :cond_5
    iget p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    :goto_7
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    return-void
.end method

.method private getRectRoundGravityFromView()V
    .registers 3

    .line 490
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 491
    instance-of v1, v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    if-eqz v1, :cond_10

    .line 492
    check-cast v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    :cond_10
    return-void
.end method

.method private getRectRoundPaddingsFromView()V
    .registers 5

    .line 520
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 521
    instance-of v1, v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 522
    check-cast v0, Landroid/graphics/RectF;

    .line 523
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 524
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 525
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 526
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_42

    .line 528
    :cond_38
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundPadding:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 529
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 530
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 531
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_42
    return-void
.end method

.method private getRectRoundRadiusFromView()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x41d00000    # 26.0f

    .line 497
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v4, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 498
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_1e

    .line 499
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-array v1, v1, [F

    aput v2, v1, v0

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    goto/16 :goto_9b

    .line 500
    :cond_1e
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_30

    .line 501
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    .line 502
    new-array v1, v1, [F

    aput v2, v1, v0

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    goto :goto_9b

    .line 503
    :cond_30
    instance-of v4, v3, Landroid/graphics/RectF;

    if-eqz v4, :cond_95

    const/16 v2, 0x8

    .line 504
    new-array v2, v2, [F

    fill-array-data v2, :array_9c

    iput-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    .line 505
    check-cast v3, Landroid/graphics/RectF;

    .line 506
    iget v4, v3, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v2, v0

    .line 507
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v2, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 508
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 509
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 510
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 511
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 512
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 513
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    goto :goto_9b

    .line 515
    :cond_95
    new-array v1, v1, [F

    aput v2, v1, v0

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    :goto_9b
    return-void

    :array_9c
    .array-data 4
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
        0x41d00000    # 26.0f
    .end array-data
.end method

.method private getTouchLocationModeFromView()V
    .registers 3

    .line 548
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 550
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x1

    .line 552
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    :goto_18
    return-void
.end method

.method private getTouchRectFromView()V
    .registers 3

    .line 536
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v1, v0, Landroid/graphics/RectF;

    if-eqz v1, :cond_16

    .line 538
    check-cast v0, Landroid/graphics/RectF;

    .line 539
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    goto :goto_19

    :cond_16
    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    :goto_19
    return-void
.end method

.method private initBitmap(I)V
    .registers 7

    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 231
    :try_start_5
    iput-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;

    .line 235
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_5f

    if-eqz v2, :cond_13

    goto/16 :goto_8c

    .line 240
    :cond_13
    :try_start_13
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 241
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 243
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v4

    int-to-float v4, v4

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3f} :catch_69
    .catchall {:try_start_13 .. :try_end_3f} :catchall_5f

    if-nez p1, :cond_6b

    .line 250
    :try_start_41
    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_98

    invoke-direct {p1, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 256
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 257
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_61
    .catchall {:try_start_41 .. :try_end_5e} :catchall_5f

    goto :goto_6b

    :catchall_5f
    move-exception p1

    goto :goto_95

    .line 259
    :catch_61
    :try_start_61
    const-string p1, "miuix_anim"

    const-string v0, "the Bitmap empty or Recycled"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :catch_69
    move-exception p1

    goto :goto_74

    .line 262
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_73} :catch_69
    .catchall {:try_start_61 .. :try_end_73} :catchall_5f

    goto :goto_8a

    .line 265
    :goto_74
    :try_start_74
    const-string v0, "miuix_anim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TintDrawable.initBitmap failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_8a
    monitor-exit v1

    return-void

    .line 236
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    monitor-exit v1

    return-void

    .line 267
    :goto_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_5f

    throw p1

    nop

    :array_98
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7f7fffff    # Float.MAX_VALUE
        0x0
    .end array-data
.end method

.method private perFromDrawRoundRectRelative(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 351
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_c5

    .line 352
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectGravity:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ae

    const/4 v1, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_83

    const/4 v1, 0x3

    if-eq v0, v1, :cond_58

    .line 370
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 371
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    .line 372
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_c5

    .line 365
    :cond_58
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 366
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v2, v0, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_c5

    .line 359
    :cond_83
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 361
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    goto :goto_c5

    .line 356
    :cond_ae
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v2, v2, v0, v1}, Lmiuix/animation/styles/TintDrawable;->setBounds(FFFF)V

    .line 375
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/styles/TintDrawable;->realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    return-void
.end method

.method private processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    .registers 7

    .line 466
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 467
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_62

    .line 468
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canvas: trying to draw too large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 471
    :try_start_1c
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4a

    .line 472
    :try_start_1f
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 473
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x32

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lmiuix/animation/utils/CommonUtils;->compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 474
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_46

    :catchall_44
    move-exception p2

    goto :goto_48

    .line 476
    :cond_46
    :goto_46
    monitor-exit p1

    goto :goto_61

    :goto_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_44

    :try_start_49
    throw p2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p1

    .line 478
    const-string p2, "miuix_anim"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TintDrawable.processingOOMForDrawBitmap failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-void

    .line 481
    :cond_62
    throw p1
.end method

.method private realPerFromDrawRoundRect(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .registers 6

    .line 385
    iget-object p2, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    .line 386
    aget p2, p2, v0

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_25

    .line 387
    :cond_f
    array-length p2, p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_25

    .line 388
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 389
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRadius:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 390
    iget-object p3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private recycleBitmap()V
    .registers 3

    .line 221
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 223
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    .line 226
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw v1
.end method

.method static setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .registers 3

    .line 106
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    if-nez v0, :cond_21

    .line 108
    new-instance v0, Lmiuix/animation/styles/TintDrawable;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable;-><init>()V

    .line 109
    iput-object p0, v0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/styles/TintDrawable;->setOriDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget-object v1, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 113
    new-instance v1, Lmiuix/animation/styles/TintDrawable$2;

    invoke-direct {v1, p0, v0}, Lmiuix/animation/styles/TintDrawable$2;-><init>(Landroid/view/View;Lmiuix/animation/styles/TintDrawable;)V

    invoke-static {p0, v1}, Lmiuix/animation/Folme;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_21
    return-object v0
.end method

.method private setBounds(FF)V
    .registers 8

    .line 401
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 402
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    .line 406
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v3, v0, p1

    add-float v4, v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setBounds(FFFF)V
    .registers 8

    .line 421
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 422
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    float-to-int p2, p3

    float-to-int p3, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setOriDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private tintStyleLoadData()V
    .registers 3

    .line 169
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchLocationModeFromView()V

    .line 171
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTouchRectLocationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x1008

    if-eq v0, v1, :cond_13

    goto :goto_2e

    .line 186
    :cond_13
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 187
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    .line 188
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundGravityFromView()V

    goto :goto_2e

    .line 182
    :cond_1d
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 183
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundPaddingsFromView()V

    goto :goto_2e

    .line 178
    :cond_24
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    .line 179
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getTouchRectFromView()V

    goto :goto_2e

    .line 175
    :cond_2b
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->getRectRoundRadiusFromView()V

    :goto_2e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 272
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 273
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 274
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 275
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 276
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 277
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 279
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;->getIntValue(Landroid/view/View;)I

    move-result v0

    .line 281
    :try_start_34
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 282
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 283
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_48

    .line 284
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_48

    :catchall_44
    move-exception v0

    goto :goto_64

    :catch_46
    move-exception v0

    goto :goto_5f

    .line 286
    :cond_48
    :goto_48
    iget v1, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_58

    const/4 v2, 0x4

    if-eq v1, v2, :cond_54

    .line 296
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawBlackeningByExtractingBg(Landroid/graphics/Canvas;I)V

    goto :goto_5b

    .line 292
    :cond_54
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawHoverTint(Landroid/graphics/Canvas;I)V

    goto :goto_5b

    .line 289
    :cond_58
    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/TintDrawable;->drawRectRound(Landroid/graphics/Canvas;I)V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_5b} :catch_46
    .catchall {:try_start_34 .. :try_end_5b} :catchall_44

    .line 301
    :goto_5b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_63

    .line 299
    :goto_5f
    :try_start_5f
    invoke-direct {p0, v0, p1}, Lmiuix/animation/styles/TintDrawable;->processingOOMForDrawBitmap(Ljava/lang/RuntimeException;Landroid/graphics/Canvas;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_44

    goto :goto_5b

    :goto_63
    return-void

    .line 301
    :goto_64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    throw v0
.end method

.method public getOpacity()I
    .registers 2

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method declared-synchronized initTintBuffer(I)V
    .registers 4

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-nez v0, :cond_7

    .line 135
    monitor-exit p0

    return-void

    .line 138
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->getRectRoundEnableFromView(I)V

    .line 140
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    .line 150
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 151
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_38

    if-gtz v1, :cond_23

    goto :goto_38

    .line 160
    :cond_23
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->createBitmap(II)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 161
    new-instance v0, Lmiuix/animation/styles/TintDrawable$InitTintTask;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/styles/TintDrawable$InitTintTask;-><init>(Lmiuix/animation/styles/TintDrawable;I)V

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;

    .line 162
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    :catchall_36
    move-exception p1

    goto :goto_4e

    .line 153
    :cond_38
    :goto_38
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 154
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_47

    .line 155
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_36

    .line 158
    :cond_47
    monitor-exit p0

    return-void

    .line 143
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->tintStyleLoadData()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_36

    .line 165
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void

    .line 158
    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_36

    throw p1
.end method

.method declared-synchronized restoreOriginalDrawable()V
    .registers 3

    monitor-enter p0

    .line 557
    :try_start_1
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    .line 558
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 559
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mInitTintTask:Ljava/lang/Runnable;

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_18

    .line 562
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_11

    .line 563
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    throw v0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 0
    return-void
.end method

.method setHoverCorner(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_9

    .line 128
    :cond_7
    iget v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    :goto_9
    iput v0, p0, Lmiuix/animation/styles/TintDrawable;->mTintStyle:I

    .line 129
    iput p1, p0, Lmiuix/animation/styles/TintDrawable;->mHoverRadius:F

    return-void
.end method
