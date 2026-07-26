.class public final synthetic Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    invoke-virtual {v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->unbindJobThread()V

    return-void
.end method
