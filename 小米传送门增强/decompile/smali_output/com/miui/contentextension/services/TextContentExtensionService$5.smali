.class Lcom/miui/contentextension/services/TextContentExtensionService$5;
.super Ljava/lang/Object;
.source "TextContentExtensionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

.field final synthetic val$isOnlyStart:Z

.field final synthetic val$quitWay:Ljava/lang/String;

.field final synthetic val$useAnimation:Z


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;ZLjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1041
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iput-boolean p2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$isOnlyStart:Z

    iput-object p3, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$quitWay:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$useAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1044
    iget-boolean v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$isOnlyStart:Z

    const-string v1, "Taplus.TextContentExtensionService"

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsMainFloatViewShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1045
    const-string v0, "quitSplashFloatView by quitByDefault 1"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$quitWay:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$useAnimation:Z

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$mquitSplashFloatView(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;Z)V

    return-void

    .line 1050
    :cond_1b
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$sfgetsIsMainFloatViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1051
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$quitWay:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$useAnimation:Z

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$mquitMainFloatView(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;Z)V

    return-void

    .line 1054
    :cond_2b
    const-string v0, "quitSplashFloatView by quitByDefault 2"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$quitWay:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/contentextension/services/TextContentExtensionService$5;->val$useAnimation:Z

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$mquitSplashFloatView(Lcom/miui/contentextension/services/TextContentExtensionService;Ljava/lang/String;Z)V

    return-void
.end method
