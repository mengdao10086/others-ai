.class Lcom/miui/contentextension/services/TextContentExtensionService$2;
.super Ljava/lang/Object;
.source "TextContentExtensionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/TextContentExtensionService;->initSettings()V
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

    .line 296
    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$2;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$2;->this$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    new-instance v1, Ljava/io/File;

    const-string v2, "data/system/testing"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->-$$Nest$fputmIsTesting(Lcom/miui/contentextension/services/TextContentExtensionService;Z)V

    return-void
.end method
