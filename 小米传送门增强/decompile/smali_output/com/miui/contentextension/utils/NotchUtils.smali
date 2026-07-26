.class public Lcom/miui/contentextension/utils/NotchUtils;
.super Ljava/lang/Object;
.source "NotchUtils.java"


# direct methods
.method public static isForceBlack(Landroid/content/Context;)Z
    .registers 3

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method

.method private static isNotch()Z
    .registers 3

    .line 43
    const-string v0, "ro.miui.notch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public static layoutNotchArea(Landroid/app/Activity;)V
    .registers 4

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 27
    :cond_7
    invoke-static {}, Lcom/miui/contentextension/utils/NotchUtils;->isNotch()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/miui/contentextension/utils/NotchUtils;->isForceBlack(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_41

    .line 34
    :cond_1e
    :try_start_1e
    const-class p0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/16 v1, 0x500

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    goto :goto_41

    .line 37
    :catch_3a
    const-string p0, "NotchUtils"

    const-string v0, "addExtraFlags not found."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method
