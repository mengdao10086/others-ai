.class public Lmiuix/animation/internal/AnimManager;
.super Ljava/lang/Object;
.source "AnimManager.java"

# interfaces
.implements Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# instance fields
.field public mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lmiuix/animation/internal/TargetHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimCount:I

.field final mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTarget:Lmiuix/animation/IAnimTarget;

.field final mTempTransForUpdateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTempTransMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateInfoDiff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTempTransForUpdateMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    return-void
.end method

.method private clearRunningInfo()V
    .registers 5

    .line 73
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 74
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v3, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransForUpdateMap:Ljava/util/Map;

    iget v1, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 77
    :cond_2d
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    return-void
.end method

.method private varargs containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z
    .registers 7

    .line 114
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 115
    invoke-virtual {p1, v3}, Lmiuix/animation/internal/TransitionInfo;->containsPropertyInUpdateList(Lmiuix/animation/property/FloatProperty;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private containPropertyInAnimState(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 123
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static doNotifyUpdate(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;)V"
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Set;)V

    return-void
.end method

.method private pendState(Lmiuix/animation/internal/TransitionInfo;)Z
    .registers 6

    .line 179
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    iget-wide v0, v0, Lmiuix/animation/controller/AnimState;->flags:J

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 180
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)I
    .registers 11

    .line 380
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    if-ne v3, p1, :cond_1b

    goto :goto_c

    .line 384
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    if-nez v5, :cond_2d

    .line 386
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    .line 388
    :cond_2d
    iget-object v5, v3, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 389
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    .line 390
    iget-object v7, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v7}, Lmiuix/animation/internal/TransitionInfo;->containsPropertyInUpdateList(Lmiuix/animation/property/FloatProperty;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 391
    iget-object v7, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v7, v3, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    iget-object v8, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 395
    :cond_5b
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 399
    iget v4, v3, Lmiuix/animation/internal/TransitionInfo;->id:I

    iget v5, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    if-eq v4, v5, :cond_c

    .line 400
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----- notifyEndOrCancel-REPLACE in removeSameAnim, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_85
    const/4 v4, 0x5

    const/4 v5, 0x4

    .line 403
    invoke-virtual {p0, v3, v4, v5}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_c

    .line 405
    :cond_8b
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_ac

    .line 408
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-virtual {v3, v2, v1}, Lmiuix/animation/internal/TransitionInfo;->refreshTasks(Ljava/util/List;Z)V

    .line 409
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 410
    iput-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    goto/16 :goto_c

    .line 412
    :cond_ac
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateInfoDiff:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_c

    :cond_b3
    return v2
.end method


# virtual methods
.method addToTransitionInfoList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const-string v1, "target="

    const-string v2, "list.size="

    if-eqz v0, :cond_37

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 248
    const-string v3, "++++ addToTransitionInfoList before add"

    invoke-static {v3, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_37
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    .line 253
    invoke-virtual {v3}, Lmiuix/animation/internal/TransitionInfo;->hasUpdateInfo()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 254
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 257
    :cond_57
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 258
    const-string v0, "++++ addToTransitionInfoList after add"

    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8a
    return-void
.end method

.method public cancel()V
    .registers 5

    .line 619
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 620
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 621
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    invoke-virtual {p0, v1}, Lmiuix/animation/internal/AnimManager;->cancelPrepareTransition(Lmiuix/animation/internal/TransitionInfo;)V

    goto :goto_f

    .line 623
    :cond_1f
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 624
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_29

    :cond_3b
    return-void
.end method

.method cancelPrepareTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 7

    .line 332
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-boolean v0, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 334
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    .line 336
    :cond_15
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 337
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 338
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v4, v3}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    .line 339
    invoke-virtual {p0, v3}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 340
    iput-object v4, v3, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    const/4 v3, 0x3

    .line 341
    iput-byte v3, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 342
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    .line 343
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    goto :goto_1f

    :cond_3e
    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 345
    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 59
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- AnimManager.clear() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_27
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 63
    invoke-direct {p0}, Lmiuix/animation/internal/AnimManager;->clearRunningInfo()V

    .line 64
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 65
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTempTransForUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method endPrepareTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 10

    .line 349
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)Z

    .line 350
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-boolean v0, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 352
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    .line 354
    :cond_18
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 355
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 356
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v4, v3}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    .line 358
    invoke-virtual {p0, v3}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v4

    .line 359
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v5, v3}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v5

    .line 360
    instance-of v7, v3, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v7, :cond_4e

    .line 361
    iget-object v7, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    check-cast v3, Lmiuix/animation/property/IIntValueProperty;

    double-to-int v5, v5

    invoke-virtual {v7, v3, v5}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_54

    .line 363
    :cond_4e
    iget-object v7, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    double-to-float v5, v5

    invoke-virtual {v7, v3, v5}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 365
    :goto_54
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 366
    iput-object v3, v4, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    const/4 v3, 0x4

    .line 367
    iput-byte v3, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 368
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    .line 369
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    goto :goto_27

    .line 371
    :cond_64
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    .line 372
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 373
    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    return-void
