.class Ldev/xiaomiext/homehz/Global165HzHook$9;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookRequestedFrameRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 310
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_3b

    .line 313
    :cond_a
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 314
    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_18

    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_18

    .line 315
    return-void

    .line 317
    :cond_18
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 320
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-lez v2, :cond_2e

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smpeakRate()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3a

    .line 321
    :cond_2e
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smpeakRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v1

    .line 323
    :cond_3a
    return-void

    .line 311
    :cond_3b
    :goto_3b
    return-void
.end method
