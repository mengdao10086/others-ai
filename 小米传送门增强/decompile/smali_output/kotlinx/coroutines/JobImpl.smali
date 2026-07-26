.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/CompletableJob;


# instance fields
.field private final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .registers 3

    const/4 v0, 0x1

    .line 1315
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 1316
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    .line 1328
    invoke-direct {p0}, Lkotlinx/coroutines/JobImpl;->handlesException()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return-void
.end method

.method private final handlesException()Z
    .registers 5

    .line 1335
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {v0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    .line 1337
    :goto_15
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v0, 0x1

    return v0

    .line 1338
    :cond_1d
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v3, :cond_28

    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    if-nez v0, :cond_2c

    return v1

    :cond_2c
    invoke-virtual {v0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    goto :goto_15
.end method


# virtual methods
.method public getHandlesException$kotlinx_coroutines_core()Z
    .registers 2

    .line 1328
    iget-boolean v0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return v0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
