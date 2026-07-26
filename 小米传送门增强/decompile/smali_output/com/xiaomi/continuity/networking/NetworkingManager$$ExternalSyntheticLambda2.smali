.class public final synthetic Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;

.field public final synthetic f$1:Lcom/xiaomi/continuity/networking/BusinessServiceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;

    iput-object p2, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;->f$1:Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda2;->f$1:Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    check-cast p1, Lcom/xiaomi/continuity/networking/INetworkingManager;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/continuity/networking/NetworkingManager;->$r8$lambda$DeH2PsEgewbhrjvIWL_M4GeSfgs(Lcom/xiaomi/continuity/networking/NetworkingManager;Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
