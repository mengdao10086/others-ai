.class public Lorg/greenrobot/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

.field static volatile defaultInstance:Lorg/greenrobot/eventbus/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

.field private final backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final indexCount:I

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final logger:Lorg/greenrobot/eventbus/Logger;

.field private final mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

.field private final mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/greenrobot/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 109
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    return-void
.end method

.method constructor <init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/greenrobot/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus$1;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 113
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getLogger()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 117
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_32

    .line 118
    invoke-interface {v0, p0}, Lorg/greenrobot/eventbus/MainThreadSupport;->createPoster(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;

    move-result-object v0

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    .line 119
    new-instance v0, Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/BackgroundPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    .line 120
    new-instance v0, Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/AsyncPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    .line 121
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iput v0, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    .line 122
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    iget-object v1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    iget-boolean v2, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->strictMethodVerification:Z

    iget-boolean v3, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->ignoreGeneratedIndex:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    .line 124
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    .line 125
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    .line 126
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    .line 127
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    .line 128
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    .line 129
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 130
    iget-object p1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 485
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 486
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 487
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method private checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 4

    if-eqz p2, :cond_9

    .line 206
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    :cond_9
    return-void
.end method

.method public static getDefault()Lorg/greenrobot/eventbus/EventBus;
    .registers 2

    .line 82
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_19

    .line 84
    const-class v1, Lorg/greenrobot/eventbus/EventBus;

    monitor-enter v1

    .line 85
    :try_start_7
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_15

    .line 87
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 89
    :cond_15
    :goto_15
    monitor-exit v1

    goto :goto_19

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    :goto_19
    return-object v0
.end method

.method private handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    .line 519
    instance-of v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eqz v0, :cond_52

    .line 520
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_92

    .line 522
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    check-cast p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 525
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initial event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " caused exception in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v1, p3, p2}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_92

    .line 529
    :cond_52
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    if-nez v0, :cond_93

    .line 532
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_84

    .line 533
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 534
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    :cond_84
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    if-eqz v0, :cond_92

    .line 537
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_92
    :goto_92
    return-void

    .line 530
    :cond_93
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, p3}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private isMainThread()Z
    .registers 2

    .line 217
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/greenrobot/eventbus/MainThreadSupport;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 467
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v0

    .line 468
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_29

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    :goto_11
    if-eqz v2, :cond_24

    .line 473
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 475
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    :catchall_22
    move-exception p0

    goto :goto_2b

    .line 477
    :cond_24
    sget-object v2, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_29
    monitor-exit v0

    return-object v1

    .line 480
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_22

    throw p0
.end method

.method private postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 382
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    if-eqz v1, :cond_22

    .line 383
    invoke-static {v0}, Lorg/greenrobot/eventbus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_26

    .line 386
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 387
    invoke-direct {p0, p1, p2, v5}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 390
    :cond_22
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v4

    :cond_26
    if-nez v4, :cond_58

    .line 393
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    if-eqz p2, :cond_44

    .line 394
    iget-object p2, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subscribers registered for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 396
    :cond_44
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    if-eqz p2, :cond_58

    const-class p2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    if-eq v0, p2, :cond_58

    const-class p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eq v0, p2, :cond_58

    .line 398
    new-instance p2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    invoke-direct {p2, p0, p1}, Lorg/greenrobot/eventbus/NoSubscriberEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 405
    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 407
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_43

    const/4 v0, 0x0

    if-eqz p3, :cond_42

    .line 408
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 409
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/Subscription;

    .line 410
    iput-object p1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 411
    iput-object v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    const/4 v2, 0x0

    .line 414
    :try_start_28
    iget-boolean v3, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v1, p1, v3}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 415
    iget-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_38

    .line 417
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 418
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 419
    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    if-eqz v1, :cond_17

    goto :goto_40

    :catchall_38
    move-exception p1

    .line 417
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 418
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 419
    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 420
    throw p1

    :cond_40
    :goto_40
    const/4 p1, 0x1

    return p1

    :cond_42
    return v0

    :catchall_43
    move-exception p1

    .line 407
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method private postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V
    .registers 6

    .line 431
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$2;->$SwitchMap$org$greenrobot$eventbus$ThreadMode:[I

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3c

    const/4 p3, 0x5

    if-ne v0, p3, :cond_21

    .line 458
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/AsyncPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 461
    :cond_21
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown thread mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object p1, p1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3c
    if-eqz p3, :cond_44

    .line 452
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/BackgroundPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 454
    :cond_44
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 443
    :cond_48
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    if-eqz p3, :cond_50

    .line 444
    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 447
    :cond_50
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    :cond_54
    if-eqz p3, :cond_5a

    .line 437
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 439
    :cond_5a
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_63

    .line 433
    :cond_60
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    :goto_63
    return-void
.end method

.method private subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .registers 10

    .line 153
    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 154
    new-instance v1, Lorg/greenrobot/eventbus/Subscription;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 155
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1c

    .line 157
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 158
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 160
    :cond_1c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 166
    :goto_22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_27
    if-gt v4, v3, :cond_40

    if-eq v4, v3, :cond_3d

    .line 168
    iget v5, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/eventbus/Subscription;

    iget-object v6, v6, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget v6, v6, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    if-le v5, v6, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 169
    :cond_3d
    :goto_3d
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 174
    :cond_40
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_54

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_54
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-boolean p1, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->sticky:Z

    if-eqz p1, :cond_92

    .line 182
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    if-eqz p1, :cond_89

    .line 187
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 191
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 192
    invoke-direct {p0, v1, p2}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_69

    .line 196
    :cond_89
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-direct {p0, v1, p1}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    :cond_92
    return-void

    .line 161
    :cond_93
    new-instance p2, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_28

    .line 228
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_28

    .line 230
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/Subscription;

    .line 231
    iget-object v4, v3, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v4, p1, :cond_25

    .line 232
    iput-boolean v1, v3, Lorg/greenrobot/eventbus/Subscription;->active:Z

    .line 233
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    return-void
.end method


# virtual methods
.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 555
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLogger()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    .line 562
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    return-object v0
.end method

.method invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V
    .registers 4

    .line 500
    iget-object v0, p1, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 501
    iget-object v1, p1, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 502
    invoke-static {p1}, Lorg/greenrobot/eventbus/PendingPost;->releasePendingPost(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 503
    iget-boolean p1, v1, Lorg/greenrobot/eventbus/Subscription;->active:Z

    if-eqz p1, :cond_e

    .line 504
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 6

    .line 510
    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v0, v0, Lorg/greenrobot/eventbus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_21

    :catch_e
    move-exception p1

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_1a

    .line 514
    :goto_12
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 512
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    .line 221
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .registers 5

    .line 256
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 257
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 258
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    if-nez p1, :cond_41

    .line 261
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    move-result p1

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 263
    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    if-nez p1, :cond_39

    :goto_1e
    const/4 p1, 0x0

    .line 267
    :try_start_1f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 268
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2d

    goto :goto_1e

    :catchall_2d
    move-exception v1

    goto :goto_34

    .line 271
    :cond_2f
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 272
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    goto :goto_41

    .line 271
    :goto_34
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 272
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 273
    throw v1

    .line 264
    :cond_39
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v0, "Internal error. Abort state was not reset"

    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    :goto_41
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .registers 4

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 146
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    goto :goto_f

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 148
    :cond_21
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_1f

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_27

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 246
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_f

    :catchall_1f
    move-exception p1

    goto :goto_45

    .line 248
    :cond_21
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 250
    :cond_27
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_1f

    .line 252
    :goto_43
    monitor-exit p0

    return-void

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1f

    throw p1
.end method
