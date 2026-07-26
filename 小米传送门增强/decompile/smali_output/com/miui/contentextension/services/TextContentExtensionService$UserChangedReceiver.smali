.class Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextContentExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 754
    const-string p2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 755
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$UserChangedReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-static {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$monDisable(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    .line 756
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/contentextension/App;->destroyAllActivity()V

    .line 757
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1f
    return-void
.end method
