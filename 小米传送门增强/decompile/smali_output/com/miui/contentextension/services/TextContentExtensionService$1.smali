.class Lcom/miui/contentextension/services/TextContentExtensionService$1;
.super Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.source "TextContentExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$1;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentReceived sIsTaskFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsTaskFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is flip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiuix/os/Build;->IS_FLIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isTinyScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-static {v1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.TextContentExtensionService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfputmCatcherResult(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V

    .line 155
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsTaskFinished()Z

    move-result v0

    if-nez v0, :cond_86

    .line 156
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "observe_control_event"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 157
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x101

    .line 158
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6d

    .line 159
    const-string p1, "quitByDefault from back"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$1;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const-string v0, "back"

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    return-void

    :cond_6d
    const/16 v0, 0x102

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 164
    const-string p1, "quitByDefault from move"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$1;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const-string v0, "move"

    invoke-virtual {p1, v0, v2, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    goto :goto_8b

    .line 169
    :cond_86
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$1;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-static {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$monStartPick(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    :cond_8b
    :goto_8b
    return-void
.end method
