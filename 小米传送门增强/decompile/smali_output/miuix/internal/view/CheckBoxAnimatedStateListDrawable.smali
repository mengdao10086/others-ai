.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
    }
.end annotation


# instance fields
.field private mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

.field private mContentAlpha:F

.field private mIsEnabled:Z

.field private mPreChecked:Z

.field private mPrePressed:Z

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 35
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 39
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .registers 15

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 33
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 35
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 39
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 140
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v2

    iget v3, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method private safeGetBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 5

    .line 122
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 124
    const-string p2, "MiuixCheckbox"

    const-string v0, "try catch Exception insafeGetBoolean"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method private safeGetColor(Landroid/content/res/TypedArray;II)I
    .registers 5

    .line 104
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 106
    const-string p2, "MiuixCheckbox"

    const-string v0, "try catch UnsupportedOperationException insafeGetColor"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method private safeGetInt(Landroid/content/res/TypedArray;II)I
    .registers 5

    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 115
    const-string p2, "MiuixCheckbox"

    const-string v0, "try catch Exception insafeGetInt"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 15

    .line 45
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 46
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    move-result v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x1010590

    const/4 v3, 0x1

    .line 49
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    iget p1, v1, Landroid/util/TypedValue;->type:I

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-static {p1, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object p1

    .line 51
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 52
    const-string v1, "#ffffff"

    if-eqz p1, :cond_32

    .line 53
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_36

    :cond_32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 54
    :goto_36
    iget-object v3, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v4, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    invoke-direct {p0, v0, v4, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 58
    iget-object v3, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v4, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    invoke-direct {p0, v0, v4, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    if-eqz p1, :cond_53

    .line 62
    const-string v2, "#3482FF"

    :goto_4e
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_56

    :cond_53
    const-string v2, "#277AF7"

    goto :goto_4e

    .line 63
    :goto_56
    iget-object v3, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v4, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    invoke-direct {p0, v0, v4, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 67
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 68
    iget-object v2, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v3, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    invoke-direct {p0, v0, v3, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    const/16 v1, 0x33

    const/16 v2, 0xf

    if-eqz p1, :cond_76

    move v3, v2

    goto :goto_77

    :cond_76
    move v3, v1

    .line 72
    :goto_77
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v5, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    invoke-direct {p0, v0, v5, v3}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v4, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    if-eqz p1, :cond_84

    move v1, v2

    .line 76
    :cond_84
    iget-object v2, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v3, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    invoke-direct {p0, v0, v3, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz p1, :cond_95

    move v3, v1

    goto :goto_96

    :cond_95
    move v3, v2

    .line 80
    :goto_96
    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v5, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    invoke-direct {p0, v0, v5, v3}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v4, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v1, v2

    .line 84
    :goto_a4
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v3, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    invoke-direct {p0, v0, v3, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 87
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    invoke-direct {p0, v0, v1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v1

    iput-boolean v1, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v4

    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v5, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v6, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v7, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v8, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v9, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v10, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v11, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v12, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 230
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_e

    .line 231
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 234
    :cond_e
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v0, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    if-nez v0, :cond_1f

    .line 235
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_1b

    .line 236
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    .line 238
    :cond_1b
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 241
    :cond_1f
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 244
    iget-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    if-eqz v0, :cond_3e

    .line 245
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_34

    .line 246
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_34
    const/high16 v0, 0x437f0000    # 255.0f

    .line 248
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    goto :goto_43

    :cond_3e
    const/16 v0, 0x4c

    .line 250
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    .line 252
    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    div-int/2addr v4, v2

    int-to-float v0, v4

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 255
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getCheckWidgetDrawableStyle()I
    .registers 2

    .line 130
    sget v0, Lmiuix/appcompat/R$style;->CheckWidgetDrawable_CheckBox:I

    return v0
.end method

.method public getContentAlpha()F
    .registers 2

    .line 272
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 260
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return v0
.end method

.method protected isSingleSelectionWidget()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .registers 2

    .line 215
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    invoke-direct {v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    return-object v0
.end method

.method protected onStateChange([I)Z
    .registers 10

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 159
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-nez v1, :cond_9

    return v0

    .line 162
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 163
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_18

    .line 164
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1

    :cond_18
    const/4 v1, 0x0

    .line 168
    iput-boolean v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 169
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1e
    if-ge v1, v2, :cond_3b

    aget v5, p1, v1

    const v6, 0x10100a7

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2a

    move v3, v7

    goto :goto_38

    :cond_2a
    const v6, 0x10100a0

    if-ne v5, v6, :cond_31

    move v4, v7

    goto :goto_38

    :cond_31
    const v6, 0x101009e

    if-ne v5, v6, :cond_38

    .line 175
    iput-boolean v7, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3b
    if-eqz v3, :cond_40

    .line 179
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    .line 181
    :cond_40
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_4b

    if-nez v3, :cond_4b

    .line 182
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    invoke-virtual {p0, v4, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    :cond_4b
    if-nez v3, :cond_58

    .line 185
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_55

    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    if-eq v4, p1, :cond_58

    .line 186
    :cond_55
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    .line 189
    :cond_58
    iput-boolean v3, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 190
    iput-boolean v4, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return v0
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(IIII)V

    .line 278
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 289
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 290
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .registers 6

    .line 282
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    .line 283
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_7
    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 294
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_7

    .line 295
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 2

    .line 268
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 264
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void
.end method

.method protected startPressedAnim(Z)V
    .registers 4

    .line 202
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_b

    .line 203
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    :cond_b
    return-void
.end method

.method protected startUnPressedAnim(Z)V
    .registers 4

    .line 209
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_b

    .line 210
    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    :cond_b
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .registers 4

    .line 195
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_a

    .line 196
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    :cond_a
    return-void
.end method
