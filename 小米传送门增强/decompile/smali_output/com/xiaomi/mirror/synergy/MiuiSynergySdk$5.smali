.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;
.super Lcom/xiaomi/mirror/ISameAccountApCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
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
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Lcom/xiaomi/mirror/ISameAccountApCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onApConnectedStatusUpdate(ILandroid/os/Bundle;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    move-result-object v0

    if-nez p2, :cond_12

    const/4 p2, 0x0

    goto :goto_18

    :cond_12
    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {v1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;-><init>(Landroid/os/Bundle;)V

    move-object p2, v1

    :goto_18
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;->onApConnectedStatusUpdate(ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    :cond_1b
    return-void
.end method

.method public onApInfoUpdate(Landroid/os/Bundle;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    # getter for: Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    move-result-object v0

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_18

    :cond_12
    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {v1, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_18
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;->onApInfoUpdate(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    :cond_1b
    return-void
.end method
