.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool$CREATOR;

.field private static final TAG:Ljava/lang/String; = "ShareMemoryPool"


# instance fields
.field private clientId:Ljava/lang/String;

.field private memoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            ">;"
        }
    .end annotation
.end field

.field private pool:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool$CREATOR;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->pool:[I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->pool:[I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->pool:[I

    return-void
.end method

.method private final create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Lkotlin/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getByteLength()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShareMemoryPool"

    const-string v3, "create "

    if-nez v0, :cond_2e

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size is 0!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_2e
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->init()V

    .line 9
    :cond_37
    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getSize()I

    move-result v7

    if-lt v7, v0, :cond_3d

    invoke-virtual {v6}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->isVacant()Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_58

    :cond_57
    move-object v5, v1

    :goto_58
    check-cast v5, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-nez v5, :cond_c7

    .line 12
    :try_start_5c
    invoke-direct {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->createAndAdd(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " create new sm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v5, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_9b} :catch_9c

    return-object v5

    :catch_9c
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Exception: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28aa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 20
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " use exist sm: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final createAndAdd(I)Lkotlin/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "create "

    const-string v1, "ShareMemoryPool"

    const/4 v2, 0x0

    .line 1
    :try_start_5
    new-instance v3, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-direct {v3, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;-><init>(I)V

    .line 2
    iget-object v4, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_33} :catch_38
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_33} :catch_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    return-object v5

    :catch_34
    move-exception v3

    goto :goto_3a

    :catch_36
    move-exception v3

    goto :goto_64

    :catch_38
    move-exception v3

    goto :goto_8e

    .line 16
    :goto_3a
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Exception: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28ac

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b7

    .line 18
    :goto_64
    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ErrnoException: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b7

    .line 20
    :goto_8e
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " IllegalArgumentException: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b7
    return-object p1
.end method

.method private final declared-synchronized init()V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->pool:[I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareMemoryPool"

    invoke-static {v1, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->pool:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_56

    aget v3, v0, v2

    if-lez v3, :cond_53

    int-to-long v4, v3

    const-wide/32 v6, 0x100000

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_4d

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MB too large!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShareMemoryPool"

    invoke-static {v4, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :catchall_4b
    move-exception v0

    goto :goto_58

    :cond_4d
    const/high16 v4, 0x100000

    mul-int/2addr v3, v4

    .line 8
    invoke-direct {p0, v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->createAndAdd(I)Lkotlin/Pair;
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_4b

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_56
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_4b

    throw v0
.end method

.method public static synthetic read$default(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;ZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "memoryList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    .line 76
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_40

    :catchall_3d
    move-exception p1

    goto :goto_88

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-nez v3, :cond_67

    .line 78
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareMemoryPool"

    invoke-static {v2, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 82
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " skip by "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareMemoryPool"

    invoke-static {v2, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_3d

    goto :goto_f

    :cond_86
    monitor-exit p0

    return-object v0

    :goto_88
    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_3d

    throw p1
.end method

.method public final all()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    .line 40
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    goto :goto_1b

    :cond_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_17

    throw v0
.end method

.method public final declared-synchronized closeAndClear()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    .line 34
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->close()V

    goto :goto_7

    :catchall_17
    move-exception v0

    goto :goto_20

    .line 35
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_17

    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_17

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized free(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getShareMemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2b

    :catchall_28
    move-exception p1

    goto :goto_72

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-nez v1, :cond_4e

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "free "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shareMem not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareMemoryPool"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_28

    monitor-exit p0

    const/16 p1, 0x28a7

    return p1

    .line 6
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->free()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "free "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareMemoryPool"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_4e .. :try_end_6f} :catchall_28

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_28

    throw p1
.end method

.method public final declared-synchronized free(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "memoryIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v4}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_3c

    :catchall_39
    move-exception p1

    goto :goto_83

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-nez v3, :cond_5c

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not existed!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareMemoryPool"

    invoke-static {v2, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 73
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "free "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ShareMemoryPool"

    invoke-static {v4, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->free()V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_39

    goto :goto_f

    :cond_81
    monitor-exit p0

    return-object v0

    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_39

    throw p1
.end method

.method public final getClientId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getMemoryIdList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 78
    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    .line 79
    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v0

    goto :goto_2a

    :cond_28
    monitor-exit p0

    return-object v1

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_26

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final map(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getShareMemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v2, :cond_30

    .line 3
    new-instance p1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_30
    invoke-virtual {p1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->map(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 6
    :cond_35
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getShareMemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_58

    :cond_57
    move-object v2, v1

    :goto_58
    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    const-string v0, "ShareMemoryPool"

    const-string v3, "map "

    if-nez v2, :cond_83

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shareMem not found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 11
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->map(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized read(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;Z)I
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v2}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getShareMemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2b

    :catchall_28
    move-exception p1

    goto :goto_72

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    if-nez v1, :cond_4e

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shareMem not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShareMemoryPool"

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_28

    monitor-exit p0

    const/16 p1, 0x28a7

    return p1

    .line 6
    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShareMemoryPool"

    invoke-static {v2, v0}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->read(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;Z)I

    move-result p1
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_28

    monitor-exit p0

    return p1

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_28

    throw p1
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$CREATOR;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public final declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unmap()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    .line 53
    invoke-virtual {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->unmap()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final unmap(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)V
    .registers 7

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v3}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->getShareMemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_29

    :cond_28
    move-object v1, v2

    :goto_29
    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    const-string v0, "ShareMemoryPool"

    const-string v3, "unmap "

    if-nez v1, :cond_54

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shareMem not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lkotlin/Pair;

    const/16 v0, 0x28a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->unmap(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method

.method public final declared-synchronized write(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)I
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4a

    .line 1
    :try_start_6
    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->create(Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    const-string v2, "ShareMemoryPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " sm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_40} :catch_4c
    .catchall {:try_start_6 .. :try_end_40} :catchall_4a

    if-nez v1, :cond_44

    monitor-exit p0

    return v0

    .line 4
    :cond_44
    :try_start_44
    invoke-virtual {p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIFrame;->write(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;)I

    move-result p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_4c
    .catchall {:try_start_44 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return p1

    :catchall_4a
    move-exception p1

    goto :goto_73

    :catch_4c
    move-exception v0

    .line 6
    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Exception: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareMemoryPool"

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_4a

    monitor-exit p0

    const/16 p1, 0x28aa

    return p1

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_4a

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->clientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;->memoryList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
