.class public Lorg/greenrobot/eventbus/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field eventInheritance:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field ignoreGeneratedIndex:Z

.field logNoSubscriberMessages:Z

.field logSubscriberExceptions:Z

.field logger:Lorg/greenrobot/eventbus/Logger;

.field mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field sendNoSubscriberEvent:Z

.field sendSubscriberExceptionEvent:Z

.field strictMethodVerification:Z

.field subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field

.field throwSubscriberException:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    .line 37
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    .line 38
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    .line 39
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    .line 41
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    .line 44
    sget-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static getAndroidMainLooperOrNull()Ljava/lang/Object;
    .registers 1

    .line 179
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getLogger()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logger:Lorg/greenrobot/eventbus/Logger;

    if-eqz v0, :cond_5

    return-object v0

    .line 161
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$Default;->get()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    return-object v0
.end method

.method getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_5

    return-object v0

    .line 168
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidLogger;->isAndroidLogAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 169
    invoke-static {}, Lorg/greenrobot/eventbus/EventBusBuilder;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1a

    .line 171
    :cond_13
    new-instance v1, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;-><init>(Landroid/os/Looper;)V

    :cond_1a
    :goto_1a
    return-object v1
.end method
