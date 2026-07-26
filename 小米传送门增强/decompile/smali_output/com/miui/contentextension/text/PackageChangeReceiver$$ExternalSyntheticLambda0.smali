.class public final synthetic Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/contentextension/text/PackageChangeReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/text/PackageChangeReceiver;->$r8$lambda$HMItuOSHya2YWFoQrQDz1cMFEv8(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
