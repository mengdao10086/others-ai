.class Lcom/xiaomi/continuity/networking/ServiceExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/continuity/networking/ServiceExecutor;->binderService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/continuity/networking/ServiceExecutor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$1;->this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 0
    iget-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$1;->this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    # getter for: Lcom/xiaomi/continuity/networking/ServiceExecutor;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->access$200(Lcom/xiaomi/continuity/networking/ServiceExecutor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$1;->this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    invoke-virtual {p1, p2}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->setService(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    iget-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$1;->this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    # getter for: Lcom/xiaomi/continuity/networking/ServiceExecutor;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->access$200(Lcom/xiaomi/continuity/networking/ServiceExecutor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$1;->this$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    # invokes: Lcom/xiaomi/continuity/networking/ServiceExecutor;->binderDied()V
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->access$300(Lcom/xiaomi/continuity/networking/ServiceExecutor;)V

    return-void
.end method
