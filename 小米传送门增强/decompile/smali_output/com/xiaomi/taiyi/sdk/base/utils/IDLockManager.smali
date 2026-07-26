.class public final Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/taiyi/sdk/base/utils/IDLock<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addAndGet(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/taiyi/sdk/base/utils/IDLock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    if-eqz v0, :cond_12

    monitor-exit p0

    return-object v0

    .line 5
    :cond_12
    :try_start_12
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/IDLock;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/IDLockManager;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method
