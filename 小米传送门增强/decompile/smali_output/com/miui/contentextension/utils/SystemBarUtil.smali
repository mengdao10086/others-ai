.class public Lcom/miui/contentextension/utils/SystemBarUtil;
.super Ljava/lang/Object;
.source "SystemBarUtil.java"


# static fields
.field private static mHasNavBar:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 51
    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 52
    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->isSupportGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->isEnableGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 53
    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_1e
    return v1

    .line 57
    :cond_1f
    invoke-static {p0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_24
    return v1
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 67
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "navigation_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1c
    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 41
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "status_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1c
    return v0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .registers 7

    .line 105
    sget-object v0, Lcom/miui/contentextension/utils/SystemBarUtil;->mHasNavBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 110
    :cond_9
    :try_start_9
    const-string v0, "android.os.ServiceManager"

    .line 111
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "window"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 110
    invoke-static {v0, v1, v2, v3}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 113
    const-string v1, "android.view.IWindowManager$Stub"

    .line 114
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-static {v1, v2, v3, v0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_50

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "hasNavigationBar"

    if-ge v1, v2, :cond_52

    .line 118
    :try_start_43
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v5, v4, v1}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sput-object p0, Lcom/miui/contentextension/utils/SystemBarUtil;->mHasNavBar:Ljava/lang/Boolean;

    goto :goto_73

    :catch_50
    move-exception p0

    goto :goto_7a

    .line 120
    :cond_52
    const-string v1, "getDisplayId"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4, v2}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 121
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 122
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 121
    invoke-static {v0, v1, v5, v2, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sput-object p0, Lcom/miui/contentextension/utils/SystemBarUtil;->mHasNavBar:Ljava/lang/Boolean;

    .line 125
    :goto_73
    sget-object p0, Lcom/miui/contentextension/utils/SystemBarUtil;->mHasNavBar:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_79} :catch_50

    return p0

    .line 127
    :goto_7a
    const-string v0, "Taplus.SystemBarUtil"

    const-string v1, "reflect error while get navigationbar"

    invoke-static {v0, v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 98
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

.method public static isScreenButtonHidden(Landroid/content/Context;)Z
    .registers 5

    .line 138
    :try_start_0
    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    const-string v1, "getBoolean"

    const-class v2, Landroid/content/ContentResolver;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "force_fsg_nav_bar"

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 140
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return p0

    :catch_25
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportGestureLine(Landroid/content/Context;)Z
    .registers 5

    .line 83
    :try_start_0
    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const-class v2, Landroid/content/ContentResolver;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "use_gesture_version_three"

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 83
    invoke-static {v0, v1, v2, p0}, Lcom/miui/contentextension/utils/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return p0

    :catch_25
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
