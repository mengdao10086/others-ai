.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/core/b;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/core/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/b$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/taiyi/sdk/core/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/taiyi/sdk/core/b;

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/core/b;->a(Lcom/xiaomi/taiyi/sdk/core/b;)Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    move-result-object v0

    return-object v0
.end method
