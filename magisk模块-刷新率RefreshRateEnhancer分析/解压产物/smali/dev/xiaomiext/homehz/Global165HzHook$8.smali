.class Ldev/xiaomiext/homehz/Global165HzHook$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookWindowAttributes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 298
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 299
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_e

    .line 300
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smapplyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    .line 302
    :cond_e
    return-void
.end method
