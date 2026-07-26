.class public Lmiuix/core/util/variable/WindowWrapper;
.super Ljava/lang/Object;
.source "WindowWrapper.java"


# static fields
.field protected static setExtraFlags:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_14

    :catch_11
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    :goto_14
    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)Z
    .registers 6

    .line 36
    sget-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-nez p1, :cond_f

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_27

    .line 43
    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v2, :cond_1e

    const/16 v3, 0x2010

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_27

    .line 49
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, -0x2011

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_27
    const/high16 v0, 0x4000000

    if-nez p1, :cond_2f

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_32

    .line 58
    :cond_2f
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :goto_32
    const/16 v0, 0x11

    if-nez p1, :cond_48

    .line 65
    :try_start_36
    sget-object p1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_48
    if-ne p1, v2, :cond_4c

    move p1, v0

    goto :goto_4d

    :cond_4c
    move p1, v2

    .line 73
    :goto_4d
    sget-object v3, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5e} :catch_5f

    :goto_5e
    move v1, v2

    :catch_5f
    return v1
.end method
