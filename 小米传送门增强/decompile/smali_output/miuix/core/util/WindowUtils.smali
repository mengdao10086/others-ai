.class public Lmiuix/core/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 3

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    .line 38
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    .line 40
    :catch_b
    const-string v0, "WindowUtils"

    const-string v1, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_12
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .line 164
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 165
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 3

    .line 182
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 187
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_22

    .line 191
    :cond_1b
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_22
    return-void
.end method

.method public static getScreenType(Landroid/content/res/Configuration;)I
    .registers 3

    .line 406
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    .line 408
    const-string v0, "screenType=0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 410
    :cond_e
    const-string v0, "screenType=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    .line 412
    :cond_18
    const-string v0, "screenType=2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p0, 0x2

    return p0

    .line 414
    :cond_22
    const-string v0, "screenType=3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p0, 0x3

    return p0

    .line 416
    :cond_2c
    const-string v0, "screenType=4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 p0, 0x4

    return p0

    .line 418
    :cond_36
    const-string v0, "screenType=5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x5

    return p0

    :cond_40
    return v1
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    .line 26
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .line 207
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 208
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 3

    .line 70
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1b

    .line 103
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_66

    :cond_1b
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_51

    .line 110
    :goto_1f
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2f

    .line 111
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_28

    goto :goto_2f

    .line 114
    :cond_28
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1f

    .line 117
    :cond_2f
    :goto_2f
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_3c

    .line 118
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_44

    .line 121
    :cond_3c
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/DisplayCaptureUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 123
    :goto_44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_66

    .line 125
    :cond_51
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 126
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_66

    .line 128
    :cond_5f
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_66
    return-void
.end method

.method private static isActivity(Landroid/content/Context;)Z
    .registers 2

    .line 444
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_11

    .line 445
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 448
    :cond_a
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .registers 6

    .line 399
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 400
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    add-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 401
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    const-string p1, "mWindowingMode=freeform"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const p0, 0x3f666666    # 0.9f

    cmpg-float p1, v0, p0

    if-lez p1, :cond_28

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .registers 5

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_21

    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->isActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_21

    .line 439
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v3, :cond_20

    move v2, v3

    :cond_20
    return v2

    .line 433
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v3, :cond_2e

    move v2, v3

    :cond_2e
    return v2
.end method
