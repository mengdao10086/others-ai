.class Ldev/xiaomiext/homehz/Global165HzHook$13;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Global165HzHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/xiaomiext/homehz/Global165HzHook;->hookMirimRefreshPolicy(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 361
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smliftArgIfHz([Ljava/lang/Object;I)V

    .line 362
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ldev/xiaomiext/homehz/Global165HzHook;->-$$Nest$smliftArgIfHz([Ljava/lang/Object;I)V

    .line 363
    return-void
.end method
