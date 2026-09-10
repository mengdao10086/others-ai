.class Ldev/xiaomiext/homehz/Global165HzHook$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookPreferredRefreshBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 331
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 332
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_c

    .line 333
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smapplyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    .line 335
    :cond_c
    return-void
.end method
