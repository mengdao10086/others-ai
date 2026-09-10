.class Ldev/xiaomiext/homehz/Global165HzHook$20;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookWindowAttach(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 567
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 570
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_45

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_45

    .line 573
    :cond_b
    nop

    .line 574
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_20

    .line 575
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_21

    .line 574
    :cond_20
    const/4 v0, 0x0

    .line 577
    :goto_21
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_33

    .line 578
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smapplyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    .line 580
    :cond_33
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_44

    .line 581
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smapplyViewFrameRate(Landroid/view/View;)V

    .line 583
    :cond_44
    return-void

    .line 571
    :cond_45
    :goto_45
    return-void
.end method
