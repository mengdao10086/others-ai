.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;
.super Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setShareCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mShareCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$900(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MirrorShareCallback;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/synergy/MirrorShareCallback;->onStateChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
