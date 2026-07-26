.class public final Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Lkotlin/Lazy;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->Companion:Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b:Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;

    .line 3
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->e:Lkotlin/Lazy;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    new-instance p1, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;
    .registers 5

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.aiservice"

    const-string v3, "com.xiaomi.aiservice.core.AICoreService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v2, "com.xiaomi.aiservice.AI_CORE"

    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;-><init>(Ljava/lang/String;Landroid/content/ComponentName;J)V

    return-object v0
.end method

.method public static final a(Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;->Companion:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    iget-object p0, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;->localLoader(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Taiyi-Sdk-AIManager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 301
    :cond_c
    const-string v2, "serviceAbility"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object v2

    .line 725
    const-string v3, "service"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->isLocal()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/core/g;

    if-eqz v2, :cond_3e

    .line 1115
    iget-object v2, v2, Lcom/xiaomi/taiyi/sdk/core/g;->c:Lcom/xiaomi/taiyi/sdk/core/j;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/core/j;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 1116
    :cond_37
    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3e

    return-object v0

    .line 1117
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAliveCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is dead, remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIManager"

    invoke-static {v2, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final a(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;
    .registers 7

    .line 223
    invoke-static {p1, p2}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->getAIInfo(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/common/AIInfo;

    move-result-object p1

    const-string v0, "AIManager"

    const-string v1, "acquireLoader "

    if-nez p1, :cond_2e

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " info is null!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p1, Lkotlin/Pair;

    const/16 p2, 0x28a1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 228
    :cond_2e
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/core/g;

    if-nez v2, :cond_70

    .line 230
    new-instance v2, Lcom/xiaomi/taiyi/sdk/core/g;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/taiyi/sdk/core/g;-><init>(Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " create new loader "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/common/AIInfo;->getService()Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_70
    new-instance p1, Lkotlin/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;
    .registers 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AIManager"

    if-nez v1, :cond_23

    .line 61
    const-string p1, "loadSync api is empty!"

    invoke-static {v3, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 64
    :cond_23
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b:Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;

    invoke-virtual {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;->addAndGet(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;->lock()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;

    move-result-object v4

    const-string v5, "loadSync "

    if-eqz v4, :cond_5c

    .line 69
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;->unlock()V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from cache "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 73
    :cond_5c
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;->isLocalAffinity()Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 74
    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->e:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    if-nez v4, :cond_8d

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " localLoader is null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object p1

    goto/16 :goto_163

    .line 78
    :cond_8d
    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->getAIDetail(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object v4

    if-nez v4, :cond_b2

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " detail is null!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object p1

    goto/16 :goto_163

    .line 82
    :cond_b2
    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isSupport()Z

    move-result v6

    if-nez v6, :cond_db

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not support!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x2968

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 85
    :cond_db
    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_106

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not available!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 88
    :cond_106
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/taiyi/sdk/base/utils/AIUtils;->detectTSB(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12a

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " tsb detect failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_163

    .line 91
    :cond_12a
    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->getAllowInternal()Z

    move-result v2

    if-nez v2, :cond_15a

    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.xiaomi.aiservice"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15a

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not allowInternal!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_163

    .line 95
    :cond_15a
    invoke-virtual {p0, p1, v4}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_163

    .line 99
    :cond_15f
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object p1

    .line 101
    :goto_163
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;

    if-eqz v2, :cond_170

    .line 103
    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_170
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;->unlock()V

    return-object p1
.end method

.method public final a(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;)Lkotlin/Pair;
    .registers 12

    .line 271
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->e:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    const-string v2, "AIManager"

    const-string v3, "loadSyncByLocal "

    const/4 v4, 0x0

    if-nez v1, :cond_36

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " localLoader is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance p1, Lkotlin/Pair;

    const/16 p2, 0x283f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 276
    :cond_36
    sget-object v5, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    invoke-virtual {v5, p1}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->startLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    .line 278
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->getResult()Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    move-result-object v6

    if-eqz v6, :cond_90

    const-string v7, "resource_unwrapped"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_90

    .line 280
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->c(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    .line 281
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/core/AIQuery;->getAIDetail(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;

    move-result-object p2

    if-nez p2, :cond_61

    new-instance p1, Lkotlin/Pair;

    const/16 p2, 0x28a1

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 284
    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 288
    :cond_61
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;->getResult()Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    move-result-object v6

    if-eqz v6, :cond_90

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_90

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resource not unwrapped"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance p1, Lkotlin/Pair;

    const/16 p2, 0x2b0a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 293
    :cond_90
    invoke-interface {v1, p1, p2}, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;->loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p2

    .line 294
    invoke-virtual {v5, p1}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;->endLoad(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V

    .line 295
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getAbility()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    move-result-object p1

    if-nez p1, :cond_ab

    .line 297
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 299
    :cond_ab
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;

    sget-object v2, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;->Companion:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;

    iget-object v3, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo$Companion;->localService(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;-><init>(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/core/g;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x0

    if-nez v2, :cond_45

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSyncByRemote "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " acquireLoader failed! code "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIManager"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 7
    :cond_45
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, p1}, Lcom/xiaomi/taiyi/sdk/core/g;->a(Landroid/content/Context;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getAbility()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 10
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 12
    :cond_5f
    new-instance v1, Lkotlin/Pair;

    new-instance v3, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;

    .line 13
    iget-object v2, v2, Lcom/xiaomi/taiyi/sdk/core/g;->a:Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;

    .line 14
    invoke-direct {v3, v0, v2}, Lcom/xiaomi/taiyi/sdk/core/ability/ServiceAbility;-><init>(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;Lcom/xiaomi/taiyi/sdk/base/data/ServiceInfo;)V

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final c(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;

    .line 4
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/taiyi/sdk/common/ServiceConnector;->connect(Landroid/content/Context;Landroid/os/Bundle;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    if-nez v1, :cond_2a

    return-void

    .line 6
    :cond_2a
    invoke-static {v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService;->prepare(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIManager"

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;->getCode()I

    return-void
.end method
