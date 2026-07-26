.class Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextContentExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeWatcherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 733
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 737
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 738
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 739
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 740
    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 741
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsTaskFinished()Z

    move-result p1

    if-nez p1, :cond_30

    .line 742
    const-string p1, "Taplus.TextContentExtensionService"

    const-string p2, "quitByDefault from press home"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$HomeWatcherReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "home"

    invoke-virtual {p1, v1, p2, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    :cond_30
    return-void
.end method
