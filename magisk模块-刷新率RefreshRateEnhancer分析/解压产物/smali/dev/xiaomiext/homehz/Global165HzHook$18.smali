.class Ldev/xiaomiext/homehz/Global165HzHook$18;
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

    .line 483
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 486
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 487
    return-void

    .line 489
    :cond_5
    nop

    .line 490
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 491
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 492
    check-cast v3, Ljava/lang/String;

    .line 493
    goto :goto_19

    .line 490
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v3, 0x0

    .line 496
    :goto_19
    invoke-static {v3}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smisRateKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 497
    return-void

    .line 499
    :cond_20
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 500
    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smtooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 501
    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smpeakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 503
    :cond_39
    return-void
.end method
