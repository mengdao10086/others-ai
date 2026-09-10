.class Ldev/xiaomiext/homehz/Global165HzHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookDisplayRefreshRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 240
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 241
    instance-of v1, v0, Landroid/view/Display;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/view/Display;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 242
    :goto_a
    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smpeakRate(Landroid/view/Display;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
