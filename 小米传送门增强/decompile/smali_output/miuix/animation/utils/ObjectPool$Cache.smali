.class Lmiuix/animation/utils/ObjectPool$Cache;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field final mCacheRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mPendingShrink:Z

.field final pool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final shrinkTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/Map;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    .line 34
    new-instance v0, Lmiuix/animation/utils/ObjectPool$Cache$1;

    invoke-direct {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache$1;-><init>(Lmiuix/animation/utils/ObjectPool$Cache;)V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/utils/ObjectPool$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method varargs acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 45
    iget-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_16
    if-eqz p1, :cond_1c

    .line 47
    # invokes: Lmiuix/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lmiuix/animation/utils/ObjectPool;->access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method releaseObject(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6

    .line 53
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    return-void

    .line 56
    :cond_13
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3b

    .line 58
    iget-boolean v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    if-eqz v0, :cond_26

    .line 59
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iput-boolean p2, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    .line 62
    :cond_26
    iget-object p2, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p2

    const/16 v0, 0xa

    if-le p2, v0, :cond_5c

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    .line 64
    iget-object p2, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5c

    .line 67
    :cond_3b
    iput-boolean p2, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectPool.releaseObject handler is null! looper: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miuix_anim"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method shrink()V
    .registers 3

    .line 74
    :goto_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_21

    .line 75
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_21

    .line 79
    :cond_13
    iget-object v1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_21
    :goto_21
    return-void
.end method
