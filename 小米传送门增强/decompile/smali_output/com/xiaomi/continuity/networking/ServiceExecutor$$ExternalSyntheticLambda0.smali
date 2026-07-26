.class public final synthetic Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/networking/ServiceExecutor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    invoke-static {v0}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->$r8$lambda$vamKCjQPmGPk9Lxp3gi-dD6ju1A(Lcom/xiaomi/continuity/networking/ServiceExecutor;)V

    return-void
.end method
