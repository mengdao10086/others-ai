.class public Lmiuix/core/util/MiShadowUtils;
.super Ljava/lang/Object;
.source "MiShadowUtils.java"


# static fields
.field public static final SUPPORT_MI_SHADOW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "persist.sys.mi_shadow_supported"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-nez v0, :cond_17

    .line 25
    const-string v0, "MiShadowHelper"

    const-string v1, "This device does not support mi shadow!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public static clearMiShadow(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1, v1, v1}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IFFF)V
    .registers 11

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 49
    invoke-static/range {v0 .. v5}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFFF)V

    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IFFFF)V
    .registers 10

    .line 53
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_34

    .line 55
    :try_start_4
    const-class v0, Landroid/view/View;

    const-string v1, "setMiShadow"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-static {v0, p0, v1, v2, p1}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    .line 58
    const-string p1, "MiShadowHelper"

    const-string p2, "Failed to call setMiShadow"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public static setMiShadow(Landroid/view/View;IFFFFZ)V
    .registers 15

    .line 64
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_47

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_e

    .line 66
    invoke-static/range {p0 .. p5}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFFF)V

    return-void

    .line 70
    :cond_e
    :try_start_e
    const-class v0, Landroid/view/View;

    const-string v1, "setMiShadow"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    move-result-object v2

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    .line 70
    invoke-static {v0, p0, v1, v2, p1}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception p0

    .line 73
    const-string p1, "MiShadowHelper"

    const-string p2, "Failed to call setMiShadow"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    return-void
.end method
