.class public Lcom/miui/contentextension/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sIsDarkMode:Z

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsToast()Landroid/widget/Toast;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckReCreateToast()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->checkReCreateToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 21
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v0

    sput-boolean v0, Lcom/miui/contentextension/utils/ToastUtils;->sIsDarkMode:Z

    .line 22
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method public static cancel()V
    .registers 2

    .line 73
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/ToastUtils$5;

    invoke-direct {v1}, Lcom/miui/contentextension/utils/ToastUtils$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkReCreateToast()V
    .registers 3

    .line 26
    sget-boolean v0, Lcom/miui/contentextension/utils/ToastUtils;->sIsDarkMode:Z

    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 27
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v0

    sput-boolean v0, Lcom/miui/contentextension/utils/ToastUtils;->sIsDarkMode:Z

    .line 28
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    :cond_1b
    return-void
.end method

.method public static showLongToast(Landroid/content/Context;I)V
    .registers 4

    .line 64
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/ToastUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/utils/ToastUtils$4;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;I)V
    .registers 4

    .line 55
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/ToastUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/contentextension/utils/ToastUtils$3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 3

    .line 44
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object p0

    new-instance v0, Lcom/miui/contentextension/utils/ToastUtils$2;

    invoke-direct {v0, p1}, Lcom/miui/contentextension/utils/ToastUtils$2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
