.class public Lmiuix/mimotion/MiMotionHelper;
.super Ljava/lang/Object;
.source "MiMotionHelper.java"


# static fields
.field private static DEBUG:Z

.field private static final SUPPORT_MI_MOTION:Z

.field private static sInstance:Lmiuix/mimotion/MiMotionHelper;

.field private static sIsMimotionUtilsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-string v0, "ro.display.mimotion"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/mimotion/MiMotionHelper;->SUPPORT_MI_MOTION:Z

    if-eqz v0, :cond_1f

    .line 23
    const-string v0, "persist.mimotion.debug"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/mimotion/MiMotionHelper;->DEBUG:Z

    .line 24
    invoke-static {}, Lmiuix/mimotion/MiMotionHelper;->checkMimotionUtilsAvailable()V

    :cond_1f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMimotionUtilsAvailable()V
    .registers 1

    .line 29
    const-string v0, "com.xiaomi.mimotion.MimotionUtils"

    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Lmiuix/mimotion/MiMotionHelper;->sIsMimotionUtilsAvailable:Z

    return-void
.end method

.method public static getInstance()Lmiuix/mimotion/MiMotionHelper;
    .registers 1

    .line 44
    sget-object v0, Lmiuix/mimotion/MiMotionHelper;->sInstance:Lmiuix/mimotion/MiMotionHelper;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lmiuix/mimotion/MiMotionHelper;

    invoke-direct {v0}, Lmiuix/mimotion/MiMotionHelper;-><init>()V

    sput-object v0, Lmiuix/mimotion/MiMotionHelper;->sInstance:Lmiuix/mimotion/MiMotionHelper;

    .line 47
    :cond_b
    sget-object v0, Lmiuix/mimotion/MiMotionHelper;->sInstance:Lmiuix/mimotion/MiMotionHelper;

    return-object v0
.end method

.method public static isSupportMiMotion()Z
    .registers 1

    .line 40
    sget-boolean v0, Lmiuix/mimotion/MiMotionHelper;->SUPPORT_MI_MOTION:Z

    return v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    .line 51
    sget-boolean v0, Lmiuix/mimotion/MiMotionHelper;->sIsMimotionUtilsAvailable:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_6
    invoke-static {}, Lcom/xiaomi/mimotion/MimotionUtils;->isEnabled()Z

    move-result v0

    .line 55
    sget-boolean v1, Lmiuix/mimotion/MiMotionHelper;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MimotionHelper isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiMotionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v0
.end method

.method public setPreferredRefreshRate(Ljava/lang/Object;I)Z
    .registers 5

    .line 69
    sget-boolean v0, Lmiuix/mimotion/MiMotionHelper;->sIsMimotionUtilsAvailable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_6
    sget-boolean v0, Lmiuix/mimotion/MiMotionHelper;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiMotionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_20
    invoke-static {p1, p2}, Lcom/xiaomi/mimotion/MimotionUtils;->setPreferredRefreshRate(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
