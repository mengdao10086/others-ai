.class public Lcom/miui/contentextension/view/SourceIcon;
.super Landroid/widget/ImageView;
.source "SourceIcon.java"

# interfaces
.implements Lcom/miui/contentextension/utils/IconManager$IconReadyListener;
.implements Lcom/miui/contentextension/text/StretchableFrameLayout$StretchableLayoutListener;


# instance fields
.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderId:I

.field private mCircleMaskRadius:F

.field private mCornerIcon:Landroid/graphics/drawable/Drawable;

.field private mCornerIconUrl:Ljava/lang/String;

.field private mFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconUrl:Ljava/lang/String;

.field private mIsRefreshIcon:Z

.field private mMaskId:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNeedRounded:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRefreshIcon(Lcom/miui/contentextension/view/SourceIcon;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIsRefreshIcon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRefreshIcon(Lcom/miui/contentextension/view/SourceIcon;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mIsRefreshIcon:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetComposedImage(Lcom/miui/contentextension/view/SourceIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/view/SourceIcon;->getComposedImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/view/SourceIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskId:I

    .line 51
    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mBorderId:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 52
    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mNeedRounded:Z

    return-void
.end method

.method private getComposedImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 209
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7b

    .line 210
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/Utilities;->cropToSquare(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 213
    iget-object p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-nez p1, :cond_19

    move-object p1, v0

    goto :goto_1f

    :cond_19
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1f
    if-eqz p1, :cond_29

    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/Utilities;->cropToSquare(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_29
    move-object v5, p1

    .line 218
    :try_start_2a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 219
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_43

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_46

    goto :goto_44

    :cond_43
    move-object p1, v0

    :goto_44
    move-object v3, p1

    goto :goto_47

    :catch_46
    move-object v3, v0

    .line 224
    :goto_47
    :try_start_47
    iget p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mBorderId:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_67

    .line 225
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mBorderId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 226
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_67

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_64} :catch_65

    goto :goto_67

    :catch_65
    move-exception p1

    goto :goto_69

    :cond_67
    :goto_67
    move-object v4, v0

    goto :goto_71

    .line 229
    :goto_69
    const-string v1, "Taplus.SourceIcon"

    const-string v4, "getComposedImage "

    invoke-static {v1, v4, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 231
    :goto_71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v6, 0x23

    invoke-static/range {v1 .. v6}, Lcom/miui/contentextension/utils/Utilities;->getComposedImage(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_7b
    return-object p1
.end method

.method private refreshImageDrawable()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 138
    :cond_18
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/view/SourceIcon;->setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2e

    .line 140
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/view/SourceIcon;->setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public clearIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIconUrl:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public loadIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIconUrl:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lcom/miui/contentextension/utils/IconManager;->getIcon(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;)Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-direct {p0}, Lcom/miui/contentextension/view/SourceIcon;->refreshImageDrawable()V

    return-void
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 101
    iput-object p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mIconUrl:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/miui/contentextension/utils/IconManager;->getIcon(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;)Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lcom/miui/contentextension/utils/IconManager;->getIcon(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;)Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-direct {p0}, Lcom/miui/contentextension/view/SourceIcon;->refreshImageDrawable()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskPaint:Landroid/graphics/Paint;

    .line 86
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 256
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_9f

    iget v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9f

    iget-boolean v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mNeedRounded:Z

    if-eqz v0, :cond_9f

    .line 259
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 260
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_42

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_5e

    .line 264
    :cond_42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 265
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 264
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 267
    :cond_5e
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 268
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    iget-object v2, p0, Lcom/miui/contentextension/view/SourceIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 271
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    iget-object v2, p0, Lcom/miui/contentextension/view/SourceIcon;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a2

    .line 274
    :cond_9f
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_a2
    return-void
.end method

.method public onIconReady(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    iput-object p2, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    .line 160
    :cond_d
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 161
    iput-object p2, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/miui/contentextension/view/SourceIcon;->refreshImageDrawable()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 238
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 240
    iget p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mNeedRounded:Z

    if-eqz p1, :cond_34

    .line 241
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DeviceConfig;->isFullViewDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 242
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    goto :goto_34

    .line 244
    :cond_27
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    :cond_34
    :goto_34
    return-void
.end method

.method public onStretch(FZF)V
    .registers 8

    .line 280
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 282
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/contentextension/utils/DeviceConfig;->isFullViewDisplay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    :cond_1b
    if-eqz p2, :cond_25

    int-to-float p2, v2

    sub-int/2addr v0, v2

    int-to-float p3, v0

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    .line 286
    iput p2, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    goto :goto_3a

    :cond_25
    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_31

    sub-int/2addr v0, v2

    int-to-float p2, v0

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    .line 289
    iput v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    goto :goto_3a

    :cond_31
    sub-int/2addr v0, v2

    int-to-float p2, v0

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p1

    mul-float/2addr p2, p3

    sub-float/2addr v1, p2

    .line 291
    iput v1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    .line 294
    :goto_3a
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onStretchClick()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onStretchEnd(Z)V
    .registers 3

    .line 303
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    goto :goto_10

    :cond_a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_10
    if-eqz p1, :cond_25

    .line 305
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    goto :goto_34

    .line 307
    :cond_25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    .line 309
    :goto_34
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onStretchStart(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mCornerIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/contentextension/view/SourceIcon;->mIconUrl:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-direct {p0}, Lcom/miui/contentextension/view/SourceIcon;->refreshImageDrawable()V

    return-void
.end method

.method public setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    .line 167
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/view/SourceIcon$2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/view/SourceIcon$2;-><init>(Lcom/miui/contentextension/view/SourceIcon;)V

    .line 168
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 175
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/view/SourceIcon$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/contentextension/view/SourceIcon$1;-><init>(Lcom/miui/contentextension/view/SourceIcon;Z)V

    .line 176
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public setNeedRounded(Z)V
    .registers 2

    .line 318
    iput-boolean p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mNeedRounded:Z

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    int-to-float p1, p1

    .line 250
    iput p1, p0, Lcom/miui/contentextension/view/SourceIcon;->mCircleMaskRadius:F

    return-void
.end method
