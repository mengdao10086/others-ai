.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

.field public final synthetic f$1:Lcom/xiaomi/taiyi/sdk/core/m;

.field public final synthetic f$2:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

.field public final synthetic f$3:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

.field public final synthetic f$4:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/core/m;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/taiyi/sdk/core/m;

    iput-object p3, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$2:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$3:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    iput-object p5, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$4:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/taiyi/sdk/core/m;

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$2:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$3:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda0;->f$4:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/taiyi/sdk/core/m;->a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/core/m;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    return-void
.end method
