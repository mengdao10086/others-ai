.class public final Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;-><init>(Ljava/lang/String;Landroid/content/ComponentName;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    # getter for: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$getTAG$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->destroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .line 1
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$setIBinder$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;Landroid/os/IBinder;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    # getter for: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$getTAG$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_31

    .line 4
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    const/4 p2, 0x3

    # invokes: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V
    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$setState(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    const/16 v0, 0x2775

    const-string v1, "service null"

    # invokes: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll(IILjava/lang/String;)V
    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$dispatchAll(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;)V

    return-void

    .line 8
    :cond_31
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    # getter for: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->binderDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$getBinderDeathRecipient$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    const/4 p2, 0x1

    # invokes: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->setState(I)V
    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$setState(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;I)V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->dispatchAll$default(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;IILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    # getter for: Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->access$getTAG$p(Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector$serviceConnection$1;->this$0:Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->destroy()V

    return-void
.end method
