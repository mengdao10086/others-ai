.class Lcom/miui/contentextension/services/TextContentExtensionService$4;
.super Ljava/lang/Object;
.source "TextContentExtensionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;->startClipboardTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

.field final synthetic val$clipData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iput-object p2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->val$clipData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->val$clipData:Ljava/lang/String;

    invoke-static {v0, v0, v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$misCommerceString(Lcom/miui/contentextension/services/TextContentExtensionService;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 516
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    const/4 v1, 0x7

    .line 517
    invoke-static {v1}, Lcom/miui/contentextension/data/http/HostConfig;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->val$clipData:Ljava/lang/String;

    .line 516
    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->getCommerceRecommendWithAsyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 519
    :cond_17
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$4;->val$clipData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->tryToGetNerResult(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method
