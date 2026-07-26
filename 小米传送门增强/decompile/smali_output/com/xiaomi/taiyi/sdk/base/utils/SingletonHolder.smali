.class public Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private creator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;"
        }
    .end annotation
.end field

.field private volatile instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;)V"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;->creator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;->instance:Ljava/lang/Object;

    if-nez v0, :cond_1b

    monitor-enter p0

    .line 2
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;->instance:Ljava/lang/Object;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;->creator:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;->instance:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 4
    :cond_17
    :goto_17
    monitor-exit p0

    return-object v0

    .line 5
    :goto_19
    monitor-exit p0

    throw p1

    :cond_1b
    return-object v0
.end method
