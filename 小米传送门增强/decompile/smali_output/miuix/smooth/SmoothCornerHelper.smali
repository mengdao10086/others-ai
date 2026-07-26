.class public Lmiuix/smooth/SmoothCornerHelper;
.super Ljava/lang/Object;
.source "SmoothCornerHelper.java"


# static fields
.field public static FORCE_USE_SMOOTH:Ljava/lang/Boolean;

.field public static IS_SUPPORT_SMOOTH_CORNER:Z

.field private static sEnableAppSmoothCorner:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const-string v0, "persist.sys.support_view_smoothcorner"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_17

    .line 21
    const-string v0, "SmoothCornerHelper"

    const-string v1, "this device is not support system smooth corner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 26
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-eqz v0, :cond_7

    .line 27
    invoke-static {p0}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner(Landroid/content/Context;)Z

    :cond_7
    return-void
.end method

.method public static isEnableAppSmoothCorner(Landroid/content/Context;)Z
    .registers 5

    .line 32
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    if-nez v0, :cond_3b

    .line 34
    :try_start_4
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v1, "getGlobalSmoothCornerEnabled"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sput-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    if-nez p0, :cond_3b

    .line 40
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception p0

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnableAppSmoothCorner fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmoothCornerHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_3b
    :goto_3b
    sget-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .line 83
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 89
    :cond_10
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnableByReflect(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private static setDrawableSmoothCornerEnableByReflect(Landroid/graphics/drawable/Drawable;Z)V
    .registers 5

    .line 108
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "setSmoothCornerEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, v1, v2, p1}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception p0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDrawableSmoothCornerEnable fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmoothCornerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public static setViewSmoothCornerEnable(Landroid/view/View;Z)V
    .registers 3

    .line 51
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_5

    return-void

    .line 54
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 57
    :cond_10
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnableByReflect(Landroid/view/View;Z)V

    return-void
.end method

.method private static setViewSmoothCornerEnableByReflect(Landroid/view/View;Z)V
    .registers 5

    .line 76
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSmoothCornerEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, v1, v2, p1}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewSmoothCornerEnable fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmoothCornerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method
