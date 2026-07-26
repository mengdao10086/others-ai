.class public final Lcom/xiaomi/taiyi/sdk/core/b;
.super Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub;
.source "SourceFile"


# instance fields
.field public final a:Lcom/xiaomi/taiyi/sdk/core/AIAbility;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[I

.field public final e:Lkotlin/Lazy;

.field public final f:Lcom/xiaomi/taiyi/sdk/core/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/core/AIAbility;)V
    .registers 5

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/b;->a:Lcom/xiaomi/taiyi/sdk/core/AIAbility;

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->getSettings()Lcom/xiaomi/taiyi/sdk/core/AISettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/core/AISettings;->getMemoryPool()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/b;->d:[I

    .line 5
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/b$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/core/b$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/taiyi/sdk/core/b;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/b;->e:Lkotlin/Lazy;

    .line 6
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/a;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/core/a;-><init>(Lcom/xiaomi/taiyi/sdk/core/b;)V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/b;->f:Lcom/xiaomi/taiyi/sdk/core/a;

    return-void
.end method

.method public static final a(Lcom/xiaomi/taiyi/sdk/core/b;)Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->d:[I

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->a:Lcom/xiaomi/taiyi/sdk/core/AIAbility;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInfo()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->a:Lcom/xiaomi/taiyi/sdk/core/AIAbility;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->createRequest()Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getMemory()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/b;->f:Lcom/xiaomi/taiyi/sdk/core/a;

    return-object v0
.end method
