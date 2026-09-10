.class Ldev/xiaomiext/homehz/Global165HzHook$17;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookRefreshSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 461
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 464
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 465
    return-void

    .line 467
    :cond_5
    nop

    .line 468
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 469
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 470
    check-cast v3, Ljava/lang/String;

    .line 471
    goto :goto_19

    .line 468
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v3, 0x0

    .line 474
    :goto_19
    invoke-static {v3}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smisRateKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 475
    return-void

    .line 477
    :cond_20
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 478
    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smtooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 479
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smpeakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 481
    :cond_39
    return-void
.end method