.end method

.method getPrepareTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;
    .registers 8

    .line 598
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 599
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 600
    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 601
    iget-object v3, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_38

    if-eqz v0, :cond_37

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrepareTransInfoByToState info.to == toState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    return-object v2

    .line 606
    :cond_38
    iget-boolean v3, p1, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz v3, :cond_e

    iget-object v3, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v3}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v0, :cond_66

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPrepareTransInfoByToState info.to != toState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    return-object v2

    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method getRunningTransInfoByToState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/internal/TransitionInfo;
    .registers 8

    .line 579
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 580
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 581
    iget-object v3, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_38

    if-eqz v0, :cond_37

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTransInfoByToState info.to == toState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    return-object v2

    .line 586
    :cond_38
    iget-boolean v3, p1, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz v3, :cond_e

    iget-object v3, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v3}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v0, :cond_66

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRunningTransInfoByToState info.to != toState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    return-object v2

    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRunningTransitionCount()I
    .registers 2

    .line 266
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getTotalAnimCount()I
    .registers 2

    .line 271
    iget v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    return v0
.end method

.method public declared-synchronized getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    if-nez v0, :cond_1e

    .line 142
    new-instance v0, Lmiuix/animation/listener/UpdateInfo;

    invoke-direct {v0, p1}, Lmiuix/animation/listener/UpdateInfo;-><init>(Lmiuix/animation/property/FloatProperty;)V

    .line 143
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/listener/UpdateInfo;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    if-eqz p1, :cond_1e

    move-object v0, p1

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_20

    .line 148
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1c

    throw p1
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .registers 4

    .line 128
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    return-wide v0
.end method

