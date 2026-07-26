.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;

    iput p3, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;

    iget v2, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/taiyi/sdk/core/j;->b(ILcom/xiaomi/taiyi/sdk/common/ConnectCallback;ILjava/lang/String;)V

    return-void
.end method
