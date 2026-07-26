.class public final synthetic Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

.field public final synthetic f$1:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    iput-object p2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$1:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$1:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->$r8$lambda$zeqiNdmIymHzcPcoVjFQv9V8vrQ(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V

    return-void
.end method
