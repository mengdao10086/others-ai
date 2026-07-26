.class public final synthetic Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/networking/NetworkingManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda1;->f$0:Lcom/xiaomi/continuity/networking/NetworkingManager;

    invoke-static {v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->$r8$lambda$aLVYX1zv_oxY_QzneGtQ35s5_BM(Lcom/xiaomi/continuity/networking/NetworkingManager;)V

    return-void
.end method
