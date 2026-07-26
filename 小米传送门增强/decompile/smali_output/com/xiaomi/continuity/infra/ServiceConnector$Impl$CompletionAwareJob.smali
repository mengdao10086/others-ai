.class Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;
.super Lcom/xiaomi/continuity/infra/AndroidFuture;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/infra/ServiceConnector$Job;
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompletionAwareJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/continuity/infra/AndroidFuture<",
        "TR;>;",
        "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
        "TII;TR;>;",
        "Ljava/util/function/BiConsumer<",
        "TR;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public mAsync:Z

.field public mDelegate:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/continuity/infra/ServiceConnector$Job<",
            "TII;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    invoke-direct {p0}, Lcom/xiaomi/continuity/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    invoke-virtual {p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->getRequestTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_17

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/continuity/infra/AndroidFuture;

    :cond_17
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :goto_9
    return-void
.end method

.method public cancel(Z)Z
    .registers 4

    .line 0
    if-eqz p1, :cond_9

    const-string v0, "ServiceConnector.Impl"

    const-string v1, "mayInterruptIfRunning not supported - ignoring"

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    # getter for: Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->access$000(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-super {p0, p1}, Lcom/xiaomi/continuity/infra/AndroidFuture;->cancel(Z)Z

    move-result p1

    if-nez p1, :cond_1e

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method

.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    # getter for: Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;
    invoke-static {p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->access$100(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;

    # invokes: Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V
    invoke-static {p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;->access$200(Lcom/xiaomi/continuity/infra/ServiceConnector$Impl;)V

    :cond_14
    return-void
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)TR;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/continuity/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/xiaomi/continuity/infra/ServiceConnector$Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " wrapped into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/util/concurrent/CompletableFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
