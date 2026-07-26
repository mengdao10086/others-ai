.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a()Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    move-result-object v0

    return-object v0
.end method
