.class public final Ldev/xiaomiext/homehz/Global165HzHook;
.super Ljava/lang/Object;
.source "Global165HzHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final APPLYING:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_RESORT_RATE:F = 165.0f

.field private static final MODULE_PACKAGE:Ljava/lang/String; = "dev.xiaomiext.homehz"

.field private static final RATE_KEYS:[Ljava/lang/String;

.field private static volatile cachedPeak:F


# direct methods
.method static bridge synthetic -$$Nest$smapplyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V
    .registers 2

    invoke-static {p0, p1}, Ldev/xiaomiext/homehz/Global165HzHook;->applyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smapplyViewFrameRate(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->applyViewFrameRate(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smapplyWindow(Landroid/view/Window;)V
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->applyWindow(Landroid/view/Window;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfindPeakMode(Landroid/view/Display;)Landroid/view/Display$Mode;
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->findPeakMode(Landroid/view/Display;)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisRateKey(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->isRateKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smliftArgIfHz([Ljava/lang/Object;I)V
    .registers 2

    invoke-static {p0, p1}, Ldev/xiaomiext/homehz/Global165HzHook;->liftArgIfHz([Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smliftFpsLikeArgs([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->liftFpsLikeArgs([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpeakRate()F
    .registers 1

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smpeakRate(Landroid/view/Display;)F
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate(Landroid/view/Display;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smpeakString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smrewritePutArgs([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->rewritePutArgs([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtargetFrameDelayMs()J
    .registers 2

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->targetFrameDelayMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smtooLow(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->tooLow(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "user_refresh_rate"

    const-string v1, "peak_refresh_rate"

    const-string v2, "miui_refresh_rate"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/xiaomiext/homehz/Global165HzHook;->RATE_KEYS:[Ljava/lang/String;

    .line 46
    new-instance v0, Ldev/xiaomiext/homehz/Global165HzHook$0;

    invoke-direct {v0}, Ldev/xiaomiext/homehz/Global165HzHook$0;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Ldev/xiaomiext/homehz/Global165HzHook;->APPLYING:Ljava/lang/ThreadLocal;

    .line 49
    const/4 v0, 0x0

    sput v0, Ldev/xiaomiext/homehz/Global165HzHook;->cachedPeak:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V
    .registers 5

    .line 626
    if-nez p0, :cond_3

    .line 627
    return-void

    .line 629
    :cond_3
    invoke-static {p1}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate(Landroid/view/Display;)F

    move-result v0

    .line 630
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 631
    invoke-static {p1}, Ldev/xiaomiext/homehz/Global165HzHook;->findPeakMode(Landroid/view/Display;)Landroid/view/Display$Mode;

    move-result-object p1

    .line 632
    if-eqz p1, :cond_15

    .line 633
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 636
    :cond_15
    :try_start_15
    const-class p1, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "preferredMinDisplayRefreshRate"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 637
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "preferredMaxDisplayRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 638
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 639
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2c

    .line 641
    goto :goto_2d

    .line 640
    :catchall_2c
    move-exception p0

    .line 642
    :goto_2d
    return-void
.end method

.method private static applyViewFrameRate(Landroid/view/View;)V
    .registers 2

    .line 616
    if-nez p0, :cond_3

    .line 617
    return-void

    .line 620
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate(Landroid/view/Display;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRequestedFrameRate(F)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 622
    goto :goto_10

    .line 621
    :catchall_f
    move-exception p0

    .line 623
    :goto_10
    return-void
.end method

.method private static applyWindow(Landroid/view/Window;)V
    .registers 4

    .line 592
    if-eqz p0, :cond_49

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ldev/xiaomiext/homehz/Global165HzHook;->APPLYING:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_49

    .line 595
    :cond_11
    sget-object v0, Ldev/xiaomiext/homehz/Global165HzHook;->APPLYING:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 597
    :try_start_18
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_3f

    .line 598
    nop

    .line 600
    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 601
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_30

    goto :goto_2e

    .line 602
    :cond_2d
    nop

    :goto_2e
    nop

    .line 604
    goto :goto_31

    .line 603
    :catchall_30
    move-exception v2

    .line 605
    :goto_31
    :try_start_31
    invoke-static {v0, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->applyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    .line 606
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 607
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 608
    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->applyViewFrameRate(Landroid/view/View;)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3f

    goto :goto_40

    .line 609
    :catchall_3f
    move-exception p0

    .line 611
    :goto_40
    sget-object p0, Ldev/xiaomiext/homehz/Global165HzHook;->APPLYING:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 612
    nop

    .line 613
    return-void

    .line 593
    :cond_49
    :goto_49
    return-void
.end method

.method private static findPeakMode(Landroid/view/Display;)Landroid/view/Display$Mode;
    .registers 8

    .line 645
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 646
    return-object v0

    .line 649
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    .line 650
    if-eqz p0, :cond_29

    array-length v1, p0

    if-nez v1, :cond_e

    goto :goto_29

    .line 653
    :cond_e
    const/4 v1, 0x0

    aget-object v2, p0, v1

    .line 654
    array-length v3, p0

    :goto_12
    if-ge v1, v3, :cond_28

    aget-object v4, p0, v1

    .line 655
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_25

    .line 656
    move-object v2, v4

    .line 654
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 659
    :cond_28
    return-object v2

    .line 651
    :cond_29
    :goto_29
    return-object v0

    .line 660
    :catchall_2a
    move-exception p0

    .line 661
    return-object v0
.end method

.method private static hookActivityResume()V
    .registers 3

    .line 262
    const-class v0, Landroid/app/Activity;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$5;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$5;-><init>()V

    const-string v2, "onResume"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 271
    const-class v0, Landroid/app/Activity;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$6;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$6;-><init>()V

    const-string v2, "onStart"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 280
    return-void
.end method

.method private static hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")V"
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 216
    goto :goto_2c

    .line 213
    :catchall_4
    move-exception p2

    .line 214
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookAll failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 215
    invoke-static {p2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 217
    :goto_2c
    return-void
.end method

.method private static hookAnimatorFrameDelay()V
    .registers 3

    .line 220
    const-class v0, Landroid/animation/ValueAnimator;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$1;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$1;-><init>()V

    const-string v2, "getFrameDelay"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 226
    const-class v0, Landroid/animation/ValueAnimator;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$2;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$2;-><init>()V

    const-string v2, "setFrameDelay"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 234
    return-void
.end method

.method private static hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 4

    .line 392
    :try_start_0
    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 393
    invoke-static {p0, p2, p3}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 396
    goto :goto_29

    .line 394
    :catchall_8
    move-exception p0

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hook class missing "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 397
    :goto_29
    return-void
.end method

.method private static hookDisplayRefreshRate()V
    .registers 3

    .line 237
    const-class v0, Landroid/view/Display;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$3;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$3;-><init>()V

    const-string v2, "getRefreshRate"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 245
    const-class v0, Landroid/view/Display;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$4;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$4;-><init>()V

    const-string v2, "getMode"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 259
    return-void
.end method

.method private static hookMirimRefreshPolicy(Ljava/lang/ClassLoader;)V
    .registers 6

    .line 346
    new-instance v0, Ldev/xiaomiext/homehz/Global165HzHook$11;

    invoke-direct {v0}, Ldev/xiaomiext/homehz/Global165HzHook$11;-><init>()V

    .line 352
    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$12;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$12;-><init>()V

    .line 358
    new-instance v2, Ldev/xiaomiext/homehz/Global165HzHook$13;

    invoke-direct {v2}, Ldev/xiaomiext/homehz/Global165HzHook$13;-><init>()V

    .line 365
    const-string v3, "applyPowerKeeperFps"

    const-string v4, "com.miui.server.mirim.policy.RefreshRatePolicy"

    invoke-static {p0, v4, v3, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 367
    const-string v3, "sendApplySceneFps"

    invoke-static {p0, v4, v3, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 369
    const-string v3, "realControlRefreshRate"

    invoke-static {p0, v4, v3, v2}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 371
    const-string v2, "realControlRefreshRateOriginUp"

    invoke-static {p0, v4, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 373
    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$14;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$14;-><init>()V

    const-string v2, "methodPowerKeeperSetFps"

    invoke-static {p0, v4, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 383
    const-string v1, "applyFpsViaPowerkeeper"

    const-string v2, "com.android.server.wm.MiuiRefreshRatePolicy"

    invoke-static {p0, v2, v1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 385
    const-string v1, "onPowerKeeperSetFpsHandle"

    invoke-static {p0, v2, v1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookClassMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 387
    return-void
.end method

.method private static hookPreferredRefreshBounds()V
    .registers 3

    .line 328
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$10;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$10;-><init>()V

    const-string v2, "copyFrom"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 337
    return-void
.end method

.method private static hookRefreshSettings()V
    .registers 4

    .line 427
    new-instance v0, Ldev/xiaomiext/homehz/Global165HzHook$15;

    invoke-direct {v0}, Ldev/xiaomiext/homehz/Global165HzHook$15;-><init>()V

    .line 433
    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$16;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$16;-><init>()V

    .line 455
    const-class v2, Landroid/provider/Settings$Secure;

    const-string v3, "putString"

    invoke-static {v2, v3, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 456
    const-class v2, Landroid/provider/Settings$System;

    invoke-static {v2, v3, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 457
    const-class v2, Landroid/provider/Settings$Secure;

    const-string v3, "getString"

    invoke-static {v2, v3, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 458
    const-class v2, Landroid/provider/Settings$System;

    invoke-static {v2, v3, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 459
    const-class v1, Landroid/provider/Settings$Secure;

    const-string v2, "putInt"

    invoke-static {v1, v2, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 460
    const-class v1, Landroid/provider/Settings$System;

    invoke-static {v1, v2, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 461
    const-class v0, Landroid/provider/Settings$Secure;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$17;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$17;-><init>()V

    const-string v2, "getInt"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 483
    const-class v0, Landroid/provider/Settings$System;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$18;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$18;-><init>()V

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 505
    return-void
.end method

.method private static hookRequestedFrameRate()V
    .registers 3

    .line 307
    const-class v0, Landroid/view/View;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$9;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$9;-><init>()V

    const-string v2, "setRequestedFrameRate"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 325
    return-void
.end method

.method private static hookWindowAttach(Ljava/lang/ClassLoader;)V
    .registers 4

    .line 542
    :try_start_0
    const-string v0, "android.view.ViewRootImpl"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 543
    const-string v1, "setView"

    new-instance v2, Ldev/xiaomiext/homehz/Global165HzHook$19;

    invoke-direct {v2}, Ldev/xiaomiext/homehz/Global165HzHook$19;-><init>()V

    invoke-static {v0, v1, v2}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 564
    goto :goto_1a

    .line 561
    :catchall_11
    move-exception v0

    .line 562
    const-string v1, "hookAll failed ViewRootImpl#setView"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 563
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 566
    :goto_1a
    :try_start_1a
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 567
    const-string v0, "addView"

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$20;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$20;-><init>()V

    invoke-static {p0, v0, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    .line 588
    goto :goto_34

    .line 585
    :catchall_2b
    move-exception p0

    .line 586
    const-string v0, "hookAll failed WindowManagerGlobal#addView"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 587
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 589
    :goto_34
    return-void
.end method

.method private static hookWindowAttributes()V
    .registers 3

    .line 283
    const-class v0, Landroid/view/Window;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$7;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$7;-><init>()V

    const-string v2, "setAttributes"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 295
    const-class v0, Landroid/view/Window;

    new-instance v1, Ldev/xiaomiext/homehz/Global165HzHook$8;

    invoke-direct {v1}, Ldev/xiaomiext/homehz/Global165HzHook$8;-><init>()V

    const-string v2, "getAttributes"

    invoke-static {v0, v2, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAll(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 304
    return-void
.end method

.method private static isAndroid16OrNewer()Z
    .registers 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isAndroid17()Z
    .registers 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isRateKey(Ljava/lang/Object;)Z
    .registers 6

    .line 165
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 166
    return v1

    .line 168
    :cond_6
    sget-object v0, Ldev/xiaomiext/homehz/Global165HzHook;->RATE_KEYS:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 169
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 170
    const/4 p0, 0x1

    return p0

    .line 168
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 173
    :cond_19
    return v1
.end method

.method private static isSystemServer(Ljava/lang/String;)Z
    .registers 2

    .line 207
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method static synthetic lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 47
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static liftArgIfHz([Ljava/lang/Object;I)V
    .registers 5

    .line 400
    if-eqz p0, :cond_59

    if-ltz p1, :cond_59

    array-length v0, p0

    if-lt p1, v0, :cond_8

    goto :goto_59

    .line 403
    :cond_8
    aget-object v0, p0, p1

    .line 404
    instance-of v1, v0, Ljava/lang/Integer;

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_33

    .line 405
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 406
    const/16 v1, 0x32

    if-lt v0, v1, :cond_57

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_57

    .line 407
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p1

    goto :goto_57

    .line 409
    :cond_33
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_57

    .line 410
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 411
    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_58

    add-float/2addr v0, v2

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_58

    .line 412
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, p1

    goto :goto_58

    .line 409
    :cond_57
    :goto_57
    nop

    .line 415
    :cond_58
    :goto_58
    return-void

    .line 401
    :cond_59
    :goto_59
    return-void
.end method

.method private static liftFpsLikeArgs([Ljava/lang/Object;)V
    .registers 3

    .line 418
    if-nez p0, :cond_3

    .line 419
    return-void

    .line 421
    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 422
    invoke-static {p0, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->liftArgIfHz([Ljava/lang/Object;I)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 424
    :cond_d
    return-void
.end method

.method private static parseHz(Ljava/lang/String;)F
    .registers 3

    .line 60
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 61
    return v0

    .line 64
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1a

    .line 65
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_19

    const/high16 v1, 0x43700000    # 240.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_19

    .line 66
    return p0

    .line 69
    :cond_19
    goto :goto_1b

    .line 68
    :catchall_1a
    move-exception p0

    .line 70
    :goto_1b
    return v0
.end method

.method private static peakFromDisplay(Landroid/view/Display;)F
    .registers 7

    .line 98
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 99
    return v0

    .line 102
    :cond_4
    nop

    .line 103
    :try_start_5
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    .line 104
    if-nez p0, :cond_c

    .line 105
    return v0

    .line 107
    :cond_c
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_f
    if-ge v2, v1, :cond_24

    aget-object v4, p0, v2

    .line 108
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_21

    .line 109
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_32

    .line 107
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 112
    :cond_24
    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float p0, v3, p0

    if-ltz p0, :cond_31

    const/high16 p0, 0x43700000    # 240.0f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_31

    .line 113
    return v3

    .line 116
    :cond_31
    goto :goto_33

    .line 115
    :catchall_32
    move-exception p0

    .line 117
    :goto_33
    return v0
.end method

.method private static peakRate()F
    .registers 3

    .line 121
    sget v0, Ldev/xiaomiext/homehz/Global165HzHook;->cachedPeak:F

    .line 122
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_9

    .line 123
    return v0

    .line 125
    :cond_9
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->readPropHz()F

    move-result v0

    .line 126
    cmpg-float v2, v0, v1

    if-gez v2, :cond_17

    .line 127
    const-string v0, "/data/local/tmp/refresh165_detected_rate"

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->readFileHz(Ljava/lang/String;)F

    move-result v0

    .line 129
    :cond_17
    cmpg-float v2, v0, v1

    if-gez v2, :cond_21

    .line 130
    const-string v0, "/data/adb/modules/refresh165_enhancer/detected_refresh_rate"

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->readFileHz(Ljava/lang/String;)F

    move-result v0

    .line 132
    :cond_21
    cmpg-float v1, v0, v1

    if-gez v1, :cond_27

    .line 133
    const/high16 v0, 0x43250000    # 165.0f

    .line 135
    :cond_27
    sput v0, Ldev/xiaomiext/homehz/Global165HzHook;->cachedPeak:F

    .line 136
    return v0
.end method

.method private static peakRate(Landroid/view/Display;)F
    .registers 2

    .line 140
    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->peakFromDisplay(Landroid/view/Display;)F

    move-result p0

    .line 141
    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_d

    .line 142
    sput p0, Ldev/xiaomiext/homehz/Global165HzHook;->cachedPeak:F

    .line 143
    return p0

    .line 145
    :cond_d
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result p0

    return p0
.end method

.method private static peakString()Ljava/lang/String;
    .registers 1

    .line 149
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readFileHz(Ljava/lang/String;)F
    .registers 3

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_20

    .line 91
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->parseHz(Ljava/lang/String;)F

    move-result p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 92
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_20

    .line 91
    return p0

    .line 90
    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 92
    :catchall_20
    move-exception p0

    .line 93
    const/4 p0, 0x0

    return p0
.end method

.method private static readPropHz()F
    .registers 8

    .line 75
    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "persist.sys.smartpower.limit.max.refresh.rate"

    aput-object v4, v2, v6

    aput-object v0, v2, v7

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ldev/xiaomiext/homehz/Global165HzHook;->parseHz(Ljava/lang/String;)F

    move-result v2

    .line 79
    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_35

    .line 80
    return v2

    .line 82
    :cond_35
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "persist.sys.smartpower.limit.normal.max.refresh.rate.support"

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->parseHz(Ljava/lang/String;)F

    move-result v0
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_48

    return v0

    .line 84
    :catchall_48
    move-exception v0

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method private static rewritePutArgs([Ljava/lang/Object;)V
    .registers 5

    .line 508
    if-eqz p0, :cond_6e

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    goto/16 :goto_6e

    .line 511
    :cond_8
    nop

    .line 512
    nop

    .line 513
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_d
    array-length v3, p0

    if-ge v1, v3, :cond_2b

    .line 514
    aget-object v3, p0, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 515
    if-gez v2, :cond_1a

    .line 516
    move v2, v1

    goto :goto_28

    .line 518
    :cond_1a
    nop

    .line 519
    goto :goto_26

    .line 521
    :cond_1c
    if-ltz v2, :cond_28

    aget-object v3, p0, v1

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_28

    .line 522
    nop

    .line 523
    nop

    .line 526
    :goto_26
    move v0, v1

    goto :goto_2b

    .line 513
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 526
    :cond_2b
    :goto_2b
    if-ltz v2, :cond_6d

    if-ltz v0, :cond_6d

    aget-object v1, p0, v2

    invoke-static {v1}, Ldev/xiaomiext/homehz/Global165HzHook;->isRateKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_6d

    .line 529
    :cond_38
    aget-object v1, p0, v0

    invoke-static {v1}, Ldev/xiaomiext/homehz/Global165HzHook;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 530
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_55

    .line 531
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_6c

    .line 532
    :cond_55
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_66

    .line 533
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_6c

    .line 535
    :cond_66
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 538
    :cond_6c
    :goto_6c
    return-void

    .line 527
    :cond_6d
    :goto_6d
    return-void

    .line 509
    :cond_6e
    :goto_6e
    return-void
.end method

.method private static targetFrameDelayMs()J
    .registers 4

    .line 153
    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static tooLow(Ljava/lang/Object;)Z
    .registers 3

    .line 157
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 158
    return v0

    .line 160
    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/xiaomiext/homehz/Global165HzHook;->parseHz(Ljava/lang/String;)F

    move-result p0

    .line 161
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1d

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8

    .line 178
    if-eqz p1, :cond_9a

    const-string v0, "dev.xiaomiext.homehz"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9a

    .line 182
    :cond_e
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookAnimatorFrameDelay()V

    .line 183
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookDisplayRefreshRate()V

    .line 184
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookActivityResume()V

    .line 185
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookWindowAttributes()V

    .line 186
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookRequestedFrameRate()V

    .line 187
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookWindowAttach(Ljava/lang/ClassLoader;)V

    .line 189
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->isAndroid16OrNewer()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 190
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookPreferredRefreshBounds()V

    .line 192
    :cond_2b
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->isAndroid17()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->isSystemServer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 193
    :cond_39
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->hookRefreshSettings()V

    .line 195
    :cond_3c
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->isSystemServer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 196
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->hookMirimRefreshPolicy(Ljava/lang/ClassLoader;)V

    .line 199
    :cond_49
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 201
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->isAndroid17()Z

    move-result v2

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 202
    invoke-static {p1}, Ldev/xiaomiext/homehz/Global165HzHook;->isSystemServer(Ljava/lang/String;)Z

    move-result p1

    .line 203
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->peakRate()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global165HzHook loaded for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " sdk="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " android17="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 204
    return-void

    .line 179
    :cond_9a
    :goto_9a
    return-void
.end method
