.class public final Lcom/miui/contentextension/utils/AiWindowUtilsKt;
.super Ljava/lang/Object;
.source "AiWindowUtils.kt"


# direct methods
.method public static final getXOffset(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    goto :goto_36

    .line 47
    :cond_d
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 48
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 51
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, p0

    div-int/lit8 p0, v0, 0x2

    :goto_36
    return p0
.end method

.method public static final getYOffset(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_2c

    .line 56
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    .line 57
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p0, p0, 0x2

    add-int/lit16 v1, p0, -0xc8

    :cond_2c
    return v1
.end method

.method public static final isTranslateCard(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "EN_2_CH_WORD"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "EN_2_CH_PARA"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public static final shouldStartAiWindow(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    const-string v1, "com.xiaomi.aiasst.vision"

    invoke-virtual {v0, p0, v1}, Lcom/miui/contentextension/utils/PackageHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x12d

    if-lt p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static final startAiWindow(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "from"

    const-string v2, "contentextension"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "rawX"

    invoke-static {p0}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->getXOffset(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string p1, "rawY"

    invoke-static {p0}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->getYOffset(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string p1, "floatingWindowType"

    const-string v1, "startDictionaryTranslationWindow"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :try_start_34
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.aiasst.vision"

    const-string v3, "com.xiaomi.aiasst.vision.control.translation.AiTranslateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4d} :catch_4e

    goto :goto_69

    :catch_4e
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start ai service exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taplus.RecognitionTextCard"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return-void
.end method
