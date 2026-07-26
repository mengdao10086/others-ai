.class public Lmiuix/animation/Folme;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/Folme$ObjectFolmeImpl;,
        Lmiuix/animation/Folme$FolmeImpl;,
        Lmiuix/animation/Folme$SimpleFolmeImpl;,
        Lmiuix/animation/Folme$FontWeight;,
        Lmiuix/animation/Folme$FontType;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = 0.4761905f

.field private static DEFAULT_THRESHOLD_VELOCITY:F = 0.0f

.field private static final DELAY_TIME:J = 0x4e20L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_DIE_MUCH:J = 0x3e8L

.field private static final DELAY_TIME_MSG_TARGET_CLEAN_UI_FREE:J = 0x4e20L

.field public static final LOG_DESIGN:I = 0x10

.field public static final LOG_DETAIL:I = 0x4

.field public static final LOG_FRAME:I = 0x8

.field public static final LOG_MAIN:I = 0x1

.field public static final LOG_MORE:I = 0x2

.field public static final LOG_OFF:I = 0x0

.field private static final MSG_TARGET:I = 0x1

.field private static final MSG_TARGET_CLEAN_DIE_MUCH:I = 0x2

.field private static final MSG_TARGET_CLEAN_UI_FREE:I = 0x1

.field private static final THRESHOLD_LIMIT:J = 0x400L

.field private static final USE_PHY_MIN_VELOCITY:D = 1000.0

.field public static appContext:Landroid/content/Context;

.field private static sEnableSleep:Z

.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/Folme$FolmeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMainHandler:Landroid/os/Handler;

.field private static volatile sMainUiLooper:Landroid/os/Looper;

