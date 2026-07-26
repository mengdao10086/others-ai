.class public Lmiuix/animation/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ", "

.field public static final MORE_LOG_ENABLE:Z = false

.field private static final sLogHandler:Landroid/os/Handler;

.field private static volatile sLogLevel:I

.field private static final sTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FolmeLogThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/utils/LogUtils;->sThread:Landroid/os/HandlerThread;

    .line 22
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    new-instance v1, Lmiuix/animation/utils/LogUtils$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lmiuix/animation/utils/LogUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 65
    sput v0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 17
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    return-object v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    .line 125
    sget v0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    if-nez v0, :cond_5

    return-void

    .line 128
    :cond_5
    array-length v0, p1

    const-string v1, "miuix_anim"

    if-lez v0, :cond_3d

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 131
    array-length v4, p1

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2a

    aget-object v6, p1, v5

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v3, :cond_24

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 137
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 139
    :cond_3d
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public static getLogEnableInfo()V
    .registers 4

    .line 71
    const-string v0, ""

    .line 73
    :try_start_2
    const-string v1, "log.tag.folme.level"

    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_d

    if-nez v1, :cond_b

    goto :goto_15

    :cond_b
    move-object v0, v1

    goto :goto_15

    :catch_d
    move-exception v1

    .line 76
    const-string v2, "miuix_anim"

    const-string v3, "can not access property log.tag.folme.level, no log"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_15
    sget v1, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    if-lez v1, :cond_1a

    return-void

    .line 81
    :cond_1a
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 82
    sput v0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    goto :goto_31

    .line 85
    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->setLogLevel(I)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_31

    :catch_2e
    const/4 v0, 0x0

    .line 87
    sput v0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    :goto_31
    return-void
.end method

.method public static getStackTrace(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 146
    array-length v1, v0

    add-int/lit8 p0, p0, 0x4

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 147
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 148
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 149
    const-string v3, "\ntrace:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x3

    :goto_24
    if-ge v3, p0, :cond_3f

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 153
    :cond_3f
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 154
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLogDesignEnable()Z
    .registers 1

    const/16 v0, 0x10

    .line 121
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->isLogLevelEnable(I)Z

    move-result v0

    return v0
.end method

.method public static isLogDetailEnable()Z
    .registers 1

    const/4 v0, 0x4

    .line 113
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->isLogLevelEnable(I)Z

    move-result v0

    return v0
.end method

.method public static isLogFrameEnable()Z
    .registers 1

    const/16 v0, 0x8

    .line 117
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->isLogLevelEnable(I)Z

    move-result v0

    return v0
.end method

.method public static isLogLevelEnable(I)Z
    .registers 2

    .line 101
    sget v0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    and-int/2addr p0, v0

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isLogMainEnabled()Z
    .registers 1

    const/4 v0, 0x1

    .line 105
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->isLogLevelEnable(I)Z

    move-result v0

    return v0
.end method

.method public static isLogMoreEnable()Z
    .registers 1

    const/4 v0, 0x2

    .line 109
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->isLogLevelEnable(I)Z

    move-result v0

    return v0
.end method

.method public static logThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 38
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 40
    sget-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static varargs logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    .line 45
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 46
    array-length v2, p2

    if-lez v2, :cond_38

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 49
    array-length v5, p2

    :goto_16
    if-ge v1, v5, :cond_29

    aget-object v6, p2, v1

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v4, :cond_23

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_23
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 55
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_38
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 59
    sget-object p2, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1

    if-gez p0, :cond_6

    const/4 p0, 0x0

    .line 94
    sput p0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    return-void

    .line 97
    :cond_6
    sput p0, Lmiuix/animation/utils/LogUtils;->sLogLevel:I

    return-void
.end method
