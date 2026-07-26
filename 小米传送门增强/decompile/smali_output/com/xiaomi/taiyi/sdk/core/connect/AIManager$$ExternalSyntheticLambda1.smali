.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a(Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    move-result-object v0

    return-object v0
.end method
