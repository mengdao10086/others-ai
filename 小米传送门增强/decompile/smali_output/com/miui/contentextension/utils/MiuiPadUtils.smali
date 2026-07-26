.class public Lcom/miui/contentextension/utils/MiuiPadUtils;
.super Ljava/lang/Object;
.source "MiuiPadUtils.java"


# static fields
.field private static final IS_TABLET:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "enuma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "elish"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "nabu"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/miui/contentextension/utils/MiuiPadUtils;->IS_TABLET:Z

    return-void
.end method

.method public static varargs callObjectMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 94
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    .line 104
    const-string p2, "InvocationTargetException"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_c
    move-exception p1

    .line 102
    const-string p2, "IllegalArgumentException"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_13
    move-exception p1

    .line 100
    const-string p2, "IllegalAccessException"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_1a
    move-exception p1

    .line 98
    const-string p2, "SecurityException"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_21
    move-exception p1

    .line 96
    const-string p2, "NoSuchMethodException"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isExtendedTablet()Z
    .registers 1

    .line 77
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_d

    invoke-static {}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isFoldDevice()Z
    .registers 3

    .line 81
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/SystemPropertiesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public static isPcMode(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 118
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :catch_f
    :cond_f
    return v0
.end method

.method public static isTabletSpitModel(Landroid/app/Activity;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 62
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_b

    return v0

    .line 67
    :cond_b
    invoke-static {}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isExtendedTablet()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 68
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v1, "Taplus"

    const-string v4, "getMiuiFlags"

    invoke-static/range {v1 .. v6}, Lcom/miui/contentextension/utils/MiuiPadUtils;->callObjectMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2b

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method
