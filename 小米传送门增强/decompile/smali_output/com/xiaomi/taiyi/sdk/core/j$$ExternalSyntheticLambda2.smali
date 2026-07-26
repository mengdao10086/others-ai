.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/core/j;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/core/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/taiyi/sdk/core/j;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/j$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/core/j;->a(Lcom/xiaomi/taiyi/sdk/core/j;)V

    return-void
.end method