.method public hasAnimSetup()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .registers 5

    .line 88
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    return v1

    .line 92
    :cond_18
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 93
    invoke-direct {p0, v2, p1}, Lmiuix/animation/internal/AnimManager;->containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public isRunningAnimStateContainsProperty(Lmiuix/animation/property/FloatProperty;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 104
    :cond_4
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 105
    invoke-direct {p0, v2, p1}, Lmiuix/animation/internal/AnimManager;->containPropertyInAnimState(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_22
    return v0
.end method

.method public notifyRemoveWait()V
    .registers 3

    .line 538
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- notifyRemoveWait target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :cond_27
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 542
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3b

    :cond_36
    const/4 v1, 0x3

    .line 545
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3e

    .line 543
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimManager;->onRemoveWait()V

    :goto_3e
    return-void
.end method

.method notifyReplaceTargetListeners(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 5

    .line 419
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 420
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_26

    .line 423
    :cond_f
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 425
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 421
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->onReplaceListeners(Lmiuix/animation/internal/TransitionInfo;)V

    :goto_29
    return-void
.end method

.method notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    const/4 v1, 0x1

    .line 433
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    const/4 v1, 0x2

    .line 434
    iput-byte v1, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 435
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_50

    if-nez p2, :cond_1a

    move-object v1, v3

    goto :goto_1f

    .line 436
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 437
    :goto_1f
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 438
    invoke-virtual {v5}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/internal/TargetHandler;

    if-eqz v4, :cond_50

    .line 440
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 442
    invoke-virtual {v4, v2, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_50
    if-eqz v0, :cond_76

    .line 447
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_76

    :cond_59
    if-nez p2, :cond_5c

    goto :goto_61

    .line 450
    :cond_5c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    :goto_61
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 453
    invoke-virtual {v0, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_79

    .line 448
    :cond_76
    :goto_76
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimManager;->onStart(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    :goto_79
    return-void
.end method

.method notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V
    .registers 8

    .line 486
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    .line 487
    iget-byte v1, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_8e

    .line 488
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 489
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "------ do notifyTransEndOrCancel after start, msg=%d, op=%d, info=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_29
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;)V

    .line 492
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 493
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 494
    invoke-virtual {v2}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TargetHandler;

    if-eqz v1, :cond_65

    .line 496
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v1, p2, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_65
    if-eqz v0, :cond_83

    .line 502
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_83

    .line 509
    :cond_6e
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTempTransMap:Ljava/util/Map;

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b8

    :cond_83
    :goto_83
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8a

    .line 504
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->onReplaced(Lmiuix/animation/internal/TransitionInfo;)V

    goto :goto_b8

    .line 506
    :cond_8a
    invoke-virtual {p0, p1, p3}, Lmiuix/animation/internal/AnimManager;->onEnd(Lmiuix/animation/internal/TransitionInfo;I)V

    goto :goto_b8

    .line 517
    :cond_8e
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 518
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "------ do notifyTransEndOrCancel before start, msg=%d, op=%d, info=%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_ab
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;)V

    .line 521
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance p3, Lmiuix/animation/internal/AnimManager$1;

    invoke-direct {p3, p0, p1}, Lmiuix/animation/internal/AnimManager$1;-><init>(Lmiuix/animation/internal/AnimManager;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {p2, p3}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :goto_b8
    return-void
.end method

.method notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getHandler()Lmiuix/animation/internal/TargetHandler;

    move-result-object v0

    .line 461
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4b

    if-nez p2, :cond_15

    move-object v1, v4

    goto :goto_1a

    .line 462
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    :goto_1a
    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 464
    invoke-virtual {v6}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/TargetHandler;

    if-eqz v5, :cond_4b

    .line 466
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransForUpdateMap:Ljava/util/Map;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 468
    invoke-virtual {v5, v3, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4b
    if-eqz v0, :cond_71

    .line 473
    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_71

    :cond_54
    if-nez p2, :cond_57

    goto :goto_5c

    .line 476
    :cond_57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    :goto_5c
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTempTransForUpdateMap:Ljava/util/Map;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 479
    invoke-virtual {v0, v3, p1, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_74

    .line 474
    :cond_71
    :goto_71
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->onUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    :goto_74
    return-void
.end method

.method onEnd(Lmiuix/animation/internal/TransitionInfo;I)V
    .registers 15

    .line 703
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 704
    const-string v1, "@"

    const-string v2, "info.key="

    const-string v3, ">>> "

    const-string v4, "onEnd"

    const-string v5, "onCancel"

    const/4 v6, 0x4

    if-eqz v0, :cond_66

    if-ne p2, v6, :cond_15

    move-object v7, v5

    goto :goto_16

    :cond_15
    move-object v7, v4

    .line 706
    :goto_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " info.id="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 707
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.startTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    .line 706
    invoke-static {v7, v8}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    if-eqz v0, :cond_a8

    if-ne p2, v6, :cond_6b

    move-object v4, v5

    .line 713
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " finish notify info.id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 714
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 713
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a8
    if-ne p2, v6, :cond_be

    .line 718
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p2

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_d1

    .line 720
    :cond_be
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p2

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)V

    .line 722
    :goto_d1
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v0, Lmiuix/animation/internal/AnimManager$2;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/internal/AnimManager$2;-><init>(Lmiuix/animation/internal/AnimManager;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    .line 728
    iput-byte v6, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 p2, 0x0

    .line 729
    iput-boolean p2, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    .line 730
    iput-boolean p2, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    return-void
.end method

.method public onRemoveWait()V
    .registers 3

    .line 694
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWaitState.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v1, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, v1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 696
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 695
    const-string v1, ">>> onRemoveWaits"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    :cond_2a
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method onReplaceListeners(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 4

    .line 629
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> onReplaceListeners info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info.key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :cond_29
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    return-void
.end method

.method onReplaced(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 7

    .line 734
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> onReplaced info.id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info.key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 736
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info.startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 735
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    :cond_41
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)V

    .line 741
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v2, Lmiuix/animation/internal/AnimManager$3;

    invoke-direct {v2, p0, p1}, Lmiuix/animation/internal/AnimManager$3;-><init>(Lmiuix/animation/internal/AnimManager;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    .line 747
    iput-byte v0, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 748
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    .line 749
    iput-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    return-void
.end method

.method onStart(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 639
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 640
    iget-boolean v1, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    const/4 v2, 0x0

    const-string v3, ", info.key="

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2d

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ">>> onStart warning!! this transition has notified start: info.id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void

    :cond_2e
    if-eqz v0, :cond_76

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> onStart info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info.startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRunningInfo.contains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v1, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, v1, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 651
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 648
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_76
    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    .line 656
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p2, :cond_8b

    .line 658
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz v0, :cond_8b

    .line 659
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    :cond_8b
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p2, v3}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Set;)V

    if-eqz p3, :cond_a3

    .line 663
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->onUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    :cond_a3
    return-void
.end method

.method onUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 668
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> onUpdate info.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 672
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 670
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    if-nez p2, :cond_81

    .line 677
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_81

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> onUpdate warning!! infoUpdateList is null!!info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_81
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    invoke-static {v0, v1, v2, p2, p1}, Lmiuix/animation/internal/AnimManager;->doNotifyUpdate(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public prepareAnim(Lmiuix/animation/internal/TransitionInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/internal/AnimManager;->prepareAnim(Lmiuix/animation/internal/TransitionInfo;Z)Z

    move-result p1

    return p1
.end method

.method public prepareAnim(Lmiuix/animation/internal/TransitionInfo;Z)Z
    .registers 6

    .line 158
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++ AnimManager.prepareAnim isQueue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    if-nez p2, :cond_4e

    .line 161
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->pendState(Lmiuix/animation/internal/TransitionInfo;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 162
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "++ AnimManager.startAnim, pendState info.id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    return v1

    .line 167
    :cond_4e
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iput-byte v1, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 169
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v2, v0}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v0

    .line 172
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    goto :goto_65

    :cond_84
    const/4 p1, 0x1

    return p1
.end method

.method removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 7

    .line 551
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    const/4 v0, 0x0

    .line 553
    new-array v1, v0, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, v1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 554
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimManager;->hasAnimSetup()Z

    move-result v2

    if-nez v2, :cond_28

    .line 555
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 557
    :cond_28
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    const-string v3, "----- removeRunningInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,id="

    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,key="

    .line 561
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,runningInfo.size="

    .line 562
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,isAnimRunning="

    .line 563
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ,target="

    .line 564
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 p1, 0xa

    .line 566
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_af

    .line 568
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    .line 569
    const-string v4, " |-- after remove resetRunInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 573
    :cond_af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b8
    return-void
.end method

.method public setTarget(Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method public setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Z
    .registers 4

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Z)Z

    move-result p1

    return p1
.end method

.method public setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Z)Z
    .registers 13

    .line 204
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTo start target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nto=\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nconfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_39
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 210
    invoke-virtual {p1, v2}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v2

    .line 211
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p1, v4, v2}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v4

    .line 212
    invoke-virtual {p0, v2}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v6

    if-eqz v0, :cond_7a

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTo setToValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_7a
    iget-object v7, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v4, v7, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 217
    iput-wide v4, v7, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    const/4 v7, 0x0

    .line 218
    iput-object v7, v6, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    .line 220
    instance-of v7, v2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v7, :cond_91

    .line 221
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    move-object v6, v2

    check-cast v6, Lmiuix/animation/property/IIntValueProperty;

    double-to-int v7, v4

    invoke-virtual {v3, v6, v7}, Lmiuix/animation/IAnimTarget;->doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_b1

    .line 223
    :cond_91
    iget-boolean v6, v6, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz v6, :cond_ab

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTo Warning!! the property is not intValueProperty but useInt is true:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_ab
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    double-to-float v6, v4

    invoke-virtual {v3, v2, v6}, Lmiuix/animation/IAnimTarget;->doSetValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_b1
    if-eqz p3, :cond_bb

    .line 229
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    goto :goto_41

    .line 231
    :cond_bb
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v3, v2, v4, v5}, Lmiuix/animation/IAnimTarget;->trackVelocity(Lmiuix/animation/property/FloatProperty;D)V

    goto :goto_41

    .line 234
    :cond_c1
    iget-object p3, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p3, p1, p2}, Lmiuix/animation/IAnimTarget;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    if-eqz v0, :cond_cf

    .line 236
    const-string p1, "setTo done"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cf
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized setVelocity(Lmiuix/animation/property/FloatProperty;F)V
    .registers 5

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    float-to-double v0, p2

    iput-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 134
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method setupTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 12

    .line 277
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string v3, "----- setupTransition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x7

    .line 282
    invoke-static {v3}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_2b
    iget-byte v2, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v3, 0x3

    if-lt v2, v3, :cond_60

    if-eqz v0, :cond_5f

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- setupTransition return because this transition has cancel or end before start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 291
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5f
    return-void

    :cond_60
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_66

    move v5, v4

    goto :goto_67

    :cond_66
    move v5, v1

    :goto_67
    if-ge v2, v4, :cond_d8

    .line 298
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mPrepareInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_d8

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 300
    invoke-virtual {v6}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 301
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mObserverHandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v6}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lmiuix/animation/internal/TargetHandler;

    iget-object v8, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 302
    invoke-virtual {v8}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-direct {v7, v8, v9}, Lmiuix/animation/internal/TargetHandler;-><init>(Landroid/os/Looper;Lmiuix/animation/IAnimTarget;)V

    .line 301
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_d8

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    const-string v6, "----- setupTransition create TargetHandler for Looper "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 306
    invoke-virtual {v6}, Lmiuix/animation/base/AnimConfig;->getObserverLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_d8
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)Z

    move-result v2

    if-nez v2, :cond_102

    const/4 v2, 0x4

    .line 314
    invoke-virtual {p0, p1, v3, v2}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    if-eqz v0, :cond_101

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- setupTransition info.id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has cancel after setup because all properties have handled setTo."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_101
    return-void

    .line 320
    :cond_102
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    .line 322
    iget-byte v1, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    if-ge v1, v4, :cond_11c

    .line 323
    iput-byte v4, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 325
    :cond_11c
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningAnimCount:I

    .line 326
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_132

    if-eqz v5, :cond_132

    .line 327
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->notifyReplaceTargetListeners(Lmiuix/animation/internal/TransitionInfo;)V

    :cond_132
    return-void
.end method
