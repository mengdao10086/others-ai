.class Ldev/xiaomiext/homehz/Global165HzHook$4;
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

    .line 245
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 248
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 249
    instance-of v1, v0, Landroid/view/Display;

    if-nez v1, :cond_7

    .line 250
    return-void

    .line 252
    :cond_7
    check-cast v0, Landroid/view/Display;

    .line 253
    invoke-static {v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smfindPeakMode(Landroid/view/Display;)Landroid/view/Display$Mode;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_12

    .line 255
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 257
    :cond_12
    return-void
.end method
