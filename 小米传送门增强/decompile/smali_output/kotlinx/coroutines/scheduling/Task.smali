.class public abstract Lkotlinx/coroutines/scheduling/Task;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public submissionTime:J

.field public taskContext:Lkotlinx/coroutines/scheduling/TaskContext;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 84
    sget-object v2, Lkotlinx/coroutines/scheduling/NonBlockingContext;->INSTANCE:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/Task;-><init>(JLkotlinx/coroutines/scheduling/TaskContext;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/TaskContext;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 82
    iput-object p3, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    return-void
.end method
