.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/core/j;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/core/j;IILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/core/j;

    iput p2, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/core/j;

    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/taiyi/sdk/core/j;->a(Lcom/xiaomi/taiyi/sdk/core/j;IILjava/lang/String;)V

    return-void
.end method
