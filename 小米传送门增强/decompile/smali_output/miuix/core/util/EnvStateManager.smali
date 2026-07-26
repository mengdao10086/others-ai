.class public Lmiuix/core/util/EnvStateManager;
.super Ljava/lang/Object;
.source "EnvStateManager.java"


# static fields
.field static volatile mIsFullScreenGestureMode:Ljava/lang/Boolean;

.field static final mNaviModeLock:Ljava/lang/Object;

.field static volatile mNavigationBarHeight:I

.field static volatile mNavigationBarHeightDp:I

.field static final mNavigationBarHeightLock:Ljava/lang/Object;

.field static volatile mStatusBarHeight:I

.field static volatile mStatusBarHeightDp:I

.field static final mStatusBarHeightLock:Ljava/lang/Object;

.field static sOriginConfig:Lmiuix/view/DisplayConfig;

.field static final sScreenSize:Landroid/graphics/Point;

.field static final sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/core/util/WindowBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 30
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 31
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 32
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 33
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    return-void
.end method

.method private static ensureOriginConfigExist(Landroid/content/res/Configuration;)V
    .registers 2

    .line 306
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    if-nez v0, :cond_b

    .line 307
    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    :cond_b
    return-void
.end method

.method private static getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 2

    const/4 v0, 0x1

    .line 130
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getInnerWindowInfo(Landroid/content/Context;Z)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 135
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/WindowBaseInfo;

    if-nez v1, :cond_24

    .line 137
    new-instance v1, Lmiuix/core/util/WindowBaseInfo;

    invoke-direct {v1}, Lmiuix/core/util/WindowBaseInfo;-><init>()V

    if-eqz p1, :cond_24

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 5

    .line 286
    sget v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 287
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    if-ne v2, v1, :cond_2a

    .line 289
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    .line 291
    sget v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 293
    :cond_2a
    :goto_2a
    monitor-exit v0

    goto :goto_2e

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    :goto_2e
    if-eqz p1, :cond_33

    .line 295
    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    goto :goto_35

    :cond_33
    sget p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    :goto_35
    return p0
.end method

.method public static getScreenShortEdge(Landroid/content/Context;)I
    .registers 2

    .line 70
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 71
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 62
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isSizeDirty(Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 63
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 64
    invoke-static {v1, p0}, Lmiuix/core/util/EnvStateManager;->updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V

    :cond_f
    return-object v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .registers 3

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 300
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 301
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;Z)I
    .registers 5

    .line 273
    sget v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 274
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_8
    sget v2, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    if-ne v2, v1, :cond_2a

    .line 276
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    .line 278
    sget v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 280
    :cond_2a
    :goto_2a
    monitor-exit v0

    goto :goto_2e

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    :goto_2e
    if-eqz p1, :cond_33

    .line 282
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    goto :goto_35

    :cond_33
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    :goto_35
    return p0
.end method

.method public static getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-static {p0, v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    .line 157
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 158
    invoke-static {p0, v0, p1, p2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 122
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 123
    iget-boolean v1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v1, :cond_b

    .line 124
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 126
    :cond_b
    iget-object p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    .line 36
    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static isFreeFormMode(Landroid/content/Context;)Z
    .registers 1

    .line 257
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 258
    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p0

    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 3

    .line 262
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    .line 263
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_7
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v1, :cond_18

    .line 265
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 267
    :cond_18
    :goto_18
    monitor-exit v0

    goto :goto_1c

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16

    throw p0

    .line 269
    :cond_1c
    :goto_1c
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSizeDirty(Landroid/graphics/Point;)Z
    .registers 3

    .line 253
    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static markEnvStateDirty(Landroid/content/Context;)V
    .registers 3

    .line 76
    sget-object p0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter p0

    .line 77
    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markSizeDirty(Landroid/graphics/Point;)V

    .line 78
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    .line 79
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p0, 0x0

    .line 80
    :try_start_b
    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 81
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    .line 82
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    .line 83
    :try_start_12
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 84
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 85
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_23

    .line 86
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_1a
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 88
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 89
    monitor-exit v1

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw p0

    :catchall_23
    move-exception v0

    .line 85
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception p0

    .line 81
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    :catchall_29
    move-exception v0

    .line 78
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static markSizeDirty(Landroid/graphics/Point;)V
    .registers 3

    .line 94
    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_d

    .line 95
    :cond_9
    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 96
    iput v1, p0, Landroid/graphics/Point;->y:I

    :cond_d
    return-void
.end method

.method public static declared-synchronized markWindowInfoDirty(Landroid/content/Context;)V
    .registers 2

    const-class v0, Lmiuix/core/util/EnvStateManager;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 104
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    .registers 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 108
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static removeInfoOfContext(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 45
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateOriginConfig(Lmiuix/view/DisplayConfig;)V
    .registers 1

    .line 40
    sput-object p0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .registers 3

    .line 56
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter v0

    .line 57
    :try_start_3
    invoke-static {p0, p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    .line 58
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 178
    :cond_3
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-nez v0, :cond_9

    if-eqz p3, :cond_98

    :cond_9
    if-eqz p2, :cond_f

    .line 180
    invoke-static {p2, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    goto :goto_12

    .line 182
    :cond_f
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 184
    :goto_12
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_98

    .line 185
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 189
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x1

    if-ltz v1, :cond_40

    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 190
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v3, :cond_40

    .line 191
    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    move v1, v2

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 194
    :goto_41
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v3, :cond_60

    iget-object v3, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 195
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v4, :cond_60

    .line 196
    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_61

    :cond_60
    move v2, v1

    :goto_61
    if-eqz v2, :cond_98

    if-eqz p2, :cond_68

    .line 200
    :goto_65
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_71

    :cond_68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    goto :goto_65

    :goto_71
    int-to-float p2, p2

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p2, v0

    .line 202
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 203
    invoke-static {p2, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iget-object v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 204
    invoke-static {p2, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p2

    .line 202
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Point;->set(II)V

    .line 205
    iget-object p2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 206
    invoke-static {v0, p2}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p2

    iput p2, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 211
    :cond_98
    iget-boolean p2, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    if-nez p2, :cond_9e

    if-eqz p3, :cond_a1

    .line 212
    :cond_9e
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_a1
    return-void
.end method

.method public static updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 3

    .line 245
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v0, :cond_7

    .line 246
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 248
    :cond_7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiuix/core/util/ScreenModeHelper;->detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    const/4 p0, 0x0

    .line 249
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    return-void
.end method

.method public static updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 5

    .line 217
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    .line 219
    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowDensity:F

    .line 220
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 221
    invoke-static {p0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iget-object v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 222
    invoke-static {p0, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    .line 220
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 223
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 224
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    .line 225
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .registers 7

    .line 229
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 230
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    .line 231
    sget-object v2, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 232
    iput v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowDensity:F

    .line 233
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    .line 234
    invoke-static {v1, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v3

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    .line 235
    invoke-static {v1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v1

    .line 233
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 236
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    .line 238
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 236
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 239
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 240
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    .line 241
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method
