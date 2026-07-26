.class public final synthetic Lcom/xiaomi/continuity/ContinuityServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/continuity/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/ContinuityServiceManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/ContinuityServiceManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/xiaomi/continuity/IContinuityServiceManager;

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->$r8$lambda$DVClajHfYDsDmCy-jKCinzQQtEk(Ljava/lang/String;Lcom/xiaomi/continuity/IContinuityServiceManager;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
