.class Ldev/xiaomiext/homehz/Global165HzHook$7;
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

    .line 283
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 286
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_1a

    .line 289
    :cond_a
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 290
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_19

    .line 291
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smapplyLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;)V

    .line 293
    :cond_19
    return-void

    .line 287
    :cond_1a
    :goto_1a
    return-void
.end method
