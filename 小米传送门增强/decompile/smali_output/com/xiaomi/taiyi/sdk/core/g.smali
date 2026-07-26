.class public final Lcom/xiaomi/taiyi/sdk/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/xiaomi/taiyi/sdk/core/j;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V
    .registers 5

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/g;->a:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteAbilityLoader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/g;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/core/j;-><init>(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/g;->c:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/g;->c:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/j;->b()Z

    move-result v0

    const/16 v1, 0x2775

    if-nez v0, :cond_23

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->startBind(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    .line 3
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/g;->c:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-virtual {v2, p1}, Lcom/xiaomi/taiyi/sdk/core/j;->a(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->endBind(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    goto :goto_36

    .line 7
    :cond_23
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/g;->c:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 8
    iget-object p1, p1, Lcom/xiaomi/taiyi/sdk/core/j;->f:Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    .line 9
    new-instance v0, Lkotlin/Pair;

    if-nez p1, :cond_2d

    move v2, v1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 10
    :goto_36
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez v0, :cond_52

    .line 20
    sget-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->setCode(I)V

    return-object p2

    .line 25
    :cond_52
    :try_start_52
    sget-object p1, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {p1, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->startLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    .line 26
    invoke-interface {v0, p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;->loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5f

    .line 31
    invoke-virtual {p1, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->endLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    return-object v0

    :catchall_5f
    move-exception p1

    .line 32
    :try_start_60
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load bindSync exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;

    invoke-virtual {p1, p2, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse$CREATOR;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;I)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_86

    .line 35
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->endLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    return-object p1

    :catchall_86
    move-exception p1

    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {v0, p2}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->endLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/g;->b:Ljava/lang/String;

    return-object v0
.end method
