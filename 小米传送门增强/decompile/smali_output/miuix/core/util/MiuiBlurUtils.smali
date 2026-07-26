.class public Lmiuix/core/util/MiuiBlurUtils;
.super Ljava/lang/Object;
.source "MiuiBlurUtils.java"


# static fields
.field public static METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

.field public static METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

.field public static METHOD_SET_BG_BLEND_COLORS:Ljava/lang/reflect/Method;

.field public static METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

.field public static METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

.field public static METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static addBackgroundBlenderColor(Landroid/view/View;II)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 458
    :cond_4
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 462
    :cond_b
    :try_start_b
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1f

    .line 463
    const-class v1, Landroid/view/View;

    const-string v2, "addMiBackgroundBlendColor"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 468
    :cond_1f
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_32

    const/4 p0, 0x1

    return p0

    :catch_32
    const/4 p0, 0x0

    .line 470
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    return v0
.end method

.method public static clearBackgroundBlendConfig(Landroid/view/View;)Z
    .registers 5

    .line 813
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 817
    :try_start_9
    sget-object v2, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    if-nez v2, :cond_17

    .line 818
    const-class v2, Landroid/view/View;

    const-string v3, "clearMiBackgroundBlendColor"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 821
    :cond_17
    sget-object v2, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    .line 823
    :catch_1e
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static clearBackgroundBlur(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    .line 418
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlurMode(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 419
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method public static isEnable()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v0

    return v0
.end method

.method public static setBackgroundBlendConfig(Landroid/view/View;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 522
    :cond_4
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 526
    :cond_b
    :try_start_b
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLEND_COLORS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1f

    .line 527
    const-class v1, Landroid/view/View;

    const-string v2, "setMiBackgroundBlendColors"

    const-class v3, Ljava/util/ArrayList;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLEND_COLORS:Ljava/lang/reflect/Method;

    .line 531
    :cond_1f
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLEND_COLORS:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_2a

    const/4 p0, 0x1

    return p0

    :catch_2a
    const/4 p0, 0x0

    .line 533
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLEND_COLORS:Ljava/lang/reflect/Method;

    return v0
.end method

.method public static setBackgroundBlendConfig(Landroid/view/View;[I[I)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    if-nez p2, :cond_8

    goto :goto_3f

    .line 494
    :cond_8
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 497
    :cond_f
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    .line 498
    invoke-static {p1, p2}, Lmiuix/core/util/MiuiBlurUtils;->wrapBlendConfig([I[I)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1d

    return v0

    .line 502
    :cond_1d
    invoke-static {p0, p1}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlendConfig(Landroid/view/View;Ljava/util/ArrayList;)Z

    return v2

    .line 506
    :cond_21
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlendConfig(Landroid/view/View;)Z

    .line 507
    array-length v1, p1

    array-length v3, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v0

    :goto_2b
    if-ge v3, v1, :cond_3e

    .line 509
    aget v4, p1, v3

    aget v5, p2, v3

    invoke-static {p0, v4, v5}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 510
    invoke-static {p0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlendConfig(Landroid/view/View;)Z

    return v0

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3e
    return v2

    :cond_3f
    :goto_3f
    return v0
.end method

.method public static setBackgroundBlur(Landroid/view/View;II)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 232
    :cond_4
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 235
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/HyperMaterialUtils;->isFeatureEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    return v0

    :cond_16
    const/16 v1, 0x190

    if-le p1, v1, :cond_1b

    move p1, v1

    .line 242
    :cond_1b
    :try_start_1b
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1d} :catch_63

    const-class v2, Landroid/view/View;

    if-nez v1, :cond_2f

    .line 243
    :try_start_21
    const-string v1, "setMiBackgroundBlurMode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 247
    :cond_2f
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_5e

    .line 249
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_51

    .line 250
    const-string v1, "setMiBackgroundBlurRadius"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 254
    :cond_51
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5e} :catch_63

    .line 261
    :cond_5e
    invoke-static {p0, p2}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    move-result p0

    return p0

    :catch_63
    const/4 p0, 0x0

    .line 257
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 258
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    return v0
.end method

.method public static setBackgroundBlurMode(Landroid/view/View;I)Z
    .registers 6

    .line 313
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 317
    :cond_8
    :try_start_8
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1c

    .line 318
    const-class v0, Landroid/view/View;

    const-string v2, "setMiBackgroundBlurMode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 322
    :cond_1c
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2b

    const/4 p0, 0x1

    return p0

    :catch_2b
    const/4 p0, 0x0

    .line 324
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static setBackgroundBlurRadius(Landroid/view/View;I)Z
    .registers 6

    .line 265
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x190

    if-le p1, v0, :cond_d

    move p1, v0

    :cond_d
    if-gez p1, :cond_10

    return v1

    .line 275
    :cond_10
    :try_start_10
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    if-nez v0, :cond_24

    .line 276
    const-class v0, Landroid/view/View;

    const-string v2, "setMiBackgroundBlurRadius"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 280
    :cond_24
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_33

    const/4 p0, 0x1

    return p0

    :catch_33
    const/4 p0, 0x0

    .line 282
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static setViewBlurMode(Landroid/view/View;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 436
    :cond_4
    invoke-static {}, Lmiuix/core/util/HyperMaterialUtils;->isEnable()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 440
    :cond_b
    :try_start_b
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1f

    .line 441
    const-class v1, Landroid/view/View;

    const-string v2, "setMiViewBlurMode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 445
    :cond_1f
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_2e

    const/4 p0, 0x1

    return p0

    :catch_2e
    const/4 p0, 0x0

    .line 447
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    return v0
.end method

.method public static wrapBlendConfig([I[I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_49

    if-nez p1, :cond_5

    goto :goto_49

    .line 798
    :cond_5
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_2b

    .line 799
    array-length v0, p0

    .line 801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 802
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 800
    const-string v1, "warning!! colorInts(%s) and blendModes(%s) size not match. %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string v1, "MiuixBlur"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_2b
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 805
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_48

    .line 807
    new-instance v3, Landroid/graphics/Point;

    aget v4, p0, v2

    aget v5, p1, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_48
    return-object v1

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return-object p0
.end method
