.class Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextContentExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardWatcherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 799
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 804
    const-string v0, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 805
    const-string p1, "miui.intent.extra.input_method_visible_height"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_18

    move p1, p2

    goto :goto_19

    :cond_18
    move p1, v0

    .line 806
    :goto_19
    invoke-static {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfputsKeyboardIsShowing(Z)V

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardWatcherReceiver: sKeyboardIsShowing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsKeyboardIsShowing()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsTaskFinished()Z

    move-result p1

    if-nez p1, :cond_4e

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsKeyboardIsShowing()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 809
    const-string p1, "quitByDefault from keyboard watcher"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$KeyboardWatcherReceiver;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const-string v1, "other"

    invoke-virtual {p1, v1, v0, p2}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    :cond_4e
    return-void
.end method
