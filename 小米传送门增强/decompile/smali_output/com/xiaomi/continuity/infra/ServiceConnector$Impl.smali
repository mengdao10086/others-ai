.class public Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Lcom/xiaomi/continuity/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private mBinding:Z

.field private final mBindingFlags:I

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceConnectionFutureCache:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile mServiceLifecycleCallbacks:Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final mTimeoutDisconnect:Ljava/lang/Runnable;

.field private mUnbinding:Z

.field private final mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$zeqiNdmIymHzcPcoVjFQv9V8vrQ(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->lambda$enqueue$1(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILjava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iput-object p0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBindingFlags:I

    iput-object p4, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaomi/continuity/infra/HandlerExecutor;

    invoke-direct {p2, p1}, Lcom/xiaomi/continuity/infra/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method private bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z
    .registers 14

    .line 0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :try_start_4
    const-class v1, Landroid/content/Context;

    const-string v2, "bindServiceAsUser"

    const-class v3, Landroid/content/Intent;

    const-class v4, Landroid/content/ServiceConnection;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    const-class v7, Landroid/os/UserHandle;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4, p5, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2c} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2c} :catch_2d

    return p1

    :catch_2d
    move-exception p1

    goto :goto_32

    :catch_2f
    move-exception p1

    goto :goto_32

    :catch_31
    move-exception p1

    :goto_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private cancelTimeout()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private dispatchOnBinderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    :cond_7
    return-void
.end method

.method private dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_a

    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_d

    :cond_a
    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    :cond_d
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    return-void
.end method

.method private enqueue(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->enqueue(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v1, "Failed to post a job to handler. Likely "

    invoke-static {v1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_26
    return-void
.end method

.method private enqueue(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method private isBound()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic lambda$enqueue$1(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V

    return-void
.end method

.method private maybeScheduleUnbindTimeout()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    :cond_13
    return-void
.end method

.method private onTimeout()V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method private processQueue()V
    .registers 5

    .line 0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    if-eqz v0, :cond_36

    const-class v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    :try_start_12
    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-nez v2, :cond_17

    return-void

    :cond_17
    invoke-interface {v0, v2}, Lcom/xiaomi/continuity/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v2, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v2, v1}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_0

    :catchall_2c
    move-exception v1

    goto :goto_32

    :cond_2e
    invoke-virtual {v1, v2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_2c

    goto :goto_0

    :goto_32
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_36
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method private scheduleUnbindTimeout()V
    .registers 5

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method private stateToString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_7

    const-string v0, "Binding..."

    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_e

    const-string v0, "Unbinding..."

    return-object v0

    :cond_e
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Bound"

    return-object v0

    :cond_17
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/content/ServiceConnection;)Z
    .registers 9

    .line 0
    iget v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v5, v0, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1

    :cond_15
    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public binderDied()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->unbind()V

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    return-void
.end method

.method public cancelPendingJobs()V
    .registers 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    if-eqz v0, :cond_34

    const-class v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_15
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_0

    :catchall_19
    move-exception v1

    .line 1
    const-string v2, "cancelPendingJobs exception :"

    invoke-static {v2}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceConnector.Impl"

    invoke-static {v2, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/continuity/infra/AndroidFuture;->triggerTimeout()V

    goto :goto_0

    :cond_34
    return-void
.end method

.method public completeExceptionally(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    const-class v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_d
    if-eqz v0, :cond_10

    goto :goto_26

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnector.Impl"

    invoke-static {v0, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method

.method public enqueueJobThread(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_71

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :cond_40
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_71

    :cond_4a
    iget-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_71

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v1, "Failed to bind to service "

    invoke-static {v1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public getRequestTimeoutMs()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->binderDied()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-virtual {p0, p2}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    :try_start_24
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_42

    :catch_28
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->processQueue()V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    iget-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_e
    return-void
.end method

.method public onServiceUnbound()V
    .registers 1

    .line 0
    return-void
.end method

.method public bridge synthetic postForResult(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Lcom/xiaomi/continuity/infra/AndroidFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->postForResult(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public postForResult(Lcom/xiaomi/continuity/infra/ServiceConnector$Job;)Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    iput-object p1, v0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->enqueue(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public run()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->onTimeout()V

    return-void
.end method

.method public setServiceLifecycleCallbacks(Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending job(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unfinished async job(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .registers 3

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindJobThread()V
    .registers 8

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    if-nez v3, :cond_12

    iget-boolean v4, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_31

    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unbind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ServiceConnector.Impl"

    invoke-static {v5, v4}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    const/4 v4, 0x0

    if-eqz v3, :cond_49

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    :try_start_37
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3e
    .catch Ljava/util/NoSuchElementException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v0

    const-string v5, "ServiceConnector.Impl"

    const-string v6, "death recipient already released"

    invoke-static {v5, v6, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    iput-object v4, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_49
    iput-boolean v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v2, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnbinding:Z

    monitor-enter p0

    :try_start_4e
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_5a

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    iput-object v4, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;

    goto :goto_5a

    :catchall_58
    move-exception v0

    goto :goto_64

    :cond_5a
    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_58

    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    if-eqz v3, :cond_63

    invoke-virtual {p0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->onServiceUnbound()V

    :cond_63
    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_58

    throw v0
.end method
