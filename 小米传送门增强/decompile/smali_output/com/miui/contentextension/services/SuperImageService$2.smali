.class Lcom/miui/contentextension/services/SuperImageService$2;
.super Ljava/lang/Object;
.source "SuperImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/SuperImageService;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/SuperImageService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/SuperImageService;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$2;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    iput-object p2, p0, Lcom/miui/contentextension/services/SuperImageService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 82
    const-string v0, "Taplus.SuperImageService"

    const-string v1, "startService: start super image service"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v1, "com.miui.mediafeature"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.mediafeature.superimage.SuperImageService"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/miui/contentextension/services/SuperImageService$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/contentextension/services/SuperImageService$2;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v2}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmConnection(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
