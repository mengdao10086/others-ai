.class public Lcom/miui/contentextension/text/RecommendationMonitor;
.super Ljava/lang/Object;
.source "RecommendationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;,
        Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;
    }
.end annotation


# static fields
.field private static mDetailReadyListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSegmentReadyListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    return-void
.end method

.method public static addDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V
    .registers 4

    .line 59
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static addSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V
    .registers 4

    .line 30
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static onDetailReady(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 48
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    sget-object p0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;

    if-eqz v2, :cond_e

    .line 52
    invoke-interface {v2, v1}, Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;->onDetailReady(Ljava/util/ArrayList;)V

    goto :goto_e

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 55
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public static onSegmentReady(Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 19
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    sget-object p0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;

    if-eqz v2, :cond_e

    .line 23
    invoke-interface {v2, v1, p1}, Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;->onSegmentReady(Ljava/util/ArrayList;Z)V

    goto :goto_e

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 26
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public static removeDetailReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;)V
    .registers 5

    .line 65
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_9

    .line 68
    sget-object p0, Lcom/miui/contentextension/text/RecommendationMonitor;->mDetailReadyListener:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 72
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public static removeSegmentReadyListener(Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;)V
    .registers 5

    .line 36
    sget-object v0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_9

    .line 39
    sget-object p0, Lcom/miui/contentextension/text/RecommendationMonitor;->mSegmentReadyListener:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 43
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method
