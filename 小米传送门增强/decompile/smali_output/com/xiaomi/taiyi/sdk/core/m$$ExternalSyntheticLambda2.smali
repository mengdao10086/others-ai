.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/core/m;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/core/m;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/taiyi/sdk/core/m;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/m$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/taiyi/sdk/core/m;

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/core/m;->a(Lcom/xiaomi/taiyi/sdk/core/m;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
