.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mCanStop:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportExtHapticWithReason:Z

.field private static mIsSupportHapticWithReason:Z

.field private static mPerformExtHapticFeedbackThreeParamsMethodExist:Z

.field private static mPerformExtHapticFeedbackTwoParamsMethodExist:Z

.field private static mPerformHapticFeedbackFourParamsMethod1Exist:Z

.field private static mPerformHapticFeedbackFourParamsMethod2Exist:Z

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static synthetic $r8$lambda$jeLFbkPrlo2J0OYzJcTjCxGewII(Lmiuix/util/HapticFeedbackCompat;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->lambda$performExtHapticFeedbackAsync$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 55
    const-string v0, "HapticFeedbackCompat"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 58
    sget v1, Lmiuix/view/PlatformConstants;->VERSION:I

    const-class v2, Ljava/lang/String;

    const-string v3, "performHapticFeedback"

    const-string v4, "performExtHapticFeedback"

    const-class v5, Lmiui/util/HapticFeedbackUtil;

    const/4 v6, 0x1

    if-lt v1, v6, :cond_80

    const/4 v1, 0x0

    .line 60
    :try_start_16
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v7

    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    goto :goto_25

    :catchall_1d
    move-exception v7

    .line 62
    const-string v8, "MIUI Haptic Implementation is not available"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 66
    :goto_25
    sget-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v7, :cond_80

    .line 68
    :try_start_29
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v2}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_37

    goto :goto_3f

    :catchall_37
    move-exception v7

    .line 71
    const-string v8, "Not support haptic with reason"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 75
    :goto_3f
    :try_start_3f
    const-string v7, "isSupportExtHapticFeedback"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4d

    goto :goto_4f

    .line 78
    :catchall_4d
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 82
    :goto_4f
    :try_start_4f
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5d

    goto :goto_5f

    .line 85
    :catchall_5d
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 89
    :goto_5f
    :try_start_5f
    const-string v7, "stop"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_68

    goto :goto_6a

    .line 92
    :catchall_68
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    .line 96
    :goto_6a
    :try_start_6a
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v2}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_78

    goto :goto_80

    :catchall_78
    move-exception v7

    .line 99
    const-string v8, "Not support ext haptic with reason"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    .line 109
    :cond_80
    :goto_80
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v7, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_d3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d3

    .line 111
    :try_start_91
    invoke-static {}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackTwoParamsMethodExist:Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a0} :catch_a0

    .line 117
    :catch_a0
    :try_start_a0
    invoke-static {}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1, v7}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b1} :catch_b1

    .line 123
    :catch_b1
    :try_start_b1
    invoke-static {}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1, v4, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c2} :catch_c2

    .line 129
    :catch_c2
    :try_start_c2
    invoke-static {}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1, v4, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    sput-boolean v6, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod2Exist:Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d3} :catch_d3

    :catch_d3
    :cond_d3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x1

    const-string v2, "HapticFeedbackCompat"

    if-ge v0, v1, :cond_10

    .line 144
    const-string p1, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_10
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1a

    .line 148
    const-string p1, "linear motor is not supported in this platform."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_1a
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method private synthetic lambda$performExtHapticFeedbackAsync$0(I)V
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public performExtHapticFeedback(I)Z
    .registers 4

    .line 175
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1f

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performExtHapticFeedback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/HapticLog;->printTrace(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public performExtHapticFeedbackAsync(I)V
    .registers 4

    .line 190
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v0, :cond_5

    return-void

    .line 193
    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 195
    sget-object v0, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;-><init>(Lmiuix/util/HapticFeedbackCompat;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 197
    :cond_1a
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :goto_1d
    return-void
.end method
