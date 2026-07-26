.class Lcom/miui/contentextension/services/TextContentExtensionService$3;
.super Ljava/lang/Object;
.source "TextContentExtensionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;->onStartPick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

.field final synthetic val$updateInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$3;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iput-object p2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$3;->val$updateInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$3;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$3;->val$updateInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/IntentUtils;->startPrivacyUpdateActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
