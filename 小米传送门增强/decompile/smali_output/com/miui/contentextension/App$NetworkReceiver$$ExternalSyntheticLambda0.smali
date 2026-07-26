.class public final synthetic Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1}, Lcom/miui/contentextension/App$NetworkReceiver;->$r8$lambda$8-EHx4-Sb8OqXThY1rs0ZWZqtTo(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
