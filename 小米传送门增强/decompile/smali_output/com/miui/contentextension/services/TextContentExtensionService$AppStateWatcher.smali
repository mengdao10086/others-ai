.class Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;
.super Landroid/app/IMiuiProcessObserver;
.source "TextContentExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppStateWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method private constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 765
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;Lcom/miui/contentextension/services/TextContentExtensionService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;-><init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5

    .line 769
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsTaskFinished()Z

    move-result p1

    if-nez p1, :cond_16

    .line 770
    const-string p1, "Taplus.TextContentExtensionService"

    const-string p2, "quitByDefault from app watcher"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$AppStateWatcher;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const-string v0, "other"

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    :cond_16
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 4

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4

    .line 0
    return-void
.end method
