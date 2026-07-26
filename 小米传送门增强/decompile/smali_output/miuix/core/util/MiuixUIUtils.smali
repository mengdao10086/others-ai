.class public Lmiuix/core/util/MiuixUIUtils;
.super Ljava/lang/Object;
.source "MiuixUIUtils.java"


# static fields
.field private static mTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiuix/core/util/MiuixUIUtils;->mTmpValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .registers 5

    .line 124
    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    goto :goto_2e

    .line 127
    :cond_10
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    goto :goto_2e

    .line 130
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 131
    const-string v0, "bool"

    const-string v1, "android"

    const-string v3, "config_showNavigationBar"

    invoke-virtual {p0, v3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2e

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :cond_2e
    :goto_2e
    return v2
.end method

.method private static checkMultiWindow(Landroid/app/Activity;)Z
    .registers 1

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public static dp2px(FF)I
    .registers 2

    .line 0
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    invoke-static {p0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p0

    return p0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 362
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 363
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 364
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 366
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorFromDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .registers 3

    .line 418
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_f

    .line 419
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2e

    .line 420
    :cond_f
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2d

    .line 422
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 424
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return-object p0
.end method

.method public static getDefDimen(Landroid/content/Context;I)I
    .registers 4

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 64
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getFontLevel(Landroid/content/Context;)I
    .registers 2

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fc66666    # 1.55f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x2

    return p0
.end method

.method public static getNaviBarInteractionMode(Landroid/content/Context;)I
    .registers 4

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 101
    const-string v0, "integer"

    const-string v1, "android"

    const-string v2, "config_navBarInteractionMode"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 3

    .line 186
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    move p0, v1

    goto :goto_14

    .line 187
    :cond_10
    :goto_10
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getRealNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    :goto_14
    if-gez p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, p0

    :goto_18
    return v1
.end method

.method private static getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 5

    .line 242
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 243
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 244
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 247
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDisplayInfo"

    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 246
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "logicalWidth"

    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 248
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "logicalHeight"

    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 250
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_4c

    goto :goto_68

    :catch_4c
    move-exception v1

    .line 253
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 254
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 256
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 257
    const-string p0, "MiuixUtils"

    const-string v2, "catch error! failed to get physical size"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    return-object v0
.end method

.method public static getRealNavigationBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 141
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 144
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 145
    const-string v0, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1c
    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static isDarkThemeOverlay(Landroid/content/Context;I)Z
    .registers 2

    .line 451
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 452
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLightColor(I)Z

    move-result p0

    return p0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isFreeformMode(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 232
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 233
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 234
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 235
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 236
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    const-string v0, "mWindowingMode=freeform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const p0, 0x3f666666    # 0.9f

    cmpg-float v0, v2, p0

    if-lez v0, :cond_48

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_4a

    :cond_48
    const/4 p0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 2

    .line 88
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getNaviBarInteractionMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .registers 2

    .line 196
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    .line 197
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 198
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->checkMultiWindow(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 200
    :cond_f
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isLayoutHideNavigation(Landroid/view/View;)Z
    .registers 3

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isTargetSdkVersionAboveV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 295
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public static isLightColor(I)Z
    .registers 8

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    const-wide v3, 0x3fd322d0e5604189L    # 0.299

    int-to-double v5, v1

    mul-double/2addr v5, v3

    const-wide v3, 0x3fe2c8b439581062L    # 0.587

    int-to-double v1, v2

    mul-double/2addr v1, v3

    add-double/2addr v5, v1

    const-wide v1, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v3, p0

    mul-double/2addr v3, v1

    add-double/2addr v5, v3

    const-wide/high16 v1, 0x4060000000000000L    # 128.0

    cmpl-double p0, v5, v1

    if-lez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method public static isShowNavigationHandle(Landroid/content/Context;)Z
    .registers 2

    .line 178
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isSupportGestureLine(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isSupportGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "use_gesture_version_three"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isTallFontLang(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 395
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_b

    return v0

    .line 399
    :cond_b
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_12

    return v0

    .line 403
    :cond_12
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_2e

    .line 405
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 406
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    :cond_2e
    if-nez v1, :cond_31

    return v0

    .line 412
    :cond_31
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 413
    const-string v1, "bo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "ta"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    :cond_45
    const/4 v0, 0x1

    :cond_46
    return v0
.end method

.method public static isTargetSdkVersionAboveV(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 336
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_17

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p0, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static px2dp(FF)I
    .registers 2

    .line 0
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    invoke-static {p0, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    return p0
.end method

.method public static renderContentInCutoutArea(Landroid/content/Context;)Z
    .registers 7

    .line 301
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isTargetSdkVersionAboveV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 304
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 306
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-eqz v2, :cond_2c

    .line 308
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 310
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 311
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne p0, v1, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v5

    :goto_25
    if-lt v0, v4, :cond_42

    if-nez v2, :cond_40

    if-ne p0, v3, :cond_3f

    goto :goto_40

    :cond_2c
    const v2, 0x1010586

    .line 318
    invoke-static {p0, v2, v5}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p0

    if-ne p0, v1, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, v5

    :goto_38
    if-lt v0, v4, :cond_42

    if-nez v2, :cond_40

    if-ne p0, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v5

    :cond_40
    :goto_40
    move v5, v1

    goto :goto_43

    :cond_42
    move v5, v2

    :cond_43
    :goto_43
    return v5
.end method
