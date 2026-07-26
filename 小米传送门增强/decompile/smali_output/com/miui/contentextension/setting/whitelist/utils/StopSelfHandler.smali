.class public Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;
.super Landroid/os/Handler;
.source "StopSelfHandler.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/Utilities;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler stopSelfProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.StopSelfHandler"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_36

    if-eqz v0, :cond_36

    const-string p1, "com.miui.contentextension"

    .line 29
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_36
    return-void
.end method
