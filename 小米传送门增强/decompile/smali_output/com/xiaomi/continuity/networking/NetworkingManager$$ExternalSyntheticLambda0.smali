.class public final synthetic Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/continuity/networking/ServiceExecutor$AsInterface;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/INetworkingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/continuity/networking/INetworkingManager;

    move-result-object p1

    return-object p1
.end method
