.class public final Lcom/xiaomi/taiyi/sdk/core/a;
.super Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/xiaomi/taiyi/sdk/core/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/core/b;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final free(Ljava/util/List;)V
    .registers 6

    const-string v0, "shmIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/b;->e:Lkotlin/Lazy;

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->free(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 6
    iget-object v1, v1, Lcom/xiaomi/taiyi/sdk/core/b;->b:Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final get()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/b;->e:Lkotlin/Lazy;

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    return-object v0
.end method

.method public final sync(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/b;->e:Lkotlin/Lazy;

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->all()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->add(Ljava/util/List;)Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/a;->a:Lcom/xiaomi/taiyi/sdk/core/b;

    .line 6
    iget-object v1, v0, Lcom/xiaomi/taiyi/sdk/core/b;->b:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/b;->e:Lkotlin/Lazy;

    .line 8
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