.field private static final sSleepImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/Folme$FolmeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sUiHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sUiLooperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/Folme;->sUiLooperMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/Folme;->sUiHandlerMap:Ljava/util/Map;

    .line 60
    new-instance v0, Lmiuix/animation/Folme$1;

    invoke-direct {v0}, Lmiuix/animation/Folme$1;-><init>()V

    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    .line 67
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    invoke-static {v0}, Lmiuix/animation/Folme;->registerUiLooper(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lmiuix/animation/Folme;->appContext:Landroid/content/Context;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 119
    sput-boolean v0, Lmiuix/animation/Folme;->sEnableSleep:Z

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/Folme;->sSleepImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x41480000    # 12.5f

    .line 1179
    sput v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .line 46
    invoke-static {p0}, Lmiuix/animation/Folme;->sendToTargetMessage(Z)V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 46
    invoke-static {}, Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    sget-object v0, Lmiuix/animation/Folme;->sSleepImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 46
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 46
    invoke-static {}, Lmiuix/animation/Folme;->clearTargets()V

    return-void
.end method

.method static synthetic access$800(Ljava/util/List;)V
    .registers 1

    .line 46
    invoke-static {p0}, Lmiuix/animation/Folme;->clearInvalidTargets(Ljava/util/List;)V

    return-void
.end method

.method public static addEngineListener(Lmiuix/animation/listener/EngineListener;)V
    .registers 2

    .line 163
    invoke-static {}, Lmiuix/animation/FolmeFactory;->getEngine()Lmiuix/animation/internal/FolmeEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/FolmeEngine;->addEngineListener(Lmiuix/animation/listener/EngineListener;)V

    return-void
.end method

.method public static afterFrictionValue(FF)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return v0

    :cond_6
    cmpl-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_e

    move v0, v1

    goto :goto_10

    :cond_e
    const/high16 v0, -0x40800000    # -1.0f

    .line 1284
    :goto_10
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p1

    .line 1285
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float v1, p0, p0

    mul-float v2, v1, p0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    add-float/2addr v2, p0

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    return v0
.end method

.method public static varargs awake([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 911
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 912
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 913
    invoke-static {v2}, Lmiuix/animation/Folme;->doAwake(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private static awakeAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    if-eqz p0, :cond_1a

    .line 1005
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isSleep()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1006
    sget-object v0, Lmiuix/animation/Folme;->sSleepImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v0, :cond_1a

    .line 1008
    new-instance v1, Lmiuix/animation/Folme$3;

    invoke-direct {v1, p0, v0}, Lmiuix/animation/Folme$3;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$FolmeImpl;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public static clean(Landroid/view/View;)V
    .registers 4

    if-nez p0, :cond_22

    .line 929
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Folme.clean(View) view is null\uff01\uff01\ntrace:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuix_anim"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 932
    :cond_22
    invoke-static {p0}, Lmiuix/animation/Folme;->get(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    .line 933
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folme.clean view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nfolmeImpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ntrace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    :cond_5c
    instance-of v0, v0, Lmiuix/animation/Folme$SimpleFolmeImpl;

    if-eqz v0, :cond_64

    .line 937
    invoke-static {p0}, Lmiuix/animation/Folme;->remove(Landroid/view/View;)V

    goto :goto_67

    .line 939
    :cond_64
    invoke-static {p0}, Lmiuix/animation/Folme;->doClean(Ljava/lang/Object;)V

    :goto_67
    return-void
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 945
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folme.clean targetObjects "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ntrace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    :cond_2e
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 949
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 950
    invoke-static {v0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    goto :goto_3e

    .line 953
    :cond_4e
    array-length v0, p0

    :goto_4f
    if-ge v1, v0, :cond_59

    aget-object v2, p0, v1

    .line 954
    invoke-static {v2}, Lmiuix/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_59
    return-void
.end method

.method private static cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    if-eqz p0, :cond_23

    .line 1030
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    .line 1031
    new-instance v1, Lmiuix/animation/Folme$4;

    invoke-direct {v1, v0}, Lmiuix/animation/Folme$4;-><init>(Lmiuix/animation/Folme$FolmeImpl;)V

    .line 1039
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1040
    invoke-virtual {p0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_20

    .line 1043
    :cond_1c
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 1041
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_23
    :goto_23
    return-void
.end method

.method private static clearInvalidTargets(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    .line 1169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 1170
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->canClearInvalid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1171
    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_4

    :cond_1e
    return-void
.end method

.method private static clearTargetMessage(I)V
    .registers 2

    .line 1273
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1275
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    return-void
.end method

.method private static clearTargets()V
    .registers 3

    .line 1161
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 1162
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->canClear()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1163
    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method private static createTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lmiuix/animation/ITargetCreator<",
            "TT;>;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1103
    :cond_4
    instance-of v1, p0, Lmiuix/animation/IAnimTarget;

    if-eqz v1, :cond_b

    .line 1104
    check-cast p0, Lmiuix/animation/IAnimTarget;

    return-object p0

    :cond_b
    if-eqz p1, :cond_12

    .line 1107
    invoke-interface {p1, p0}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v0
.end method

.method private static createUiHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 2

    .line 1203
    new-instance v0, Lmiuix/animation/Folme$5;

    invoke-direct {v0, p0}, Lmiuix/animation/Folme$5;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static doAwake(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1000
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    .line 1001
    invoke-static {p0}, Lmiuix/animation/Folme;->awakeAnimTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method private static doClean(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1024
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    .line 1025
    invoke-static {p0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method private static doSleep(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 980
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    .line 981
    invoke-static {p0}, Lmiuix/animation/Folme;->sleepAnimTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method public static enableSleep()Z
    .registers 1

    .line 155
    sget-boolean v0, Lmiuix/animation/Folme;->sEnableSleep:Z

    return v0
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 960
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    const/4 v3, 0x0

    .line 961
    invoke-static {v2, v3}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_1b

    .line 965
    :cond_e
    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v2, :cond_1b

    .line 967
    invoke-virtual {v2}, Lmiuix/animation/Folme$FolmeImpl;->end()V

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-void
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 897
    :goto_4
    array-length v4, p0

    if-ge v0, v4, :cond_23

    .line 898
    aget-object v4, p0, v0

    sget-object v5, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {v4, v5}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v4

    aput-object v4, p1, v0

    .line 899
    sget-object v5, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v3, :cond_1d

    move-object v3, v4

    goto :goto_20

    :cond_1d
    if-eq v3, v4, :cond_20

    const/4 v2, 0x1

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_23
    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    move-object v1, v3

    :goto_27
    return-object v1
.end method

.method public static get(Landroid/view/View;)Lmiuix/animation/IFolme;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 861
    :cond_4
    sget v1, Lmiuix/folme/R$id;->folme_tag_animator:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 862
    instance-of v1, p0, Lmiuix/animation/IFolme;

    if-nez v1, :cond_f

    return-object v0

    .line 865
    :cond_f
    check-cast p0, Lmiuix/animation/IFolme;

    return-object p0
.end method

.method public static get(Lmiuix/animation/FolmeObject;)Lmiuix/animation/IFolme;
    .registers 1

    .line 869
    invoke-interface {p0}, Lmiuix/animation/FolmeObject;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultThresholdVelocity()F
    .registers 1

    .line 1301
    sget v0, Lmiuix/animation/Folme;->DEFAULT_THRESHOLD_VELOCITY:F

    return v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 3

    .line 1195
    sget-object v0, Lmiuix/animation/Folme;->sUiHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_1a

    .line 1197
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public static getLooper()Landroid/os/Looper;
    .registers 1

    .line 661
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    if-nez v0, :cond_f

    .line 662
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    .line 663
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    invoke-static {v0}, Lmiuix/animation/Folme;->registerUiLooper(Landroid/os/Looper;)V

    .line 665
    :cond_f
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 1

    .line 1191
    sget-object v0, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getPredict(FF)F
    .registers 3

    .line 0
    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    neg-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private static getPredict(FFF)F
    .registers 3

    .line 1348
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    invoke-static {p2, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static getPredictDistance(F)F
    .registers 2

    const v0, 0x3ef3cf3e

    .line 1305
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistance(F[F)F
    .registers 4

    const v0, 0x3ef3cf3e

    if-eqz p1, :cond_10

    .line 1317
    array-length v1, p1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    .line 1318
    aget p1, p1, v1

    invoke-static {p0, v0, p1}, Lmiuix/animation/Folme;->getPredict(FFF)F

    move-result p0

    return p0

    .line 1320
    :cond_10
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictDistanceWithFriction(FF[F)F
    .registers 4

    if-eqz p2, :cond_d

    .line 1309
    array-length v0, p2

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 1310
    aget p2, p2, v0

    invoke-static {p0, p1, p2}, Lmiuix/animation/Folme;->getPredict(FFF)F

    move-result p0

    return p0

    .line 1312
    :cond_d
    invoke-static {p0, p1}, Lmiuix/animation/Folme;->getPredict(FF)F

    move-result p0

    return p0
.end method

.method public static varargs getPredictFriction(FFF[F)F
    .registers 5

    sub-float/2addr p1, p0

    mul-float p0, p2, p1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_b

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1332
    :cond_b
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {}, Lmiuix/animation/Folme;->getDefaultThresholdVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr p0, v0

    if-eqz p3, :cond_29

    .line 1333
    array-length v0, p3

    if-lez v0, :cond_29

    .line 1334
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    const/4 v0, 0x0

    aget p3, p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float/2addr p0, p3

    :cond_29
    sub-float/2addr p2, p0

    const p0, 0x40866666    # 4.2f

    mul-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1061
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method

.method public static getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lmiuix/animation/ITargetCreator<",
            "TT;>;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1068
    :cond_4
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_16

    .line 1069
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lmiuix/animation/Folme;->get(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1071
    invoke-interface {v1}, Lmiuix/animation/FolmeStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0

    .line 1074
    :cond_16
    instance-of v1, p0, Lmiuix/animation/FolmeObject;

    if-eqz v1, :cond_28

    .line 1075
    move-object v1, p0

    check-cast v1, Lmiuix/animation/FolmeObject;

    invoke-static {v1}, Lmiuix/animation/Folme;->get(Lmiuix/animation/FolmeObject;)Lmiuix/animation/IFolme;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1077
    invoke-interface {v1}, Lmiuix/animation/FolmeStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0

    .line 1080
    :cond_28
    instance-of v1, p0, Lmiuix/animation/IAnimTarget;

    if-eqz v1, :cond_2f

    .line 1081
    check-cast p0, Lmiuix/animation/IAnimTarget;

    return-object p0

    .line 1083
    :cond_2f
    sget-object v1, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 1084
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1085
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object v2

    :cond_52
    if-eqz p1, :cond_5e

    .line 1090
    invoke-interface {p1, p0}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 1092
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    return-object p0

    :cond_5e
    return-object v0
.end method

.method public static getTarget(Lmiuix/animation/FolmeObject;)Lmiuix/animation/IAnimTarget;
    .registers 1

    .line 1057
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method

.method public static getTarget(Landroid/view/View;)Lmiuix/animation/ViewTarget;
    .registers 1

    .line 1053
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/FolmeStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    check-cast p0, Lmiuix/animation/ViewTarget;

    return-object p0
.end method

.method public static getTargetById(I)Lmiuix/animation/IAnimTarget;
    .registers 4

    .line 1151
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 1152
    iget v2, v1, Lmiuix/animation/IAnimTarget;->id:I

    if-ne v2, p0, :cond_a

    return-object v1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargets()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 128
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 129
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 133
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current sImplMap total:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 135
    invoke-static {}, Lmiuix/animation/Folme;->printAllTargets()V

    .line 138
    :cond_5e
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 1139
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2f

    .line 1142
    :cond_2b
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1140
    :cond_2f
    :goto_2f
    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_a

    :cond_37
    return-void
.end method

.method public static getTimeRatio()F
    .registers 1

    .line 85
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static declared-synchronized getUiLooperByTid(J)Landroid/os/Looper;
    .registers 4

    const-class v0, Lmiuix/animation/Folme;

    monitor-enter v0

    .line 683
    :try_start_3
    sget-object v1, Lmiuix/animation/Folme;->sUiLooperMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiuix/animation/ValueTarget;"
        }
    .end annotation

    .line 1049
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    check-cast p0, Lmiuix/animation/ValueTarget;

    return-object p0
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .registers 2

    .line 1128
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static onListViewTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .registers 3

    .line 973
    invoke-static {p0}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 975
    invoke-virtual {v0, p0, p1}, Lmiuix/animation/controller/ListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method

.method public static perFromValue(FFF)F
    .registers 4

    .line 0
    cmpl-float v0, p2, p1

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method private static performTargetCleanForTooMuchInvalid()V
    .registers 4

    .line 1249
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    .line 1250
    new-instance v0, Lmiuix/animation/Folme$6;

    invoke-direct {v0}, Lmiuix/animation/Folme$6;-><init>()V

    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 91
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public static declared-synchronized printAllTargets()V
    .registers 5

    const-class v0, Lmiuix/animation/Folme;

    monitor-enter v0

    .line 142
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    sget-object v2, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 144
    const-string v3, "Folme targets:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 146
    const-string v4, "|-- %s\n"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :catchall_37
    move-exception v1

    goto :goto_49

    .line 149
    :cond_39
    const-string v2, "Folme has no target now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_3e
    const-string v2, "miuix_anim"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_37

    .line 152
    monitor-exit v0

    return-void

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_37

    throw v1
.end method

.method public static declared-synchronized registerUiLooper(Landroid/os/Looper;)V
    .registers 6

    const-class v0, Lmiuix/animation/Folme;

    monitor-enter v0

    .line 669
    :try_start_3
    sget-object v1, Lmiuix/animation/Folme;->sUiLooperMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p0}, Lmiuix/animation/Folme;->createUiHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    .line 671
    sget-object v2, Lmiuix/animation/Folme;->sUiHandlerMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v2, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    if-ne p0, v2, :cond_32

    .line 673
    sput-object v1, Lmiuix/animation/Folme;->sMainHandler:Landroid/os/Handler;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    .line 675
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw p0
.end method

.method public static remove(Landroid/view/View;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 876
    :cond_3
    sget v0, Lmiuix/folme/R$id;->folme_tag_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 877
    instance-of v2, v1, Lmiuix/animation/IFolme;

    if-eqz v2, :cond_12

    .line 878
    check-cast v1, Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_12
    const/4 v1, 0x0

    .line 880
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static remove(Lmiuix/animation/FolmeObject;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 887
    :cond_3
    invoke-interface {p0}, Lmiuix/animation/FolmeObject;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 889
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_c
    const/4 v0, 0x0

    .line 891
    invoke-interface {p0, v0}, Lmiuix/animation/FolmeObject;->setFolmeImpl(Lmiuix/animation/Folme$ObjectFolmeImpl;)V

    return-void
.end method

.method public static removeEngineListener(Lmiuix/animation/listener/EngineListener;)V
    .registers 2

    .line 167
    invoke-static {}, Lmiuix/animation/FolmeFactory;->getEngine()Lmiuix/animation/internal/FolmeEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/FolmeEngine;->removeEngineListener(Lmiuix/animation/listener/EngineListener;)V

    return-void
.end method

.method private static sendToTargetMessage(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 1220
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    if-eqz p0, :cond_63

    .line 1221
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    sget-object v2, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 1224
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "Folme.sendToTargetMessage fromAuto=%s count=%d\n"

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 1226
    const-string v3, " |-exist target=%s\n"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1229
    :cond_54
    const-string p0, "Folme.sendToTargetMessage has no target."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    :cond_63
    sget-object p0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_77

    .line 1234
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_7a

    const-wide/16 v1, 0x4e20

    .line 1236
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7a

    .line 1239
    :cond_77
    invoke-static {v0}, Lmiuix/animation/Folme;->clearTargetMessage(I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public static setAnimPlayRatio(F)V
    .registers 2

    .line 81
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setDraggingState(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 1118
    sget p1, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_10

    .line 1120
    :cond_a
    sget p1, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_10
    return-void
.end method

.method public static setEnableSleep(Z)V
    .registers 1

    .line 691
    sput-boolean p0, Lmiuix/animation/Folme;->sEnableSleep:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1

    .line 1367
    invoke-static {p0}, Lmiuix/animation/utils/LogUtils;->setLogLevel(I)V

    return-void
.end method

.method public static setLooper(Landroid/os/Looper;)V
    .registers 2

    .line 652
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    if-eqz v0, :cond_9

    .line 653
    sget-object v0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    invoke-static {v0}, Lmiuix/animation/Folme;->unregisterUiLooper(Landroid/os/Looper;)V

    .line 655
    :cond_9
    sput-object p0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    .line 656
    sget-object p0, Lmiuix/animation/Folme;->sMainUiLooper:Landroid/os/Looper;

    invoke-static {p0}, Lmiuix/animation/Folme;->registerUiLooper(Landroid/os/Looper;)V

    .line 657
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler;->recreateProvider()V

    return-void
.end method

.method public static setThreadPriority(I)V
    .registers 7

    .line 1354
    const-string v0, " failed: "

    const-string v1, "setThreadPriority "

    const-string v2, "miuix_anim"

    :try_start_6
    sget-object v3, Lmiuix/animation/Folme;->sUiLooperMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Looper;

    .line 1355
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, p0}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_10

    :catch_29
    move-exception v3

    goto :goto_48

    :catch_2b
    move-exception v3

    goto :goto_61

    .line 1357
    :cond_2d
    invoke-static {p0}, Lmiuix/animation/internal/ThreadPoolUtil;->setThreadPriority(I)V

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_47} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_47} :catch_29

    goto :goto_79

    .line 1362
    :goto_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1360
    :goto_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public static varargs sleep([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 920
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 921
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 922
    invoke-static {v2}, Lmiuix/animation/Folme;->doSleep(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private static sleepAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    if-eqz p0, :cond_1a

    .line 985
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isSleep()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 986
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v0, :cond_1a

    .line 988
    new-instance v1, Lmiuix/animation/Folme$2;

    invoke-direct {v1, p0, v0}, Lmiuix/animation/Folme$2;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$FolmeImpl;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public static declared-synchronized unregisterUiLooper(Landroid/os/Looper;)V
    .registers 5

    const-class v0, Lmiuix/animation/Folme;

    monitor-enter v0

    .line 678
    :try_start_3
    sget-object v1, Lmiuix/animation/Folme;->sUiLooperMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v1, Lmiuix/animation/Folme;->sUiHandlerMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 680
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;
    .registers 4

    .line 829
    invoke-interface {p0}, Lmiuix/animation/FolmeObject;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v0

    if-nez v0, :cond_16

    .line 831
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->createTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 832
    new-instance v1, Lmiuix/animation/Folme$ObjectFolmeImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiuix/animation/Folme$ObjectFolmeImpl;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 833
    invoke-interface {p0, v1}, Lmiuix/animation/FolmeObject;->setFolmeImpl(Lmiuix/animation/Folme$ObjectFolmeImpl;)V

    move-object v0, v1

    :cond_16
    return-object v0
.end method

.method public static use(Landroid/view/View;)Lmiuix/animation/IFolme;
    .registers 5

    .line 812
    sget v0, Lmiuix/folme/R$id;->folme_tag_animator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 813
    instance-of v2, v1, Lmiuix/animation/IFolme;

    if-nez v2, :cond_1a

    .line 814
    sget-object v1, Lmiuix/animation/ViewTarget;->sSimpleCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v1}, Lmiuix/animation/Folme;->createTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v1

    .line 815
    new-instance v2, Lmiuix/animation/Folme$SimpleFolmeImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lmiuix/animation/Folme$SimpleFolmeImpl;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 816
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v2

    .line 818
    :cond_1a
    check-cast v1, Lmiuix/animation/IFolme;

    return-object v1
.end method

.method public static use(Ljava/lang/Object;)Lmiuix/animation/IFolme;
    .registers 2

    .line 793
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_b

    .line 794
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    .line 796
    :cond_b
    instance-of v0, p0, Lmiuix/animation/FolmeObject;

    if-eqz v0, :cond_16

    .line 797
    check-cast p0, Lmiuix/animation/FolmeObject;

    .line 798
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object p0

    return-object p0

    .line 801
    :cond_16
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0
.end method

.method public static useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntrace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 733
    invoke-static {v2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 731
    const-string v1, "Folme.useAt"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    :cond_36
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v1, :cond_78

    .line 738
    new-instance v1, Lmiuix/animation/Folme$FolmeImpl;

    filled-new-array {p0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 739
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useAt target: sImplMap.put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 741
    invoke-static {v3}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 740
    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    :cond_6f
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz p0, :cond_78

    move-object v1, p0

    :cond_78
    return-object v1
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiuix/animation/IFolme;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    array-length v0, p0

    if-eqz v0, :cond_58

    .line 761
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 763
    aget-object p0, p0, v2

    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    .line 765
    :cond_f
    array-length v0, p0

    new-array v1, v0, [Lmiuix/animation/IAnimTarget;

    .line 766
    invoke-static {p0, v1}, Lmiuix/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;

    move-result-object p0

    if-nez p0, :cond_57

    .line 768
    new-instance p0, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_57

    .line 769
    aget-object v4, v1, v3

    .line 770
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useAt views: sImplMap.put "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    .line 772
    invoke-static {v6}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 771
    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_47
    sget-object v5, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v4, :cond_54

    .line 776
    invoke-virtual {v4}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_57
    return-object p0

    .line 759
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "useAt can not be applied to empty views array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static useSystemAnimatorDurationScale(Landroid/content/Context;)V
    .registers 3

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    .line 77
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static useTarget(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;
    .registers 2

    .line 845
    instance-of v0, p0, Lmiuix/animation/FolmeObject;

    if-eqz v0, :cond_b

    .line 846
    check-cast p0, Lmiuix/animation/FolmeObject;

    invoke-static {p0}, Lmiuix/animation/Folme;->use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object p0

    return-object p0

    .line 848
    :cond_b
    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1c

    .line 849
    check-cast p0, Lmiuix/animation/ViewTarget;

    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 851
    invoke-static {p0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 7

    const/4 v0, 0x0

    .line 696
    const-string v1, "miuix_anim"

    if-nez p0, :cond_23

    .line 697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error!! You can\'t useValue for a null targetObj!!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 700
    :cond_23
    array-length v2, p0

    const/4 v3, 0x0

    if-lez v2, :cond_a0

    .line 701
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetObj.length="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetObj[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 705
    invoke-static {v5}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 702
    const-string v4, "Folme.useValue"

    invoke-static {v4, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    :cond_60
    aget-object v2, p0, v3

    if-nez v2, :cond_82

    .line 709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error!! targetObj[0] is null, You can\'t useValue for a null targetObj!! the stack trace:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 712
    :cond_82
    array-length p0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_95

    instance-of p0, v2, Lmiuix/animation/FolmeObject;

    if-eqz p0, :cond_95

    .line 713
    check-cast v2, Lmiuix/animation/FolmeObject;

    invoke-static {v2}, Lmiuix/animation/Folme;->use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object p0

    .line 714
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0

    .line 716
    :cond_95
    sget-object p0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {v2, p0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    goto :goto_bb

    .line 718
    :cond_a0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 719
    const-string p0, "Folme.useValue targetObj.length is 0"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    :cond_ad
    new-instance p0, Lmiuix/animation/ValueTarget;

    invoke-direct {p0}, Lmiuix/animation/ValueTarget;-><init>()V

    const-wide/16 v0, 0x1

    .line 722
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    .line 723
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 725
    :goto_bb
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public static useVarFontAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;
    .registers 4

    .line 159
    new-instance v0, Lmiuix/animation/controller/FolmeFont;

    invoke-direct {v0}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    move-result-object p0

    return-object p0
.end method

.method public static valueFromPer(FFF)F
    .registers 3

    .line 0
    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method
