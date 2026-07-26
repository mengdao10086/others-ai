.class public Lmiuix/HapticLog;
.super Ljava/lang/Object;
.source "HapticLog.java"


# static fields
.field private static final sLogHapticEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    const-string v0, "log.miuix.haptic.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiuix/HapticLog;->sLogHapticEnabled:Z

    return-void
.end method

.method public static printTrace(Ljava/lang/String;)V
    .registers 3

    .line 17
    sget-boolean v0, Lmiuix/HapticLog;->sLogHapticEnabled:Z

    if-eqz v0, :cond_e

    .line 18
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "MiuixHaptic"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method
