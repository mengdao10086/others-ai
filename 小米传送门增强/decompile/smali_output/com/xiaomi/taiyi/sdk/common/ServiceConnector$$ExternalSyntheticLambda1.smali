.class public final synthetic Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->$r8$lambda$6Uex4HjbW1lsUO44fK8PV5JxysY(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V

    return-void
.end method
