.class public Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public api()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bind(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMemory(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasSession()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isAlive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isInternal()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isLLM()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public post(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V
    .registers 3

    .line 0
    return-void
.end method

.method public query(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public unbind(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public version()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
