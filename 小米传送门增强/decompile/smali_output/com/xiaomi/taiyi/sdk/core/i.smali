.class public final Lcom/xiaomi/taiyi/sdk/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/taiyi/sdk/core/j;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/core/j;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/j;->a()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 p1, 0x0

    .line 1
    :try_start_1
    invoke-static {p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    goto :goto_24

    :catchall_6
    move-exception p2

    .line 3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 4
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected cast error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    .line 8
    :goto_24
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 9
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->b:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-nez p2, :cond_4d

    .line 12
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 13
    iput v0, p1, Lcom/xiaomi/taiyi/sdk/core/j;->e:I

    .line 14
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    const/16 p2, 0x2775

    const-string v1, "service cast error"

    .line 15
    invoke-virtual {p1, v0, p2, v1}, Lcom/xiaomi/taiyi/sdk/core/j;->a(IILjava/lang/String;)V

    goto :goto_ba

    .line 16
    :cond_4d
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 17
    iget-object v2, v1, Lcom/xiaomi/taiyi/sdk/core/j;->c:Landroid/content/Context;

    if-nez v2, :cond_5f

    .line 18
    iput v0, v1, Lcom/xiaomi/taiyi/sdk/core/j;->e:I

    .line 19
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    const/16 p2, 0x277c

    const-string v1, "app is null"

    .line 20
    invoke-virtual {p1, v0, p2, v1}, Lcom/xiaomi/taiyi/sdk/core/j;->a(IILjava/lang/String;)V

    goto :goto_ba

    .line 21
    :cond_5f
    :try_start_5f
    sget-object v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    const/4 v3, 0x2

    invoke-static {v1, v2, p1, v3, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;->createServiceRequest$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;->authorize(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_6f

    goto :goto_8e

    :catchall_6f
    move-exception p1

    .line 23
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 24
    iget-object v1, v1, Lcom/xiaomi/taiyi/sdk/core/j;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorize error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x277e

    :goto_8e
    if-eqz p1, :cond_9c

    .line 29
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 30
    iput v0, p2, Lcom/xiaomi/taiyi/sdk/core/j;->e:I

    .line 31
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    const-string v1, "authorize failed"

    .line 32
    invoke-virtual {p2, v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/core/j;->a(IILjava/lang/String;)V

    goto :goto_ba

    .line 33
    :cond_9c
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 34
    iput-object p2, p1, Lcom/xiaomi/taiyi/sdk/core/j;->f:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    .line 35
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_ae

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 36
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->j:Landroid/os/IBinder$DeathRecipient;

    .line 37
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 38
    :cond_ae
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    const/4 v0, 0x1

    .line 39
    iput v0, p1, Lcom/xiaomi/taiyi/sdk/core/j;->e:I

    .line 40
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 41
    const-string v1, ""

    invoke-virtual {p1, v0, p2, v1}, Lcom/xiaomi/taiyi/sdk/core/j;->a(IILjava/lang/String;)V

    :goto_ba
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/i;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/j;->a()V

    return-void
.end method
