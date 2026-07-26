.class public Lmiuix/mimotion/MiMotionCloudConfig;
.super Ljava/lang/Object;
.source "MiMotionCloudConfig.java"


# static fields
.field private static sInstance:Lmiuix/mimotion/MiMotionCloudConfig;


# instance fields
.field mMimotionModeService:Ljava/lang/Object;

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "MimotionModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mService:Landroid/os/IBinder;

    .line 20
    :try_start_b
    const-string v0, "com.xiaomi.mimotion.IMimotionModeService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    const-string v1, "asInterface"

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mService:Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mMimotionModeService:Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_32

    .line 24
    :catch_2b
    const-string v0, "MiMotionCloudConfig"

    const-string v1, "M2CloudConfig init failed... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public static getInstance()Lmiuix/mimotion/MiMotionCloudConfig;
    .registers 1

    .line 30
    sget-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lmiuix/mimotion/MiMotionCloudConfig;

    invoke-direct {v0}, Lmiuix/mimotion/MiMotionCloudConfig;-><init>()V

    sput-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    .line 33
    :cond_b
    sget-object v0, Lmiuix/mimotion/MiMotionCloudConfig;->sInstance:Lmiuix/mimotion/MiMotionCloudConfig;

    return-object v0
.end method


# virtual methods
.method public getRefreshRateSpeedLimitsDp()[I
    .registers 5

    .line 40
    iget-object v0, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mMimotionModeService:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 44
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getRefreshRateSpeedLimitsDp"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lmiuix/mimotion/MiMotionCloudConfig;->mMimotionModeService:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get refresh rate speed limits from cloud failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiMotionCloudConfig"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
