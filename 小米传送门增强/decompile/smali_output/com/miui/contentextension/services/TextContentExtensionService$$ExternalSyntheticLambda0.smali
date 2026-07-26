.class public final synthetic Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/contentextension/services/TextContentExtensionService;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/contentextension/services/TextContentExtensionService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda0;->f$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/services/TextContentExtensionService$$ExternalSyntheticLambda0;->f$0:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
