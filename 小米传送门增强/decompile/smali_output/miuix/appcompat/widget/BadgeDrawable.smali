.class public Lmiuix/appcompat/widget/BadgeDrawable;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mConfig:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private mNumber:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x2

    .line 90
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 100
    sget-object v0, Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;->SIZE_SMALL:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;ILmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;I)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 113
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mConfig:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    .line 115
    iput p4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mNumber:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$color;->miuix_appcompat_badge_drawable_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mColor:I

    .line 117
    invoke-direct {p0, p3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable(Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawTextOnBadge(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 253
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 252
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/BadgeDrawable;->initPaint(I)V

    .line 258
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 259
    iget-object v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, p2

    sub-float/2addr v1, v2

    .line 260
    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->normalizeText()Ljava/lang/String;

    move-result-object p2

    .line 261
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, p1, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 262
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 201
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBadgeDrawable(IIFI)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 205
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 207
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 209
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private getBadgeDrawable(Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 217
    sget-object v0, Lmiuix/appcompat/widget/BadgeDrawable$1;->$SwitchMap$miuix$appcompat$widget$BadgeDrawable$BadgeConfig:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/high16 v2, 0x4f000000

    if-eq p1, v0, :cond_50

    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eq p1, v0, :cond_39

    if-eq p1, v3, :cond_2a

    if-eq p1, v1, :cond_1b

    .line 240
    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_66

    .line 235
    :cond_1b
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 236
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mColor:I

    invoke-direct {p0, p1, p1, v2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable(IIFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_66

    .line 231
    :cond_2a
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 232
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mColor:I

    invoke-direct {p0, p1, p1, v2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable(IIFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_66

    .line 225
    :cond_39
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 226
    invoke-direct {p0, v3}, Lmiuix/appcompat/widget/BadgeDrawable;->normalizeWidth(I)I

    move-result v0

    .line 227
    iget v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mColor:I

    invoke-direct {p0, v0, p1, v2, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable(IIFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 228
    invoke-direct {p0, v3, p1}, Lmiuix/appcompat/widget/BadgeDrawable;->drawTextOnBadge(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_66

    .line 219
    :cond_50
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 220
    invoke-direct {p0, v1}, Lmiuix/appcompat/widget/BadgeDrawable;->normalizeWidth(I)I

    move-result v0

    .line 221
    iget v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mColor:I

    invoke-direct {p0, v0, p1, v2, v3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable(IIFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 222
    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/widget/BadgeDrawable;->drawTextOnBadge(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_66
    return-object p1
.end method

.method private getBadgeRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 13

    const/4 v0, 0x0

    .line 309
    const-string v1, "BadgeDrawable"

    if-nez p1, :cond_b

    .line 310
    const-string p1, "can not attach badge on a null object."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 313
    :cond_b
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_15

    .line 314
    const-string p1, "can not find badge drawable resource."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 317
    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 319
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 320
    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 326
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 328
    iget-object v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mConfig:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    sget-object v5, Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;->EXPAND_INSIDE:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    if-eq v4, v5, :cond_49

    sget-object v5, Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;->EXPAND_OUTSIDE:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    if-ne v4, v5, :cond_40

    goto :goto_49

    .line 330
    :cond_40
    iget-object v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    goto :goto_51

    .line 329
    :cond_49
    :goto_49
    iget-object v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    .line 332
    :goto_51
    iget v5, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v5, :cond_83

    if-eq v5, v7, :cond_69

    if-eq v5, v9, :cond_83

    if-eq v5, v6, :cond_69

    .line 394
    const-string p1, "invalid gravity value."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v8

    move v1, p1

    move v2, v1

    goto/16 :goto_103

    .line 385
    :cond_69
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v1, v3

    add-int v1, v8, v3

    if-nez p1, :cond_73

    if-eq v5, v7, :cond_77

    :cond_73
    if-eqz p1, :cond_7a

    if-ne v5, v6, :cond_7a

    .line 390
    :cond_77
    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7d

    :cond_7a
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    :goto_7d
    add-int/2addr v2, p1

    move v10, v2

    move v2, p1

    :goto_80
    move p1, v10

    goto/16 :goto_103

    :cond_83
    if-nez p1, :cond_87

    if-eqz v5, :cond_8b

    :cond_87
    if-eqz p1, :cond_8c

    if-ne v5, v9, :cond_8c

    :cond_8b
    move v8, v7

    .line 337
    :cond_8c
    sget-object p1, Lmiuix/appcompat/widget/BadgeDrawable$1;->$SwitchMap$miuix$appcompat$widget$BadgeDrawable$BadgeConfig:[I

    iget-object v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mConfig:Lmiuix/appcompat/widget/BadgeDrawable$BadgeConfig;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v7, :cond_ed

    if-eq p1, v9, :cond_d1

    if-eq p1, v6, :cond_c1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_b6

    .line 375
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v4

    if-eqz v8, :cond_a9

    .line 377
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    :goto_a7
    move v8, v1

    goto :goto_ae

    :cond_a9
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    goto :goto_a7

    :goto_ae
    add-int v1, p1, v3

    :goto_b0
    add-int/2addr v2, v8

    move v10, v8

    move v8, p1

    move p1, v2

    move v2, v10

    goto :goto_103

    .line 361
    :cond_b6
    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v8, :cond_bd

    .line 362
    iget v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_a7

    :cond_bd
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    goto :goto_a7

    .line 367
    :cond_c1
    iget p1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr p1, v1

    if-eqz v8, :cond_ce

    .line 369
    iget v1, v0, Landroid/graphics/Rect;->left:I

    :goto_ca
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    goto :goto_a7

    :cond_ce
    iget v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_ca

    .line 350
    :cond_d1
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v4

    sub-int v1, p1, v3

    if-eqz v8, :cond_e3

    .line 353
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v8, v3, v4

    sub-int v2, v8, v2

    move v10, v1

    move v1, p1

    move p1, v8

    :goto_e1
    move v8, v10

    goto :goto_103

    .line 356
    :cond_e3
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v4

    add-int/2addr v2, v8

    move v10, v1

    move v1, p1

    move p1, v2

    move v2, v8

    goto :goto_e1

    .line 339
    :cond_ed
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v4

    add-int v1, p1, v3

    if-eqz v8, :cond_f9

    .line 342
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v3, v4

    goto :goto_b0

    .line 345
    :cond_f9
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v3, v4

    sub-int v2, v8, v2

    move v10, v8

    move v8, p1

    goto/16 :goto_80

    .line 401
    :goto_103
    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 402
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 403
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 404
    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method

.method private initPaint(I)V
    .registers 6

    .line 266
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1c

    .line 267
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 268
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    .line 276
    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 277
    iget-object v1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41600000    # 14.0f

    .line 278
    invoke-static {v1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 279
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_33

    int-to-float p1, v0

    goto :goto_34

    :cond_33
    int-to-float p1, v1

    :goto_34
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private normalizeText()Ljava/lang/String;
    .registers 3

    .line 302
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mNumber:I

    if-lez v0, :cond_d

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_d
    const-string v0, "99+"

    return-object v0
.end method

.method private normalizeWidth(I)I
    .registers 6

    .line 285
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mNumber:I

    const/16 v1, 0xa

    const/4 v2, 0x4

    if-ltz v0, :cond_1d

    if-ge v0, v1, :cond_1d

    if-ne p1, v2, :cond_14

    .line 287
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    .line 288
    :cond_14
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    :cond_1d
    const/16 v3, 0x64

    if-lt v0, v1, :cond_37

    if-ge v0, v3, :cond_37

    if-ne p1, v2, :cond_2e

    .line 291
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41e80000    # 29.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    .line 292
    :cond_2e
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    :cond_37
    if-lt v0, v3, :cond_4d

    if-ne p1, v2, :cond_44

    .line 295
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    .line 296
    :cond_44
    iget-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_4e

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    return p1
.end method


# virtual methods
.method public attachBadgeDrawable(Landroid/view/View;)V
    .registers 3

    .line 140
    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;I)V
    .registers 5

    .line 150
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    .line 151
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_11

    .line 153
    const-string p1, "BadgeDrawable"

    const-string p2, "attach failed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 161
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public detachBadgeDrawable()V
    .registers 2

    .line 170
    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    :cond_b
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 127
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void

    .line 130
    :cond_8
    const-string p1, "BadgeDrawable"

    const-string v0, "set invalid gravity value."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 131
    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void
.end method
