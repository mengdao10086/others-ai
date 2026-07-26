.class public Lcom/miui/contentextension/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 15
    sget-object v0, Lcom/miui/contentextension/utils/ThreadPool;->sExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
